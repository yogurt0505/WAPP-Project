<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditStudent.aspx.cs" Inherits="WAPP_Project.EditStudent" %>
<asp:Content ID="Title" ContentPlaceHolderID="Title" runat="server" Visible="True">
    Student Dashboard - Edit Profile
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
                    <a href="EditStudent.aspx" class="active">
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
                    <a href="CreateFeedback.aspx">
                        <i class="uil uil-edit"></i>
                        <h5>Feedback</h5>
                    </a>
                </li>
               
            </ul>
        </aside>

        <main>
           <h2>Edit Profile</h2>

            <div class="container edit__section-container">
                
                
                    <label class="form-label" for="txt_firstname" >First Name</label><br />
                    <asp:TextBox class="input" runat="server" ID="txt_firstname"></asp:TextBox><br />

             <label class="form-label" for="txt_lastname" >Last Name</label><br />
                    <asp:TextBox class="input" runat="server" ID="txt_lastname"></asp:TextBox><br />

              <label class="form-label" for="radio_gender" >Gender</label><br />
             <asp:RadioButtonList ID="radio_gender" runat="server">
                <asp:ListItem Value="Male">Male</asp:ListItem>
                <asp:ListItem Value="Female">Female</asp:ListItem>
            </asp:RadioButtonList><br />

                       <label class="form-label" for="file_profilepic" >Profile Picture</label><br />
            <asp:FileUpload ID="file_profilepic" runat="server" accept=".png,.jpg,.jpeg,.gif"/><br />

             

                    <asp:Label runat="server" ID="lbl_msg" Text="" ForeColor="Green"></asp:Label> <br />

                      <asp:Button ID="btn_editstudent"  class="btn edit" runat="server" OnClick="Edit_Click" Text="Update Profile"/>

                           
            </div>
        </main>
              
           </div>
</section>
   
</asp:Content>
                  

