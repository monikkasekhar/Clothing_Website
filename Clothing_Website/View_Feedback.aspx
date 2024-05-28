<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="View_Feedback.aspx.cs" Inherits="Clothing_Website.View_Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 257px;
        }
        .auto-style4 {
            width: 215px;
        }
        .auto-style5 {
            width: 215px;
            height: 27px;
        }
        .auto-style6 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="249px" Width="591px">
                    <Columns>
                        <asp:BoundField DataField="User_Id" HeaderText="User Id" />
                        <asp:BoundField DataField="Feedback_Message" HeaderText="Feedback" />
                        <asp:BoundField DataField="Feedback_Replay" HeaderText="Reply" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Feedback_Id") %>' OnCommand="LinkButton1_Command">Replay</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="Label3" runat="server" Text="Subject"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:Label ID="Label6" runat="server" Text="Response toFeedback"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="Label4" runat="server" Text="Replay Message"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the Replay Massage"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Replay" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table __designer:mapid="1" class="w-100">
                    <tr __designer:mapid="2">
                        <td __designer:mapid="3" class="auto-style2">&nbsp;</td>
                        <td __designer:mapid="4">&nbsp;</td>
                    </tr>
                    <tr __designer:mapid="5">
                        <td __designer:mapid="6" class="auto-style2">&nbsp;</td>
                        <td __designer:mapid="7">&nbsp;</td>
                    </tr>
                    <tr __designer:mapid="8">
                        <td __designer:mapid="9" class="auto-style2">&nbsp;</td>
                        <td __designer:mapid="a">&nbsp;</td>
                    </tr>
                    <tr __designer:mapid="b">
                        <td __designer:mapid="c" class="auto-style2">&nbsp;</td>
                        <td __designer:mapid="d">&nbsp;&nbsp; </td>
                    </tr>
                    <tr __designer:mapid="e">
                        <td __designer:mapid="f" class="auto-style2">&nbsp;</td>
                        <td __designer:mapid="10">&nbsp;</td>
                    </tr>
                    <tr __designer:mapid="11">
                        <td __designer:mapid="12" class="auto-style2">&nbsp;</td>
                        <td __designer:mapid="13">&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
