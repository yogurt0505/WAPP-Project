<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="WAPP_Project.ChangePassword" %>
<asp:Content ID="Title" ContentPlaceHolderID="Title" runat="server" Visible="True">
    Student Dashboard - Change Password
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
                    <a href="ChangePassword.aspx" class="active">
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
           <h2>Change Password</h2>

            <div class="container edit__section-container">
                
                 <label class="form-label" for="txt_oldpass" >Old Password</label>
            <asp:TextBox runat="server" ID="txt_oldpass" class="input" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="txt_oldpass" 
                ErrorMessage="Please enter your old password" ForeColor="Red"></asp:RequiredFieldValidator><br />


            <!-- New Password -->
            <label class="form-label" for="txt_newpass" >New Password</label>
            <asp:TextBox runat="server" ID="txt_newpass" class="input" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="pass" ControlToValidate="txt_newpass" 
                ErrorMessage="Please enter your new password" ForeColor="Red"></asp:RequiredFieldValidator><br />


            <!-- Confirm New Password -->

            <label class="form-label" for="txt_connewpass" >Confirm New Password</label>
            <asp:TextBox runat="server" ID="txt_connewpass" class="input" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txt_connewpass" 
                ErrorMessage="Please confirm your new password again" ForeColor="Red"></asp:RequiredFieldValidator><br />

             <asp:Label runat="server" ID="lbl_msg" Text=""></asp:Label> <br />


            <asp:Button runat="server" class="btn edit" ID="btn_change" OnClick="Change_Password_Click" text="Confirm Changes"></asp:Button>

                           
            </div>
        </main>
              
           </div>
</section>
   
</asp:Content>
                  
