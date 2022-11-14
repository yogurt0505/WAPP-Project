<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateFeedback.aspx.cs" Inherits="WAPP_Project.CreateFeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" enctype="multipart/form-data" method="post"  runat="server">
        <div>
             
                     <label class="form-label" for="txt_fullname" >Full Name</label>
                    <asp:TextBox runat="server" ID="txt_fullname"></asp:TextBox>

           
                       
             <label class="form-label" for="txt_feedback" >Enter your feedback here:</label>
                    <asp:TextBox runat="server" ID="txt_feedback"></asp:TextBox>


                    <asp:Label runat="server" ID="lbl_msg" Text="" ForeColor="Red"></asp:Label> <br />

   

                <asp:Button runat="server" ID="btn_feedback" OnClick="Feedback_Click" text="Send Feedback"></asp:Button>
                  
        </div>
    </form>
</body>
</html>
