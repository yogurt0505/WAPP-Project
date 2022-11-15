<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminViewCourse.aspx.cs" Inherits="WAPP_Project.AdminViewCourse" %>
<asp:Content ID="Title" ContentPlaceHolderID="Title" runat="server" Visible="True">
    Admin Dashboard - View Course
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" Visible="True">

      

<section class="dashboard">
    <div class="container dashboard__container">
        <aside>
            <ul>
                <li>
                    <a href="AdminDashboard.aspx">
                        <i class="uil uil-dashboard"></i>
                        <h5>Dashboard</h5>
                    </a>
                </li>
                <li>
                    <a href="AdminViewCourse.aspx" class="active">
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
            <h2>Manage Course</h2>
            <asp:TextBox ID="searchkey" runat="server" class="input"></asp:TextBox>
           <br />
           <asp:Button ID="btn_search" runat="server" Text="Search" class="btn" OnClick="Search_Click" />
            <table>
                <thead>
                    <tr>
                        <th>Course List</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                     <asp:PlaceHolder ID="ViewCourse" runat="server"></asp:PlaceHolder>
                </tbody>
            </table>  
        </main>

           </div>
</section>
         
        <div>
           
        </div>



</asp:Content>
