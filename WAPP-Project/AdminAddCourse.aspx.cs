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
    public partial class AdminAddCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Create_Course_Click(object sender, EventArgs e)
        {
            //Setup database connection
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String CourseName = txt_coursename.Text;
            String CourseCategory = radio_coursecategory.Text;
            String CourseURL = txt_url.Text;
            String CourseDesc = txt_desc.Text;

            con.Open();

            try
            {
                if (file_courseimg.HasFile)
                {
                    // Image file validation
                    string[] validFileTypes = { "gif", "png", "jpg", "jpeg" };
                    string ext = System.IO.Path.GetExtension(file_courseimg.PostedFile.FileName);
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
                    //end validation

                    else
                    {
                        //inserting img file into db
                        String CourseImg = file_courseimg.FileName.ToString();
                        //save img into local folder
                        file_courseimg.PostedFile.SaveAs(Server.MapPath("~/upload/") + CourseImg);

                        string query1 = "INSERT INTO [Course] (CourseName, CourseCategory, CourseImg, CourseURL, CourseDesc) " +
                            "values (@CourseName, @CourseCategory, @CourseImg, @CourseURL, @CourseDesc)";
                        SqlCommand cmd1 = new SqlCommand(query1, con);

                        cmd1.Parameters.AddWithValue("@CourseName", CourseName);
                        cmd1.Parameters.AddWithValue("@CourseCategory", CourseCategory);
                        cmd1.Parameters.AddWithValue("@CourseImg", CourseImg);
                        cmd1.Parameters.AddWithValue("@CourseURL", CourseURL);
                        cmd1.Parameters.AddWithValue("@CourseDesc", CourseDesc);

                        cmd1.ExecuteNonQuery();
                        con.Close();
                        lbl_msg.Text = "Course created successfully!";

                    }
                }

                else
                {

                    string query2 = "INSERT INTO [Course] (CourseName, CourseCategory, CourseURL, CourseDesc) " +
                        "values (@CourseName, @CourseCategory, @CourseURL, @CourseDesc)";
                    SqlCommand cmd2 = new SqlCommand(query2, con);

                    cmd2.Parameters.AddWithValue("@CourseName", CourseName);
                    cmd2.Parameters.AddWithValue("@CourseCategory", CourseCategory);
                    cmd2.Parameters.AddWithValue("@CourseURL", CourseURL);
                    cmd2.Parameters.AddWithValue("@CourseDesc", CourseDesc);

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