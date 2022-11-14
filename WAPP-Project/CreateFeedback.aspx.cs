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
    public partial class CreateFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string UserName = (Session["UserName"]).ToString();
            this.txt_fullname.Text = UserName;
        }

        protected void Feedback_Click(object sender, EventArgs e)
        {
            //Get session info
            int UserID = Convert.ToInt16(Session["UserID"]);
            
            //Setup database connection
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String FullName = txt_fullname.Text;
            String Feedback = txt_feedback.Text;

            con.Open();

            try
            {

                string query1 = "INSERT INTO [Feedback] (UserID, FeedbackContent, FullName) values (@UserID, @Feedback, @FullName)";
                SqlCommand cmd1 = new SqlCommand(query1, con);

                cmd1.Parameters.AddWithValue("@UserID", UserID);
                cmd1.Parameters.AddWithValue("@Feedback", Feedback);
                cmd1.Parameters.AddWithValue("@FullName", FullName);


                cmd1.ExecuteNonQuery();
                    con.Close();

                Response.Write("<script>alert('Feedback submitted!');window.location.href='CreateFeedback.aspx';</script>"); lbl_msg.Text = "Course created successfully!";
            }

            
            catch (Exception ex)
            {
                Response.Write("Error occured: " + ex.ToString());
            }

        }

    }
}