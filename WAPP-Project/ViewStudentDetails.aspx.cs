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
    public partial class ViewStudentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txt_firstname.Enabled = false;
            txt_lastname.Enabled = false;
            radio_gender.Enabled = false;
            txt_username.Enabled = false;
            txt_email.Enabled = false;
          

            if (!IsPostBack)
            {
                string StudentID = Request.QueryString["Id"];
                int intTest = Convert.ToInt32(StudentID);

                string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM [Student] WHERE StudentID=@StudentID"))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            cmd.Parameters.AddWithValue("@StudentID", intTest);
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                foreach (DataRow row in dt.Rows)
                                {
                                    string UserID = row["UserID"].ToString();
                                    string FirstName = row["FirstName"].ToString();
                                    string LastName = row["LastName"].ToString();
                                    string Gender = row["Gender"].ToString();

                                    this.txt_userid.Text = UserID;
                                    this.txt_firstname.Text = FirstName;
                                    this.txt_lastname.Text = LastName;
                                    this.radio_gender.Text = Gender;

                                    con.Close();

                                    using (SqlCommand cmd2 = new SqlCommand("SELECT * FROM [User] WHERE UserID=@UserID"))
                                    {

                                        cmd2.Connection = con;

                                        sda.SelectCommand = cmd2;
                                        cmd2.Parameters.AddWithValue("@UserID", UserID);
                                        using (DataTable dt2 = new DataTable())
                                        {
                                            sda.Fill(dt2);
                                            foreach (DataRow row2 in dt2.Rows)
                                            {
                                                string UserName = row2["UserName"].ToString();
                                                string UserEmail = row2["UserEmail"].ToString();

                                                this.txt_username.Text = UserName;
                                                this.txt_email.Text = UserEmail;

                                                con.Close();
                                            }
                                        }

                                    }
                                }

                                
                            }
                        }
                    }

                   

                }
            }

        }
    }
}