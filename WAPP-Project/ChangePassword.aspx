<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="WAPP_Project.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" enctype="multipart/form-data" method="post"  runat="server">
        <div>

            <!-- Old Password -->
            <label class="form-label" for="txt_oldpass" >Old Password</label>
            <asp:TextBox runat="server" ID="txt_oldpass" class="input" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="txt_oldpass" 
                ErrorMessage="Please enter your old password" ForeColor="Red"></asp:RequiredFieldValidator>


            <!-- New Password -->
            <label class="form-label" for="txt_newpass" >New Password</label>
            <asp:TextBox runat="server" ID="txt_newpass" class="input" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="pass" ControlToValidate="txt_newpass" 
                ErrorMessage="Please enter your new password" ForeColor="Red"></asp:RequiredFieldValidator>


            <!-- Confirm New Password -->

            <label class="form-label" for="txt_connewpass" >Confirm New Password</label>
            <asp:TextBox runat="server" ID="txt_connewpass" class="input" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txt_connewpass" 
                ErrorMessage="Please confirm your new password again" ForeColor="Red"></asp:RequiredFieldValidator>


            <asp:Button runat="server" ID="btn_change" OnClick="Change_Password_Click" text="Confirm Changes"></asp:Button>
        </div>
    </form>
</body>
</html>
