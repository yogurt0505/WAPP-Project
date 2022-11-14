<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="WAPP_Project.Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Question]"></asp:SqlDataSource>

            <asp:Repeater ID="QuestionRepeater" runat="server">
                <ItemTemplate>
                    <div class="box">
                        <table>
                            <tr>
                                <td><%#Eval("Question") %></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RadioButton ID="A" runat="server" Text='<%#Eval("A") %>' GroupName="Quiz"/><br />
                                     <asp:RadioButton ID="B" runat="server" Text='<%#Eval("B") %>' GroupName="Quiz"/><br />
                                     <asp:RadioButton ID="C" runat="server" Text='<%#Eval("C") %>' GroupName="Quiz"/><br />
                                     <asp:RadioButton ID="D" runat="server" Text='<%#Eval("D") %>' GroupName="Quiz"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_feedback" runat="server" Text=""></asp:Label>
                                    <asp:Label ID="lbl_selected" runat="server" Text="" Visible="false"></asp:Label>
                                    <br />
                                    <asp:Label ID="lbl_ans" runat="server" Text='<%#Eval("Answer") %>' Visible="false"></asp:Label>

                                </td>
                            </tr>
                        </table>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

             <asp:Button runat="server" ID="btn_submit" OnClick="Submit_Answer_Click" text="Submit Answer"></asp:Button>
                 
        </div>
    </form>
</body>
</html>
