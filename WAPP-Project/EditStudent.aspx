<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditStudent.aspx.cs" Inherits="WAPP_Project.EditStudent" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" Visible="True">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>

    
        <div class="main__login">
            <div class="left__login">
                <h1>Let's Learn Hangul!</h1>
                <img src="./img/login.svg" alt="login">
            </div>
            <div class="right__login">
                <div class="card__login">
                    <h1>EDIT</h1>
                    
                    <div class="textfield">
                    <label class="form-label" for="txt_firstname">First Name</label> 
                    <asp:TextBox runat="server" ID="txt_firstname" class="input"></asp:TextBox>

                   </div>

                    <div class="textfield">
                    <label class="form-label" for="txt_lastname">Last Name</label> 
                    <asp:TextBox runat="server" ID="txt_lastname" class="input"></asp:TextBox>

                   </div>

                   <label class="form-label" for="radio_gender" >Gender</label>
                    <asp:RadioButtonList ID="radio_gender" runat="server">
                    <asp:ListItem Value="Male">Male</asp:ListItem>
                    <asp:ListItem Value="Female">Female</asp:ListItem>
                    </asp:RadioButtonList><br />

                    <label class="form-label" for="txt_profilepic" >Profile Picture</label>
                    <asp:FileUpload ID="file_profilepic" runat="server" accept=".png,.jpg,.jpeg,.gif"/>




                    <asp:Label runat="server" ID="lbl_msg" Text=""></asp:Label> <br />

   

                <asp:Button runat="server" ID="btn_register" class="btn__register" OnClick="Edit_Click" text="Edit"></asp:Button>
                  
                    <div class="signup__login">Already a member? <a href="register.html"><u>Login Now</u></a></div>
                </div>

                
            </div>
        </div>

  </asp:Content>
                  
