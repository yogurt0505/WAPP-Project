<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminViewStudent.aspx.cs" Inherits="WAPP_Project.AdminViewStudent" %>
<asp:Content ID="Title" ContentPlaceHolderID="Title" runat="server" Visible="True">
    Admin Dashboard - View Student
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
                    <a href="AdminViewCourse.aspx">
                        <i class="uil uil-book-alt"></i>
                        <h5>Course</h5>
                    </a>
                </li>
                <li>
                    <a href="AdminViewStudent"  class="active">
                        <i class="uil uil-user"></i>
                        <h5>Student</h5>
                    </a>
                </li>
                
                <li>
                    <a href="AdminViewFeedback.aspx">
                        <i class="uil uil-edit"></i>
                        <h5>Feedback</h5>
                    </a>
                </li>
              
            </ul>
        </aside>

       <main>
            <h2>Manage Student</h2>
            <asp:TextBox ID="searchkey" runat="server" class="input"></asp:TextBox>
           <br />
           <asp:Button ID="btn_search" runat="server" Text="Search" class="btn" OnClick="Search_Click" />
            <table>
                <thead>
                    <tr>
                        <th>Course List</th>
                        <th>View Details</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                     <asp:PlaceHolder ID="ViewStudent" runat="server"></asp:PlaceHolder>
                </tbody>
            </table>  
        </main>

           </div>
</section>
         
        <div>
           
        </div>



</asp:Content>
