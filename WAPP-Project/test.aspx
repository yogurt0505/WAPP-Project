<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="WAPP_Project.test" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" Visible="True">

    
        <div class="main__login">
            <div class="left__login">
                <h1>Let's Learn Hangul!</h1>
                <img src="./img/login.svg" alt="login">
            </div>
            <div class="right__login">
                <div class="card__login">
                    <h1>LOGIN</h1>
                    <div class="textfield">
                        <label for="username">Username</label>
                        <input type="text" name="username" placeholder="Username">
                    </div>
                    <div class="textfield">
                        <label for="password">Password</label>
                        <input type="password" name="password" placeholder="Password">
                    </div>
                    <button class="btn__login">Login</button>
                    <div class="signup__login">Not a member? <a href="register.html"><u>Sign Up Now</u></a></div>
                </div>
                
            </div>
        </div>

  </asp:Content>
