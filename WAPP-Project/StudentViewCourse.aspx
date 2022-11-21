<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentViewCourse.aspx.cs" Inherits="WAPP_Project.StudentViewCourse" %>
<asp:Content ID="Title" ContentPlaceHolderID="Title" runat="server" Visible="True">
    Student Dashboard - View Course
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
                    <a href="StudentViewCourse.aspx" class="active">
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
                    <a href="CreateFeedback.aspx">
                        <i class="uil uil-edit"></i>
                        <h5>Feedback</h5>
                    </a>
                </li>
               
            </ul>
        </aside>
          
         <main>
            <h1>Your Courses</h1>
            <div class="insights">
                <asp:PlaceHolder ID="ViewCourse" runat="server">
                    </asp:PlaceHolder>
            </div>

        </main>
              
           </div>
</section>
    

</asp:Content>
