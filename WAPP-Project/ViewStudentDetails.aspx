<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewStudentDetails.aspx.cs" Inherits="WAPP_Project.ViewStudentDetails" %>
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
                    <a href="AdminViewStudent.aspx" class="active">
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
           <div class="row">
            <a href="AdminViewStudent.aspx" runat="server" class="btn prev">  < Back </a>

                     
            <h2>View Student Details</h2>
        </div>
            <div class="container edit__section-container">

                 <asp:PlaceHolder ID="ViewImg" runat="server"></asp:PlaceHolder>
                
                <label class="form-label" for="txt_firstname">First Name</label> 
                    <asp:TextBox runat="server" ID="txt_firstname" class="input"></asp:TextBox>

            <label class="form-label" for="txt_lastname">Last Name</label> 
                    <asp:TextBox runat="server" ID="txt_lastname" class="input"></asp:TextBox>

              <label class="form-label" for="radio_gender" >Gender</label>
                    <asp:RadioButtonList ID="radio_gender" runat="server">
                    <asp:ListItem Value="Male">Male</asp:ListItem>
                    <asp:ListItem Value="Female">Female</asp:ListItem>
                    </asp:RadioButtonList><br />

                
                           
            </div>
        </main>

           </div>
</section>
         
        <div>
           
        </div>
 </asp:Content>

