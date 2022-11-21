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
    public partial class Quiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string CourseID = Request.QueryString["Id"];
                int UserID = Convert.ToInt16(Session["UserID"]);
                int intTest = Convert.ToInt32(CourseID);
                 string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        using (SqlCommand cmd = new SqlCommand("SELECT * FROM Question WHERE CourseID=" + intTest))
                        {
                            using (SqlDataAdapter sda = new SqlDataAdapter())
                            {
                                cmd.Connection = con;
                                sda.SelectCommand = cmd;
                                using (DataTable dt = new DataTable())
                                {
                                sda.Fill(dt);
                                QuestionRepeater.DataSource = dt;
                                QuestionRepeater.DataBind();
                                con.Close();
                                }
                            }
                        
                    }
                    try
                    {
                        con.Open();

                        StringBuilder html = new StringBuilder();
                        string query1 = "SELECT Score FROM [Score] WHERE UserID=@UserID AND CourseID=@CourseID";
                        SqlCommand cmd1 = new SqlCommand(query1, con);
                        cmd1.Parameters.AddWithValue("@UserID", UserID);
                        cmd1.Parameters.AddWithValue("@CourseID", CourseID);
                        SqlDataReader dr2 = cmd1.ExecuteReader();
                        string Score = "";

                        if (dr2.Read())
                        {
                            Score = dr2["Score"].ToString();
                        }
                        con.Close();

                        html.Append("<h3>Previous Score: "+Score+"</h3>");

                        ViewPrevScore.Controls.Add(new Literal { Text = html.ToString() });
                        con.Close();
                    }
                    catch (Exception ex)
                    {
                        Response.Write("Error occured: " + ex.ToString());
                    }
                }
            }

        }

        protected void Submit_Answer_Click(object sender, EventArgs e)
        {
            int correctans = 0;
            int totalans = QuestionRepeater.Items.Count;
            //Get session info
            int UserID = Convert.ToInt16(Session["UserID"]);
            string CourseID = Request.QueryString["Id"];
            int intTest = Convert.ToInt16(CourseID);

            try
            {
            
            foreach (RepeaterItem question in QuestionRepeater.Items)
            {
                RadioButton A = (RadioButton)question.FindControl("A");
                Label CorrectAns = (Label)question.FindControl("lbl_ans");

                if (A.Checked == true)
                {

                if (CorrectAns.Text == "A")
                {
                    Label CorrectFeedback = (Label)question.FindControl("lbl_feedback");
                    CorrectFeedback.Text = "Correct!";
                    CorrectFeedback.ForeColor = System.Drawing.Color.Green;
                        correctans++;
                }

                else
                {
                    Label WrongFeedback = (Label)question.FindControl("lbl_feedback");
                    WrongFeedback.Text = "The correct answer is <b>" + CorrectAns.Text.ToString();
                    WrongFeedback.ForeColor = System.Drawing.Color.Red;
                }
            }
            }

            foreach (RepeaterItem question in QuestionRepeater.Items)
            {
                RadioButton B = (RadioButton)question.FindControl("B");
                Label CorrectAns = (Label)question.FindControl("lbl_ans");


                if (B.Checked == true)
                {

                    if (CorrectAns.Text == "B")
                    {
                        Label CorrectFeedback = (Label)question.FindControl("lbl_feedback");
                        CorrectFeedback.Text = "Correct!";
                        CorrectFeedback.ForeColor = System.Drawing.Color.Green;
                        correctans++;
                    }

                    else
                    {
                        Label WrongFeedback = (Label)question.FindControl("lbl_feedback");
                        WrongFeedback.Text = "The correct answer is <b>" + CorrectAns.Text.ToString();
                        WrongFeedback.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }

            foreach (RepeaterItem question in QuestionRepeater.Items)
            {
                RadioButton C = (RadioButton)question.FindControl("C");
                Label CorrectAns = (Label)question.FindControl("lbl_ans");


                if (C.Checked == true)
                {

                    if (CorrectAns.Text == "C")
                    {
                        Label CorrectFeedback = (Label)question.FindControl("lbl_feedback");
                        CorrectFeedback.Text = "Correct!";
                        CorrectFeedback.ForeColor = System.Drawing.Color.Green;
                        correctans++;
                    }

                    else
                    {
                        Label WrongFeedback = (Label)question.FindControl("lbl_feedback");
                        WrongFeedback.Text = "The correct answer is <b>" + CorrectAns.Text.ToString();
                        WrongFeedback.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }

            foreach (RepeaterItem question in QuestionRepeater.Items)
            {
                RadioButton D = (RadioButton)question.FindControl("D");
                Label CorrectAns = (Label)question.FindControl("lbl_ans");


                if (D.Checked == true)
                {

                    if (CorrectAns.Text == "D")
                    {
                        Label CorrectFeedback = (Label)question.FindControl("lbl_feedback");
                        CorrectFeedback.Text = "Correct!";
                        CorrectFeedback.ForeColor = System.Drawing.Color.Green;
                        correctans++;
                    }

                    else
                    {
                        Label WrongFeedback = (Label)question.FindControl("lbl_feedback");
                        WrongFeedback.Text = "The correct answer is <b>" + CorrectAns.Text.ToString();
                        WrongFeedback.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }


                //Check quiz record exists
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

                con.Open();
                string query1 = "SELECT * from [Score] WHERE UserID=@UserID AND CourseID=@CourseID";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.Parameters.AddWithValue("@UserID", UserID);
                cmd1.Parameters.AddWithValue("@CourseID", intTest);

                SqlDataAdapter sda = new SqlDataAdapter(cmd1);

                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd1.ExecuteNonQuery();
                con.Close();

                if (dt.Rows.Count == 0)
                {
                    con.Open();
                    string query2 = "INSERT INTO [Score] (UserID, CourseID, Score) values (@UserID, @CourseID, @Score)";
                    SqlCommand cmd2 = new SqlCommand(query2, con);

                    cmd2.Parameters.AddWithValue("@UserID", UserID);
                    cmd2.Parameters.AddWithValue("@CourseID", intTest);
                    cmd2.Parameters.AddWithValue("@Score", correctans + "/" + totalans);

                    cmd2.ExecuteNonQuery();
                    con.Close();
                }

                else
                {
                    con.Open();
                    string query3 = "UPDATE [Score] SET Score=@Score WHERE UserID=@UserID AND CourseID=@CourseID";
                    SqlCommand cmd3 = new SqlCommand(query3, con);

                    cmd3.Parameters.AddWithValue("@UserID", UserID);
                    cmd3.Parameters.AddWithValue("@CourseID", intTest);
                    cmd3.Parameters.AddWithValue("@Score", correctans + "/" + totalans);

                    cmd3.ExecuteNonQuery();
                    con.Close();
                }

            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());

            }

        }
    }
}