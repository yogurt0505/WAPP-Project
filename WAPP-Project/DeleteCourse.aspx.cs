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
    public partial class DeleteCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string CourseID = Request.QueryString["Id"];
                int intTest = Convert.ToInt32(CourseID);
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                string query = "DELETE FROM [Course] WHERE CourseID=@CourseID";

                

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@CourseID", intTest);

                con.Open();
                cmd.ExecuteNonQuery();

                Response.Redirect("AdminDashboard.aspx");
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}