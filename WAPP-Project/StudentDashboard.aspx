<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDashboard.aspx.cs" Inherits="WAPP_Project.StudentDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;900&display=swap" rel="stylesheet">
     
    <title></title>
</head>
<body>
    <form id="form1" enctype="multipart/form-data" method="post"  runat="server">
        <asp:TextBox ID="searchkey" runat="server"></asp:TextBox> <asp:Button ID="btn_search" runat="server" Text="Search" OnClick="Search_Click" />
        <div>
            <asp:PlaceHolder ID="ViewCourse" runat="server"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>