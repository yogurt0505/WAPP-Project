<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentDashboard.aspx.cs" Inherits="WAPP_Project.StudentDashboard" %>
<asp:Content ID="Title" ContentPlaceHolderID="Title" runat="server" Visible="True">
    Student Dashboard
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" Visible="True">

      

<section class="dashboard">
    <div class="container dashboard__container">
        <aside>
            <ul>
                 <li>
                    <a href="StudentDashboard.aspx" class="active">
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
                    <a href="CreateFeedback.aspx">
                        <i class="uil uil-edit"></i>
                        <h5>Feedback</h5>
                    </a>
                </li>
               
            </ul>
        </aside>
          
        <main>
            <h1>Dashboard</h1>
            <div class="insights">

                <div class="courses">
                    <span class="material-symbols-outlined">person</span>
                    <div class="middle">
                        <div class="left">
                            <h3>Total Course</h3>
                            
                <asp:PlaceHolder ID="ViewDashboard1" runat="server">
                    </asp:PlaceHolder>

                        </div>
                    </div>
                </div>
                


                <div class="courses">
                    <span class="material-symbols-outlined">book</span>
                    <div class="middle">
                        <div class="left">
                            <h3>Total Quiz Attempted</h3>
                           
                            <asp:PlaceHolder ID="ViewDashboard2" runat="server">
                    </asp:PlaceHolder>

                        </div>
                    </div>
                </div>
            </div>

            <div class="recent-register">
                <h1>Recent Course Learnt</h1>
                <table>
                    <thead>
                        <tr>
                            <th>Course</th>
                            <th>Difficulty</th>
                            <th>Quiz</th>
                        </tr>
                    </thead>
                   <tbody>
                           <asp:PlaceHolder ID="ViewDashboard3" runat="server">
                    </asp:PlaceHolder>
                      </tbody>
                </table>
            </div>
        </main>
              
           </div>
</section>
    

</asp:Content>