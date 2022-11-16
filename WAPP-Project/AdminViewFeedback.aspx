<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="AdminViewFeedback.aspx.cs" Inherits="WAPP_Project.AdminViewFeedback" %>
<asp:Content ID="Title" ContentPlaceHolderID="Title" runat="server" Visible="True">
    Admin Dashboard - View Feedback
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
                    <a href="AdminViewStudent.aspx">
                        <i class="uil uil-user"></i>
                        <h5>Student</h5>
                    </a>
                </li>
                <li>
                    <a href="AdminViewFeedback.aspx"  class="active">
                        <i class="uil uil-edit"></i>
                        <h5>Feedback</h5>
                    </a>
                </li>
              
                
            </ul>
        </aside>

       <main>
            <h2>View Feedbacks</h2>
            
            <table>
                <thead>
                    <tr>
                        <th>Feedback List</th>
                        <th>Full Name</th>
                        <th>Email</th>
                        <th>Delete</th>
                    </tr>
                
                </thead>
                <tbody>
                     <asp:PlaceHolder ID="ViewFeedback" runat="server"></asp:PlaceHolder>
                </tbody>
            </table>  
        </main>

           </div>
</section>
         
        <div>
           
        </div>



</asp:Content>
