<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="WAPP_Project.AdminDashboard" %>
<asp:Content ID="Title" ContentPlaceHolderID="Title" runat="server" Visible="True">
    Admin Dashboard
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" Visible="True">

      

<section class="dashboard">
    <div class="container dashboard__container">
        <aside>
            <ul>
                <li>
                    <a href="admin_dashboard.html" class="active">
                        <i class="uil uil-dashboard"></i>
                        <h5>Dashboard</h5>
                    </a>
                </li>
                <li>
                    <a href="admin_course.html">
                        <i class="uil uil-book-alt"></i>
                        <h5>Course</h5>
                    </a>
                </li>
                <li>
                    <a href="admin_student.html">
                        <i class="uil uil-user"></i>
                        <h5>Student</h5>
                    </a>
                </li>
                <li>
                    <a href="admin_feedback.html">
                        <i class="uil uil-edit"></i>
                        <h5>Feedback</h5>
                    </a>
                </li>
                <li>
                    <a href="admin_password.html">
                        <i class="uil uil-key-skeleton"></i>
                        <h5>Change Password</h5>
                    </a>
                </li>
                
            </ul>
        </aside>

        <main>
            <h1>Dashboard</h1>
            <div class="insights">
                <div class="student">
                    <span class="material-symbols-outlined">person</span>
                    <div class="middle">
                        <div class="left">
                            <h3>Total Student Register</h3>
                            <h1>30</h1>
                        </div>
                    </div>
                    <small class="text-muted">Target Register Student  : 50</small>
                </div>
                <div class="courses">
                    <span class="material-symbols-outlined">book</span>
                    <div class="middle">
                        <div class="left">
                            <h3>Total Register Course</h3>
                            <h1>30</h1>
                        </div>
                    </div>
                    <small class="text-muted">Target Register Course  : 50</small>
                </div>
            </div>

            <div class="recent-register">
                <h1>Recent Register Student</h1>
                <table>
                    <thead>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Phone Number</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Alan</td>
                            <td>Toh</td>
                            <td>testing@gmail.com</td>
                            <td>0123456789</td>
                        </tr>
                    </tbody>
                    <tbody>
                        <tr>
                            <td>Alan</td>
                            <td>Toh</td>
                            <td>testing@gmail.com</td>
                            <td>0123456789</td>
                        </tr>
                    </tbody>
                    <tbody>
                        <tr>
                            <td>Alan</td>
                            <td>Toh</td>
                            <td>testing@gmail.com</td>
                            <td>0123456789</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </main>
           </div>
</section>
          <asp:TextBox ID="searchkey" runat="server"></asp:TextBox> <asp:Button ID="btn_search" runat="server" Text="Search" OnClick="Search_Click" />
        <div>
            <asp:PlaceHolder ID="ViewCourse" runat="server"></asp:PlaceHolder>
        </div>



</asp:Content>

