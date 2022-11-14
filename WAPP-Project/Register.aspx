<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WAPP_Project.Register" %>
<asp:Content ID="Title" ContentPlaceHolderID="Title" runat="server" Visible="True">
    Let's Learn Hangul! - Register
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" Visible="True">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>

    
        <div class="main__login">
            <div class="left__login">
                <h1>Let's Learn Hangul!</h1>
                <img src="./img/login.svg" alt="login">
            </div>
            <div class="right__login">
                <div class="card__login">
                    <h1>REGISTER</h1>
                    
                    <div class="textfield">
                    <label class="form-label" for="txt_username">User Name</label> 
                    <asp:TextBox runat="server" ID="txt_username" class="input"></asp:TextBox>

                       <asp:RequiredFieldValidator runat="server" ID="user" ControlToValidate="txt_username"   
                        ErrorMessage="Please enter a user name" ForeColor="Red"></asp:RequiredFieldValidator>
                   </div>

                     <div class="textfield">
                     <label class="form-label" for="txt_email">Email</label>
                    <asp:TextBox runat="server" ID="txt_email" class="input" TextMode="Email"></asp:TextBox>
                   
                       <asp:RequiredFieldValidator runat="server" ID="email" ControlToValidate="txt_email"   
                        ErrorMessage="Please enter an email" ForeColor="Red"></asp:RequiredFieldValidator>
                  
                 </div>

                    <div class="textfield">
                     <label class="form-label" for="txt_password" >Password</label>
                    <asp:TextBox runat="server" ID="txt_password" class="input" TextMode="Password"></asp:TextBox>
                   
                       <asp:RequiredFieldValidator runat="server" ID="pass" ControlToValidate="txt_password"   
                        ErrorMessage="Please enter a password" ForeColor="Red"></asp:RequiredFieldValidator>
                 </div>

                     <div class="textfield">
                     <label class="form-label" for="txt_conpass" >Confirm Password</label>
                    <asp:TextBox runat="server" ID="txt_conpass" class="input" TextMode="Password"></asp:TextBox>
                   
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txt_password"   
                        ErrorMessage="Please confirm password again" ForeColor="Red"></asp:RequiredFieldValidator>
                 </div>

                    <asp:Label runat="server" ID="lbl_msg" Text="" ForeColor="Red"></asp:Label> <br />

   

                <asp:Button runat="server" ID="btn_register" class="btn__register" OnClick="Register_Click" text="Register"></asp:Button>
                  
                    <div class="signup__login"><a href="Login.aspx">Already a member? <u>Login Now</u></a></div>
                </div>
                
            </div>
        </div>

  </asp:Content>
                  
