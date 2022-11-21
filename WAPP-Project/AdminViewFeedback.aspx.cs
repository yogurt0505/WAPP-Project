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
    public partial class AdminViewFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              
                StringBuilder html = new StringBuilder();

                string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM [Feedback]"))
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
                                    string FeedbackContent = row["FeedbackContent"].ToString();
                                    string FullName = row["FullName"].ToString();
                                    string FeedbackID = row["FeedbackID"].ToString();
                                    string UserID = row["UserID"].ToString();

                                    html.Append("<td>" + FeedbackContent + "</td>");
                                    html.Append("<td>" + FullName + "</td>");
                                    
                                    con.Close();

                                    using (SqlCommand cmd2 = new SqlCommand("SELECT * FROM [User] WHERE UserID=@UserID"))
                                    {

                                        cmd2.Connection = con;

                                        sda.SelectCommand = cmd2;
                                        cmd2.Parameters.AddWithValue("@UserID", UserID);
                                        using (DataTable dt2 = new DataTable())
                                        {
                                            sda.Fill(dt2);
                                            foreach (DataRow row2 in dt2.Rows)
                                            {
                                                string Email = row2["UserEmail"].ToString();


                                                html.Append("<td>" + Email + "</td>"); 
                                                html.Append("<td><a onClick=\"return confirm('Delete this feedback?')\" href = \"DeleteFeedback.aspx?Id=" + FeedbackID + "\" class= \"btn delete\"> Delete </a></td>");
                                                html.Append("</tr>");

                                                con.Close();
                                            }
                                        }

                                    }
                                }
                                ViewFeedback.Controls.Add(new Literal { Text = html.ToString() });


                            }
                        }
                    }



                }
            }
        }
    }
}