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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

       protected void Register_Click(object sender, EventArgs e)
        {
            //Setup database connection
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                //Create new account
                String UserName = txt_username.Text;
                String Password = txt_password.Text;

                con.Open();
                string query1 = "INSERT INTO [User] (UserName, UserPassword, UserRole) values (@UserName, @UserPassword, @UserRole)";
                SqlCommand cmd1 = new SqlCommand(query1, con);

                cmd1.Parameters.AddWithValue("@UserName", UserName);
                cmd1.Parameters.AddWithValue("@UserPassword", Password);
                cmd1.Parameters.AddWithValue("@UserRole", "Student");

                var recordAffected = (int)cmd1.ExecuteNonQuery();

                if (recordAffected > 0)
                {
                    con.Close();

                    Response.Write("<script>alert('Record added!');window.location.href='Register.aspx';</script>");

                }
                else
                {
                    con.Close();

                    Response.Write("<script>alert('Record not added!');window.location.href='Register.aspx';</script>");

                }
                cmd1.ExecuteNonQuery();
                //Create Student identity


            }
            catch (Exception ex)
            {
                Response.Write("Error occured: " + ex.ToString());
            }





        }
    }

}