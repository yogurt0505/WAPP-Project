<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="WAPP_Project.Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Quiz]"></asp:SqlDataSource>

            <asp:Repeater ID="QuestionRepeater" runat="server">
                <ItemTemplate>
                    <div class="box">
                        <table>
                            <tr>
                                <td><%#Eval("Question") %></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RadioButton ID="QA" runat="server" Text='<%#Eval("QA") %>' GroupName="Quiz"/><br />
                                     <asp:RadioButton ID="QB" runat="server" Text='<%#Eval("QB") %>' GroupName="Quiz"/><br />
                                     <asp:RadioButton ID="QC" runat="server" Text='<%#Eval("QC") %>' GroupName="Quiz"/><br />
                                     <asp:RadioButton ID="QD" runat="server" Text='<%#Eval("QD") %>' GroupName="Quiz"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_selectedans" runat="server" Text=""></asp:Label>
                                    <br />
                                    <asp:Label ID="lbl_correct" runat="server" Text="The correct answer is " Visible="false"></asp:Label>
                                    <asp:Label ID="lbl_ans" runat="server" Text='<%#Eval("Answer") %>' Visible="false"></asp:Label>

                                </td>
                            </tr>
                        </table>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
