<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="WAPP_Project.Quiz" %>
<asp:Content ID="Title" ContentPlaceHolderID="Title" runat="server" Visible="True">
    Quiz
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" Visible="True">
    
<section class="dashboard">
    <div class="container dashboard__container">
       <div class="row">
      <h1>Quiz Section</h1>
          <asp:PlaceHolder ID="ViewPrevScore" runat="server">
                    </asp:PlaceHolder>
       </div>
                            <asp:Repeater ID="QuestionRepeater" runat="server">
                <ItemTemplate>
                     <div class="insights">
            <div class="course">
                        <div class="left" style="text-align: center;">
                        <table>
                            <tr>
                                <td><h1><%#Eval("Question") %></h1></td>
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
                                    <br /><br />
                                    <asp:Label ID="lbl_feedback" runat="server" Text=""></asp:Label>
                                    <asp:Label ID="lbl_selected" runat="server" Text="" Visible="false"></asp:Label>
                                    <br />
                                    <asp:Label ID="lbl_ans" runat="server" Text='<%#Eval("Answer") %>' Visible="false"></asp:Label>

                                </td>
                            </tr>
                        </table>
                            
                </div>

            
            </div>
                </ItemTemplate>
            </asp:Repeater>
                            
                   
             <asp:Button runat="server" class="btn edit" ID="btn_submit" OnClick="Submit_Answer_Click" text="Submit Answer"></asp:Button>
                
        </div>

</section>
    

</asp:Content>