<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="WAPP_Project.test" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" Visible="True">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>

    
        <div class="main__login">
            <div class="left__login">
                <h1>Let's Learn Hangul!</h1>
                <img src="./img/login.svg" alt="login">
            </div>
            <div class="right__login">
                <div class="card__login">
                    <h1>LOGIN</h1>
                    
                    <div class="textfield">
                    <label class="form-label" for="txt_username">User Name</label> 
                    <asp:TextBox runat="server" ID="txt_username" class="input"></asp:TextBox>

                       <asp:RequiredFieldValidator runat="server" ID="user" ControlToValidate="txt_username"   
                        ErrorMessage="Please enter a user name" ForeColor="Red"></asp:RequiredFieldValidator>
                   </div>

                    <div class="textfield">
                     <label class="form-label" for="txt_password">Password</label>
                    <asp:TextBox runat="server" ID="txt_password" class="form-control form-control-lg" TextMode="Password"></asp:TextBox>
                   
                       <asp:RequiredFieldValidator runat="server" ID="pass" ControlToValidate="txt_password"   
                        ErrorMessage="Please enter a password" ForeColor="Red"></asp:RequiredFieldValidator>
                 </div>



                
                    <button class="btn__login">Login</button>
                    <div class="signup__login">Not a member? <a href="register.html"><u>Sign Up Now</u></a></div>
                </div>
                
            </div>
        </div>

  </asp:Content>
