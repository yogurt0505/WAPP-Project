using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP_Project
{
    public partial class StudentDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                string searchkey = Request.QueryString["SearchKey"];
                DataTable dt = this.GetData(searchkey);
                StringBuilder html = new StringBuilder();

                string ImgHolder = "";

                foreach (DataRow row in dt.Rows)
                {
                    string CourseImg = row["CourseImg"].ToString();
                    string CourseName = row["CourseName"].ToString();
                    string CourseCategory = row["CourseCategory"].ToString();
                    string CourseURL = row["CourseURL"].ToString();
                    string CourseDesc = row["CourseDesc"].ToString();
                    string CourseID = row["CourseID"].ToString();

                    if (CourseImg == "")
                    {
                        ImgHolder = "noimg.jpg";
                    }
                    else
                    {
                        ImgHolder = CourseImg;
                    }

                    html.Append("<div class=\"box\">");

                    html.Append("<img src=\"upload/" + ImgHolder + "\" width=\"100px\" style=\"float:right\">");
                    html.Append("<h3>" + CourseName + "</h3>");
                    html.Append("Phone Number:<br>" + CourseDesc + "<br><br>");
                    html.Append("Email:<br>" + CourseCategory + "<br><br>");
                    html.Append("Home Address:<br>" + CourseURL + "<br><br>");

                    html.Append("<a href=\"" + CourseURL + "\">Learn</a> ");
                    html.Append("<a href=\"Quiz.aspx?Id=" + CourseID + "\">Attempt Quiz</a>");

                    html.Append("</div>");
                }

                ViewCourse.Controls.Add(new Literal { Text = html.ToString() });
            }
        }


        private DataTable GetData(string searchkey)
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd1 = new SqlCommand("SELECT * FROM Course WHERE CourseName LIKE '%" + searchkey + "%'"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd1.Connection = con;
                        sda.SelectCommand = cmd1;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            string searchkey = this.searchkey.Text;
            Response.Redirect("AdminDashboard.aspx?searchkey=" + searchkey);
        }
    }
}