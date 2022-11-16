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
                    <a href="AdminDashboard.aspx" class="active">
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
                    <a href="AdminViewFeedback.aspx">
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
                            <h3>Total Student Register</h3>
                            
                <asp:PlaceHolder ID="ViewDashboard1" runat="server">
                    </asp:PlaceHolder>

                        </div>
                    </div>
                    <small class="text-muted">Target Register Student  : 50</small>
                </div>
                


                <div class="courses">
                    <span class="material-symbols-outlined">book</span>
                    <div class="middle">
                        <div class="left">
                            <h3>Total Register Course</h3>
                           
                            <asp:PlaceHolder ID="ViewDashboard2" runat="server">
                    </asp:PlaceHolder>

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

