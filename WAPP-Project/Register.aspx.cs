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
            String UserName = txt_username.Text;
            String Password = txt_password.Text;
            String Email = txt_email.Text;
            String Conpass = txt_conpass.Text;
            String ExistName = "";
            String CheckID = "";

            con.Open();

            //Check duplicated username
            string query1 = "SELECT UserName from [User] WHERE UserName=@UserName";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.Parameters.AddWithValue("@UserName", UserName);

            SqlDataReader dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                ExistName = dr1["UserName"].ToString();
            }
            con.Close();

            //If password and confirm password not matched
            if (Password != Conpass)
            {
                lbl_msg.Text = "Your password and confirm password are not matched.";
            }
            else if (UserName == ExistName)
            {
                lbl_msg.Text = "User existed. Please choose another username.";
                txt_username.Text = "";
            }

            else
            {
                try
                {
                    //Create new account
                    con.Open();
                    string query2 = "INSERT INTO [User] (UserName, UserPassword, UserRole, UserEmail) values (@UserName, @UserPassword, @UserRole, @UserEmail)";
                    SqlCommand cmd2 = new SqlCommand(query2, con);

                    cmd2.Parameters.AddWithValue("@UserName", UserName);
                    cmd2.Parameters.AddWithValue("@UserPassword", Password);
                    cmd2.Parameters.AddWithValue("@UserRole", "Student");
                    cmd2.Parameters.AddWithValue("@UserEmail", Email);

                    cmd2.ExecuteNonQuery();
                    con.Close();
                    lbl_msg.Text = "Account registered successfully!";

                    //Create Student identity
                    con.Open();
                    string query3 = "SELECT UserID from [User] WHERE UserName=@UserName";
                    SqlCommand cmd3 = new SqlCommand(query3 , con);

                    cmd3.Parameters.AddWithValue("@UserName", UserName);

                    SqlDataReader dr2 = cmd3.ExecuteReader();
                    if (dr2.Read())
                    {
                        CheckID = dr2["UserID"].ToString();
                    }
                    con.Close();

                    string query4 = "INSERT INTO [Student] (UserID) values (@UserID)";
                    con.Open();
                    SqlCommand cmd4 = new SqlCommand(query4 , con);
                    cmd4.Parameters.AddWithValue("@UserID", CheckID);
                    cmd4.ExecuteNonQuery();
                    con.Close();

                }
                catch (Exception ex)
                {
                    Response.Write("Error occured: " + ex.ToString());
                }
            }




        }
    }

}