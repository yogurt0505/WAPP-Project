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
    public partial class StudentViewCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                StringBuilder html = new StringBuilder();

                string ImgHolder = "";
                string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM [Course]"))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                
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
                                    
                                    html.Append("<div class=\"course\">");
                                    html.Append("<div class=\"middle\"><div class=\"left\" style=\"text-align: center;\">");
                                    html.Append("<img src=\"upload/" + ImgHolder + "\" width=\"100px\" height=\"350px\">");
                                    html.Append("<br><h1>" + CourseName +"</h1>");
                                    html.Append("<h3>" + CourseCategory + "</h3>");
                                    html.Append("<p>" + CourseDesc + "</p>");

                                    html.Append("<br><a href=\"" + CourseURL + "\" class=\"btn learn\">Learn</a> ");
                                    html.Append("<a href=\"Quiz.aspx?Id=" + CourseID + "\" class=\"btn learn\">Attempt Quiz</a>");
                                    html.Append("</div></div></div>");
                                }

                                ViewCourse.Controls.Add(new Literal { Text = html.ToString() });
                                con.Close();

                            }


                        }
                    }
                }

            }
        }

      
    }
}