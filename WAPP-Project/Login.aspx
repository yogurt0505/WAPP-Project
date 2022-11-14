 <%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WAPP_Project.Login" %>
<asp:Content ID="Title" ContentPlaceHolderID="Title" runat="server" Visible="True">
    Let's Learn Hangul! - Login
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
                    <h1>Login</h1>
                    
                    <div class="textfield">
                    <label class="form-label" for="txt_username">User Name</label> 
                    <asp:TextBox runat="server" ID="txt_username" class="input"></asp:TextBox>

                       <asp:RequiredFieldValidator runat="server" ID="user" ControlToValidate="txt_username"   
                        ErrorMessage="Please enter a user name" ForeColor="Red"></asp:RequiredFieldValidator>
                   </div>

                    

                    <div class="textfield">
                     <label class="form-label" for="txt_password" >Password</label>
                    <asp:TextBox runat="server" ID="txt_password" class="input" TextMode="Password"></asp:TextBox>
                   
                       <asp:RequiredFieldValidator runat="server" ID="pass" ControlToValidate="txt_password"   
                        ErrorMessage="Please enter a password" ForeColor="Red"></asp:RequiredFieldValidator>
                 </div>

                   
                    <asp:Label runat="server" ID="lbl_msg" Text="" ForeColor="Red"></asp:Label> <br />

   

                <asp:Button runat="server" ID="btn_register" class="btn__register" OnClick="Login_Click" text="Login"></asp:Button>
                  
                    <div class="signup__login">Not a member? <a href="Register.aspx"><u>Sign Up Now</u></a></div>
                </div>
                
            </div>
        </div>

  </asp:Content>