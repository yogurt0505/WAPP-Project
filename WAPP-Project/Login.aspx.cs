using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP_Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserRole"] = "";
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            try
            {

            //Setup database connection
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String UserName = txt_username.Text;
            String Password = txt_password.Text;
            String UserID = "";
            String UserRole = "";

            con.Open();

            //Check username and password exists
            string query1 = "SELECT * from [User] WHERE UserName=@UserName AND UserPassword=@UserPassword";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.Parameters.AddWithValue("@UserName", UserName);
            cmd1.Parameters.AddWithValue("@UserPassword", Password);

            SqlDataAdapter sda = new SqlDataAdapter(cmd1);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            cmd1.ExecuteNonQuery();

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    UserID = row["UserID"].ToString();
                    UserRole = row["UserRole"].ToString();
                }
                this.Session["UserName"] = UserName;
                this.Session["UserID"] = UserID;
                this.Session["UserRole"] = UserRole;

                if (UserRole == "Student")
                {
                    Response.Redirect("StudentDashboard.aspx");
                }
                else if (UserRole == "Admin")
                {
                    Response.Redirect("AdminDashboard.aspx");
                }

            }
            else 
            {
                lbl_msg.Text = "Your username or password is wrong.";

            }
            con.Close();
            }

            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());

            }

         

        }
    }
}