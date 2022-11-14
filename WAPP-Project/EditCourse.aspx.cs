﻿using System;
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
    public partial class EditCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Edit_Course_Click(object sender, EventArgs e)
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

                    else
                    {
                        String CourseImg = file_courseimg.FileName.ToString();
                        file_courseimg.PostedFile.SaveAs(Server.MapPath("~/upload/") + CourseImg);

                        string query1 = "UPDATE [Course] SET CourseName=@CourseName, CourseCategory=@CourseCategory, CourseImg=@CourseImg, CourseURL=@CourseURL, CourseDesc=@CourseDesc WHERE CourseID=@CourseID";
                        SqlCommand cmd1 = new SqlCommand(query1, con);

                        cmd1.Parameters.AddWithValue("@CourseName", CourseName);
                        cmd1.Parameters.AddWithValue("@CourseCategory", CourseCategory);
                        cmd1.Parameters.AddWithValue("@CourseImg", CourseImg);
                        cmd1.Parameters.AddWithValue("@CourseURL", CourseURL);
                        cmd1.Parameters.AddWithValue("@CourseDesc", CourseDesc);

                        cmd1.ExecuteNonQuery();
                        con.Close();
                        lbl_msg.Text = "Course edited successfully!";

                    }
                }

                else
                {

                    string query2 = "UPDATE [Course] SET CourseName=@CourseName, CourseCategory=@CourseCategory, CourseURL=@CourseURL, CourseDesc=@CourseDesc WHERE CourseID=@CourseID";
                    SqlCommand cmd2 = new SqlCommand(query2, con);

                    cmd2.Parameters.AddWithValue("@CourseName", CourseName);
                    cmd2.Parameters.AddWithValue("@CourseCategory", CourseCategory);
                    cmd2.Parameters.AddWithValue("@CourseURL", CourseURL);
                    cmd2.Parameters.AddWithValue("@CourseDesc", CourseDesc);

                    cmd2.ExecuteNonQuery();
                    con.Close();
                    lbl_msg.Text = "Course edited successfully!";
                }

            }
            catch (Exception ex)
            {
                Response.Write("Error occured: " + ex.ToString());
            }





        }
    }
}