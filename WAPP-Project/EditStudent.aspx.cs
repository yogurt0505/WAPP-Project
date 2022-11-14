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
    public partial class EditStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

       protected void Edit_Click(object sender, EventArgs e)
        {
            //Setup database connection
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String FirstName = txt_firstname.Text;
            String LastName = txt_lastname.Text;
            String Gender = radio_gender.Text;

            con.Open();

            try
            {
                if (file_profilepic.HasFile)
                {
                    // Image file validation
                    string[] validFileTypes = { "gif", "png", "jpg", "jpeg" };
                    string ext = System.IO.Path.GetExtension(file_profilepic.PostedFile.FileName);
                    bool isValidFile = false;

                    for (int i = 0; i < validFileTypes.Length; i++)
                    {
                        if (ext == "." + validFileTypes[i])
                        {
                            isValidFile = true;
                            break;
                        }
                    }

                    if (!isValidFile)
                    {
                        lbl_msg.Text = "Invalid File. Please upload an image file with extension " + string.Join(", ", validFileTypes);
                    }

                    else
                    {
                        String ProfilePic = file_profilepic.FileName.ToString();
                        file_profilepic.PostedFile.SaveAs(Server.MapPath("~/upload/") + ProfilePic);

                        string query1 = "UPDATE [Student] SET FirstName=@FirstName, LastName=@LastName, Gender=@Gender, ProfilePic=@ProfilePic WHERE UserID=@UserID";
                        SqlCommand cmd1 = new SqlCommand(query1, con);

                        cmd1.Parameters.AddWithValue("@FirstName", FirstName);
                        cmd1.Parameters.AddWithValue("@LastName", LastName);
                        cmd1.Parameters.AddWithValue("@Gender", Gender);
                        cmd1.Parameters.AddWithValue("@ProfilePic", ProfilePic);

                        cmd1.ExecuteNonQuery();
                        con.Close();
                        lbl_msg.Text = "Profile Edited Succesfully.";

                    }
                }

                else
                {

                    string query2 = "UPDATE [Student] SET FirstName=@FirstName, LastName=@LastName, Gender=@Gender WHERE UserID=@UserID";
                    SqlCommand cmd2 = new SqlCommand(query2, con);

                    cmd2.Parameters.AddWithValue("@FirstName", FirstName);
                    cmd2.Parameters.AddWithValue("@LastName", LastName);
                    cmd2.Parameters.AddWithValue("@Gender", Gender);

                    cmd2.ExecuteNonQuery();
                    con.Close();
                    lbl_msg.Text = "Course created successfully!";
                }

            }
            catch (Exception ex)
            {
                Response.Write("Error occured: " + ex.ToString());
            }





        }
    }
}