<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateFeedback.aspx.cs" Inherits="WAPP_Project.CreateFeedback" %>
<asp:Content ID="Title" ContentPlaceHolderID="Title" runat="server" Visible="True">
    Student Dashboard - Create Feedback
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" Visible="True">

      

<section class="dashboard">
    <div class="container dashboard__container">
        <aside>
            <ul>
                 <li>
                    <a href="StudentDashboard.aspx">
                        <i class="uil uil-dashboard"></i>
                        <h5>Dashboard</h5>
                    </a>
                </li>
                <li>
                    <a href="StudentViewCourse.aspx">
                        <i class="uil uil-book-alt"></i>
                        <h5>Course</h5>
                    </a>
                </li>
                <li>
                    <a href="EditStudent.aspx">
                        <i class="uil uil-user"></i>
                        <h5>Edit Profile</h5>
                    </a>
                </li>
                 <li>
                    <a href="ChangePassword.aspx">
                        <i class="uil uil-edit"></i>
                        <h5>Change Password</h5>
                    </a>
                </li>
                <li>
                    <a href="CreateFeedback.aspx" class="active">
                        <i class="uil uil-edit"></i>
                        <h5>Feedback</h5>
                    </a>
                </li>
               
            </ul>
        </aside>

        <main>
           <h2>Create Feedback</h2>

            <div class="container edit__section-container">
                
                 <label class="form-label" for="txt_fullname" >Full Name</label><br />
                    <asp:TextBox class="input" runat="server" ID="txt_fullname"></asp:TextBox><br />

             <label class="form-label" for="txt_feedback" >Enter your feedback here:</label><br />
                    <asp:TextBox class="input" runat="server" ID="txt_feedback" TextMode="MultiLine"></asp:TextBox><br />

             

                    <asp:Label runat="server" ID="lbl_msg" Text="" ForeColor="Green"></asp:Label> <br />
                
                <asp:Button runat="server" class="btn edit" ID="btn_feedback" OnClick="Feedback_Click" text="Send Feedback"></asp:Button>


                           
            </div>
        </main>
              
           </div>
</section>
   
</asp:Content>
                  

             