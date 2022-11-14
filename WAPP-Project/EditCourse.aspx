<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditCourse.aspx.cs" Inherits="WAPP_Project.EditCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" enctype="multipart/form-data" method="post"  runat="server">
        <div>
             
                     <label class="form-label" for="txt_coursename" >Course Name</label>
                    <asp:TextBox runat="server" ID="txt_coursename"></asp:TextBox>

             <label class="form-label" for="txt_desc" >Course Description</label>
                    <asp:TextBox runat="server" ID="txt_desc"></asp:TextBox>

              <label class="form-label" for="radio_coursecategory" >Course Category</label>
             <asp:RadioButtonList ID="radio_coursecategory" runat="server">
                <asp:ListItem Value="Beginner">Beginner</asp:ListItem>
                <asp:ListItem Value="Intermediate">Intermediate</asp:ListItem>
                <asp:ListItem Value="Advance">Advance</asp:ListItem>
            </asp:RadioButtonList><br />

                       <label class="form-label" for="txt_coursename" >Course Cover Image</label>
            <asp:FileUpload ID="file_courseimg" runat="server" accept=".png,.jpg,.jpeg,.gif"/>

             <label class="form-label" for="txt_url" >Course URL</label>
                    <asp:TextBox runat="server" ID="txt_url"></asp:TextBox>


                    <asp:Label runat="server" ID="lbl_msg" Text="" ForeColor="Red"></asp:Label> <br />

   

                <asp:Button runat="server" ID="btn_create" OnClick="Edit_Course_Click" text="Create Course"></asp:Button>
                  
        </div>
    </form>
</body>
</html>
