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
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                StringBuilder html = new StringBuilder();

                html.Append("<ul class= \"nav__menu\" >");
                html.Append("<a class= \"active\" href = \"Homepage.aspx\"> Home </a>");
                html.Append("<a href = \"about.aspx\"> About </a>");
                html.Append("<a href = \"NotStudent_courses.aspx\"> Course </a> ");
                html.Append("<a href = \"Login.aspx\"> Log In </a></ul> ");

                ViewNavbar.Controls.Add(new Literal { Text = html.ToString() });
            }
            else if ((Session["UserRole"]).ToString() == "Student")
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

                int UserID = Convert.ToInt16(Session["UserID"]);
                StringBuilder html2 = new StringBuilder();
                string ImgHolder = "";
                string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
               
                try
                {
                    con.Open();

                    string query1 = "SELECT * FROM [Student] WHERE UserID=@UserID";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@UserID", UserID);
                    SqlDataReader dr2 = cmd1.ExecuteReader();

                    if (dr2.Read())
                    {
                        ImgHolder = dr2["ProfilePic"].ToString();
                    }
                    con.Close();

                    if (ImgHolder == "")
                    {
                        ImgHolder = "noimg.jpg";
                    }
                    

                    html2.Append("<ul class= \"nav__menu\" >");
                    html2.Append("<li><a class= \"active\" href = \"Homepage.aspx\"> Home </a></li>");
                    html2.Append("<li><a href = \"about.aspx\"> About </a></li>");
                    html2.Append("<li><a href = \"Student_courses.aspx\"> Course </a></li> ");

                    html2.Append("<li class=\"nav__profile\"><div class=\"profile__picture\"> ");
                    html2.Append("<img src = \"upload/" + ImgHolder + "\" ></div><ul> ");
                    html2.Append("<li><a href = \"StudentDashboard.aspx\"> Dashboard </a></li>");
                    html2.Append("<li><a href = \"Logout.aspx\"> Log Out </a></li></ul> </li></ul>");
                    ViewNavbar.Controls.Add(new Literal { Text = html2.ToString() });
                }
                catch (Exception ex)
                {
                    Response.Write("Error occured: " + ex.ToString());
                }

            }
            else if ((Session["UserRole"]).ToString() == "Admin")
            {

                StringBuilder html3 = new StringBuilder();
               
                                    html3.Append("<ul class= \"nav__menu\" >");
                                    html3.Append("<li><a class= \"active\" href = \"Homepage.aspx\"> Home </a></li>");
                                    html3.Append("<li><a href = \"about.aspx\"> About </a></li>");
                                    html3.Append("<li><a href = \"Student_courses.aspx\"> Course </a></li> ");

                html3.Append("<li class=\"nav__profile\"><div class=\"profile__picture\"> ");
                                    html3.Append("<img src = \"img/avatar.png\" ></div ><ul> ");
                                    html3.Append("<li><a href = \"AdminDashboard.aspx\"> Dashboard </a></li>");
                                    html3.Append("<li><a href = \"Logout.aspx\"> Log Out </a></li></ul> </li></ul>");

                                    ViewNavbar.Controls.Add(new Literal { Text = html3.ToString() });
                                

            }
        }
    }
}