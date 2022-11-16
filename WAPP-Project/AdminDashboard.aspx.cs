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
                                html.Append("<div class=\"student\">");
                                html.Append("< span class=\"material - symbols - outlined\">person</span>");
                                html.Append(" <div class=\"middle\"> < div class=\"left\">");
                                html.Append("< h3>Total Student Register</h3>< h1 > " + StudentNumber + "</ h1 > ");
                                html.Append(" </div></ div >< small class=\"text-muted\">Target Register Student  : 50</small> </div>");

                                using (SqlCommand cmd2 = new SqlCommand("SELECT * FROM [Course]"))
                                {

                                    cmd2.Connection = con;

                                    sda.SelectCommand = cmd2;
                                    using (DataTable dt2 = new DataTable())
                                    {
                                        sda.Fill(dt2);
                                        int CourseNumber = dt2.Rows.Count;

                                        html.Append("<div class=\"insights\"> <div class=\"courses\">");
                                        html.Append("< span class=\"material - symbols - outlined\">book</span>");
                                        html.Append(" <div class=\"middle\"> < div class=\"left\">");
                                        html.Append("< h3>Total Course Created</h3>< h1 > " + CourseNumber + "</ h1 > ");
                                        html.Append(" </div></ div >< small class=\"text-muted\">Target Course Created  : 50</small> </div> </div>");

                                        con.Close();

                                    }

                                }

                                foreach (DataRow row in dt.Rows)
                                {
                                    string FirstName = row["FirstName"].ToString();
                                    string LastName = row["LastName"].ToString();
                                    string UserID = row["UserID"].ToString();


                                    using (SqlCommand cmd3 = new SqlCommand("SELECT * FROM [User] WHERE UserID=@UserID"))
                                    {

                                        cmd3.Connection = con;

                                        sda.SelectCommand = cmd3;
                                        cmd3.Parameters.AddWithValue("@UserID", UserID);
                                        using (DataTable dt3 = new DataTable())
                                        {
                                            sda.Fill(dt3);

                                            html.Append("<div class=\"recent - register\">");
                                            html.Append("<h1>Recent Register Student</h1>< table >< thead ><tr> ");
                                            html.Append(" <th> First Name </th> ");
                                            html.Append(" <th> Last Name </th> ");
                                            html.Append(" <th> Email </th> ");
                                            html.Append(" <th> Phone Number </th></tr></thead> ");
                                            html.Append("<tbody><tr>");

                                            foreach (DataRow row3 in dt3.Rows)
                                            {
                                                string Email = row3["UserEmail"].ToString();


                                                
                                                html.Append("<td>" + FirstName + "</td>");
                                                html.Append("<td>" + LastName + "</td>");
                                                html.Append("<td>" + Email + "</td>");
                                              
                                               
                                            }
                                            html.Append("</tr></tbody></table></div>");
                                            con.Close();
                                            ViewDashboard.Controls.Add(new Literal { Text = html.ToString() });
                                        }

                                    }
                                }


                            }
                        }
                    }



                }
            }
        }
     
       

        
    }
}