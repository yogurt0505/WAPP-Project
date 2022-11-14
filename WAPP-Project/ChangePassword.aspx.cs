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
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Change_Password_Click(object sender, EventArgs e)
        {
            //Setup database connection
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String OldPassword = txt_oldpass.Text;
            String NewPassword = txt_newpass.Text;
            String ConNewPass = txt_connewpass.Text;
            String ExistPassword = "";

            con.Open();

            //Check duplicated password
            string query1 = "SELECT UserPassword from [User] WHERE UserID=14";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.Parameters.AddWithValue("@UserPassword", OldPassword);

            SqlDataReader dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                ExistPassword = dr1["UserPassword"].ToString();
            }
            con.Close(); 

            //If password and confirm password not matched
            if (OldPassword == NewPassword)
            {
                lbl_msg.Text = "Your new password cannot be your old password";
            }
            else if (NewPassword != ConNewPass)
            {
                lbl_msg.Text = "Your new password and confirm new password are not matched.";
            }
            else if (ExistPassword == NewPassword)
            {
                lbl_msg.Text = "Your new password cannot be the same as your old password";
            }
            else
            {
                try
                {
                    //Create new account
                    con.Open();
                    string query2 = "UPDATE [User] SET UserPassword=@NewPassword WHERE UserID=14";
                    SqlCommand cmd2 = new SqlCommand(query2, con);

                    cmd2.Parameters.AddWithValue("@NewPassword", NewPassword);

                    cmd2.ExecuteNonQuery();
                    con.Close();
                    lbl_msg.Text = "Account registered successfully!";

                    //Create Student identity
                    /* con.Open();
                    string query3 = "SELECT UserID from [User] WHERE UserName=@UserName";
                    SqlCommand cmd3 = new SqlCommand(query3, con);

                    cmd3.Parameters.AddWithValue("@UserName", UserName);

                    SqlDataReader dr2 = cmd3.ExecuteReader();
                    if (dr2.Read())
                    {
                        CheckID = dr2["UserID"].ToString();
                    }
                    con.Close();

                    string query4 = "INSERT INTO [Student] (UserID) values (@UserID)";
                    con.Open();
                    SqlCommand cmd4 = new SqlCommand(query4, con);
                    cmd4.Parameters.AddWithValue("@UserID", CheckID);
                    cmd4.ExecuteNonQuery();
                    con.Close(); */

                }
                catch (Exception ex)
                {
                    Response.Write("Error occured: " + ex.ToString());
                }
            }
        }
    }
}