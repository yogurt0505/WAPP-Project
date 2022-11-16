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
    public partial class DeleteFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string FeedbackID = Request.QueryString["Id"];
                int intTest = Convert.ToInt32(FeedbackID);
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                string query = "DELETE FROM [Feedback] WHERE FeedbackID=@FeedbackID";



                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@FeedbackID", intTest);

                con.Open();
                cmd.ExecuteNonQuery();

                Response.Redirect("AdminViewFeedback.aspx");
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}