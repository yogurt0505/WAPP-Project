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
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                StringBuilder html = new StringBuilder();
                StringBuilder html2 = new StringBuilder();
                StringBuilder html3 = new StringBuilder();

                string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM [Student]"))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                int StudentNumber = dt.Rows.Count;

                                html.Append("<h1> " + StudentNumber + "</h1> ");

                                ViewDashboard1.Controls.Add(new Literal { Text = html.ToString() });
                                con.Close();

                                foreach (DataRow row in dt.Rows)
                                {
                                    string FirstName = row["FirstName"].ToString();
                                    string LastName = row["LastName"].ToString();
                                    string UserID = row["UserID"].ToString();

                                    html3.Append("<td>" + FirstName + "</td>");
                                    html3.Append("<td>" + LastName + "</td>");
                                    con.Close();

                                    using (SqlCommand cmd3 = new SqlCommand("SELECT UserEmail FROM [User] WHERE UserID=@UserID AND UserRole=@UserRole"))
                                    {

                                        cmd3.Connection = con;

                                        sda.SelectCommand = cmd3;
                                        cmd3.Parameters.AddWithValue("@UserID", UserID);
                                        cmd3.Parameters.AddWithValue("@UserRole", "Student");
                                        using (DataTable dt3 = new DataTable())
                                        {
                                            sda.Fill(dt3);

                                            foreach (DataRow row3 in dt3.Rows)
                                            {
                                                string Email = row3["UserEmail"].ToString();


                                                html3.Append("<td>" + Email + "</td>");
                                                html3.Append("</tr></tbody>");
                                                con.Close();

                                            }
                                            ViewDashboard3.Controls.Add(new Literal { Text = html3.ToString() });
                                        }

                                    }
                                    
                                    
                                }
                                

                            }
                        }
                    }
                }
                string constr2 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                using (SqlConnection con2 = new SqlConnection(constr2))
                {
                    using (SqlCommand cmd2 = new SqlCommand("SELECT * FROM [Course]"))
                    {
                        using (SqlDataAdapter sda2 = new SqlDataAdapter())
                        {

                            cmd2.Connection = con2;
                            sda2.SelectCommand = cmd2;
                            using (DataTable dt2 = new DataTable())
                            {
                                sda2.Fill(dt2);
                                int CourseNumber = dt2.Rows.Count;

                                html2.Append("<h1> " + CourseNumber + "</h1> ");
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
