<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditCourse.aspx.cs" Inherits="WAPP_Project.EditCourse" %>
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
           <div class="row">
            <a href="AdminViewCourse.aspx" runat="server" class="btn prev">  < Back </a>

                     
            <h2>Edit Courses</h2>
        </div>
            <div class="container edit__section-container">
                
                
                    <label class="form-label" for="txt_coursename" >Course Name</label><br />
                    <asp:TextBox class="input" runat="server" ID="txt_coursename"></asp:TextBox><br />

             <label class="form-label" for="txt_desc" >Course Description</label><br />
                    <asp:TextBox class="input" runat="server" ID="txt_desc" Rows="0" EnableViewState="True"></asp:TextBox><br />

              <label class="form-label" for="radio_coursecategory" >Course Category</label><br />
             <asp:RadioButtonList ID="radio_coursecategory" runat="server">
                <asp:ListItem Value="Beginner">Beginner</asp:ListItem>
                <asp:ListItem Value="Intermediate">Intermediate</asp:ListItem>
                <asp:ListItem Value="Advance">Advance</asp:ListItem>
            </asp:RadioButtonList><br />

                       <label class="form-label" for="txt_coursename" >Course Cover Image</label><br />
            <asp:FileUpload ID="file_courseimg" runat="server" accept=".png,.jpg,.jpeg,.gif"/><br />

             <label class="form-label" for="txt_url" >Course URL</label><br />
                    <asp:TextBox  class="input" runat="server" ID="txt_url"></asp:TextBox><br />


                    <asp:Label runat="server" ID="lbl_msg" Text="" ForeColor="Green"></asp:Label> <br />


                <asp:Button runat="server" class="btn edit" ID="btn_edit" OnClick="Edit_Course_Click" text="Edit Course"></asp:Button>

                           
            </div>
        </main>

           </div>
</section>
         
        <div>
           
        </div>
 </asp:Content>

