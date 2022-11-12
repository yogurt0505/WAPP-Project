
<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WAPP_Project.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>

  <section class="vh-100" style="background-color: #9A616D;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img1.webp"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

               

                  <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                    <span class="h1 fw-bold mb-0">Logo</span>
                  </div>

                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Register your account</h5>

                  <div class="form-outline mb-4">
                    <asp:TextBox runat="server" ID="txt_username" class="form-control form-control-lg"></asp:TextBox>
                    <label class="form-label" for="txt_username">User Name</label> 
                       <asp:RequiredFieldValidator runat="server" ID="user" ControlToValidate="txt_username"   
                        ErrorMessage="Please enter a user name" ForeColor="Red"></asp:RequiredFieldValidator>
                  </div>

                  <div class="form-outline mb-4">
                    <asp:TextBox runat="server" ID="txt_email" class="form-control form-control-lg" TextMode="Email"></asp:TextBox>
                    <label class="form-label" for="txt_email">Email</label>
                       <asp:RequiredFieldValidator runat="server" ID="email" ControlToValidate="txt_email"   
                        ErrorMessage="Please enter an email" ForeColor="Red"></asp:RequiredFieldValidator>
                  </div>

                  <div class="form-outline mb-4">
                    <asp:TextBox runat="server" ID="txt_password" class="form-control form-control-lg" TextMode="Password"></asp:TextBox>
                    <label class="form-label" for="txt_password">Password</label>
                       <asp:RequiredFieldValidator runat="server" ID="pass" ControlToValidate="txt_password"   
                        ErrorMessage="Please enter a password" ForeColor="Red"></asp:RequiredFieldValidator>
                  </div>

                  <div class="form-outline mb-4">
                    <asp:TextBox runat="server" ID="txt_conpass" class="form-control form-control-lg" TextMode="Password"></asp:TextBox>
                    <label class="form-label" for="txt_conpass">Confirm Password</label>
                       <asp:RequiredFieldValidator runat="server" ID="conpass" ControlToValidate="txt_conpass"   
                        ErrorMessage="Please confirm password" ForeColor="Red"></asp:RequiredFieldValidator>
                  </div>

                  <div class="pt-1 mb-4">
                    <asp:Button runat="server" ID="btn_register" class="btn btn-dark btn-lg btn-block" OnClick="Register_Click" text="Register"></asp:Button>
                  </div>


                  <asp:Label runat="server" ID="lbl_msg" Text=""></asp:Label> <br />

                  <p class="mb-5 pb-lg-2" style="color: #393f81;">Already have a account? <a href="#!"
                      style="color: #393f81;">Login here!</a></p>
                  <a href="#!" class="small text-muted">Terms of use.</a>
                  <a href="#!" class="small text-muted">Privacy policy</a>
                

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</asp:Content>
