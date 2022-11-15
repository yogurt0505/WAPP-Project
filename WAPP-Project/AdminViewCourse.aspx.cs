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
    public partial class AdminViewCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                string searchkey = Request.QueryString["SearchKey"];
                DataTable dt = this.GetData(searchkey);
                StringBuilder html = new StringBuilder();

             
                foreach (DataRow row in dt.Rows)
                {
                    string CourseName = row["CourseName"].ToString();
                    string CourseID = row["CourseID"].ToString();


                    html.Append("<td>" + CourseName + "</td>");
                    html.Append("<td><a href = \"EditCourse.aspx?Id=" + CourseID + "\" class= \"btn edit\"> Edit </a></td>");
                    html.Append("<td><a onClick=\"return confirm('Delete this record?')\" href = \"DeleteCourse.aspx?Id=" + CourseID + "\" class= \"btn delete\"> Delete </a></td>");
                    html.Append("</tr>");
                   
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
            Response.Redirect("AdminViewCourse.aspx?searchkey=" + searchkey);
        }
    }
}