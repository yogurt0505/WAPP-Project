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
            if (!IsPostBack)
            {
                string UserName = (Session["UserName"]).ToString();
                int UserID = Convert.ToInt16(Session["UserID"]);

                //Get session info
                StringBuilder html = new StringBuilder();
                StringBuilder html2 = new StringBuilder();
                StringBuilder html3 = new StringBuilder();

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
                                int CourseNumber = dt.Rows.Count;

                                html.Append("<h1> " + CourseNumber + "</h1> ");

                                ViewDashboard1.Controls.Add(new Literal { Text = html.ToString() });


                                foreach (DataRow row in dt.Rows)
                                {

                                    string CourseName = row["CourseName"].ToString();
                                    string CourseCategory = row["CourseCategory"].ToString();
                                    string CourseID = row["CourseID"].ToString();

                                    html3.Append("<td>" + CourseName + "</td>");
                                    html3.Append("<td>" + CourseCategory+ "</td>");
                                    html3.Append("<td><a href = \"Quiz.aspx?Id=" + CourseID + "\" class= \"btn edit\"> Attempt Quiz </a></td>");
                                    html3.Append("</tr>");

                                    

                                }

                                ViewDashboard3.Controls.Add(new Literal { Text = html3.ToString() });
                                con.Close();

                            }


                            }
                        }
                    }
                
                string constr2 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                using (SqlConnection con2 = new SqlConnection(constr2))
                {
                    using (SqlCommand cmd2 = new SqlCommand("SELECT * FROM [Score] WHERE UserID=" + UserID))
                    {
                        using (SqlDataAdapter sda2 = new SqlDataAdapter())
                        {

                            cmd2.Connection = con2;
                            sda2.SelectCommand = cmd2;
                            using (DataTable dt2 = new DataTable())
                            {
                                sda2.Fill(dt2);
                                int AttemptedQuiz = dt2.Rows.Count;

                                html2.Append("<h1> " + AttemptedQuiz + "</h1> ");
                                ViewDashboard2.Controls.Add(new Literal { Text = html2.ToString() });

                                con2.Close();

                            }
                        }

                    }
                }


            
        }
    }
}
}