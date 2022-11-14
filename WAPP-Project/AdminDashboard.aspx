<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="WAPP_Project.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" enctype="multipart/form-data" method="post"  runat="server">
        <asp:TextBox ID="searchkey" runat="server"></asp:TextBox> <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Search_Click" />
        <div>
            <asp:PlaceHolder ID="ViewCourse" runat="server"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
