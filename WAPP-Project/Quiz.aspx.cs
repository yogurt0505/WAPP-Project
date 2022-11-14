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
                }
            }

        }

        protected void Submit_Answer_Click(object sender, EventArgs e)
        {
            foreach(RepeaterItem question in QuestionRepeater.Items)
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
                    }

                    else
                    {
                        Label WrongFeedback = (Label)question.FindControl("lbl_feedback");
                        WrongFeedback.Text = "The correct answer is <b>" + CorrectAns.Text.ToString();
                        WrongFeedback.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }
    }
}