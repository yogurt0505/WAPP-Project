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
    public partial class DeleteStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string UserID = Request.QueryString["Id"];
                int intTest = Convert.ToInt32(UserID);
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                string query = "DELETE FROM [Student] WHERE UserID=@UserID";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@UserID", intTest);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                string query2 = "DELETE FROM [User] WHERE UserID=@UserID";

                SqlCommand cmd2 = new SqlCommand(query2, con);

                cmd2.Parameters.AddWithValue("@UserID", intTest);

                con.Open();
                cmd2.ExecuteNonQuery();

                Response.Redirect("AdminViewStudent.aspx");
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}