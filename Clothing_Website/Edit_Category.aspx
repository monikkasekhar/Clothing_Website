<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Edit_Category.aspx.cs" Inherits="Clothing_Website.Edit_Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 225px;
        }
        .auto-style2 {
            width: 276px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Category_Id" HeaderText="Id">
                        <HeaderStyle Font-Bold="True" Font-Size="Small" ForeColor="Black" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Category_name" HeaderText="Category Name">
                        <HeaderStyle Font-Bold="True" Font-Size="Small" ForeColor="Black" />
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="Category_photo" HeaderText="Photo">
                            <HeaderStyle Font-Bold="True" Font-Size="Small" ForeColor="Black" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Category_description" HeaderText="Description">
                        <HeaderStyle Font-Bold="True" Font-Size="Small" ForeColor="Black" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Category_status" HeaderText="Status">
                        <HeaderStyle Font-Bold="True" Font-Size="Small" ForeColor="Black" />
                        <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Black" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" CommandArgument='<%# Eval("Category_Id") %>' OnCommand="LinkButton1_Command">Edit</asp:LinkButton>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" Font-Size="Small" ForeColor="Black" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Change Status">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="False" CommandArgument='<%# Eval("Category_Id") %>' OnCommand="LinkButton2_Command">Change_Status</asp:LinkButton>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" Font-Size="Small" ForeColor="Black" />
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Black" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("Category_Id") %>' OnCommand="LinkButton3_Command">Delete</asp:LinkButton>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Image"></asp:Label>
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Description"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" OnClick="Button1_Click" Text="EDIT" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="w-100">
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
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
    </table>
</asp:Content>
