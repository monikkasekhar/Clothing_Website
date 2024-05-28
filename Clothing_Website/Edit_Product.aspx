<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Edit_Product.aspx.cs" Inherits="Clothing_Website.Edit_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 428px;
        }
        .auto-style2 {
            height: 27px;
            width: 313px;
        }
        .auto-style5 {
            width: 313px;
        }
        .auto-style6 {
            height: 27px;
            width: 190px;
        }
        .auto-style7 {
            width: 190px;
        }
        .auto-style8 {
            width: 190px;
            height: 45px;
        }
        .auto-style9 {
            width: 313px;
            height: 45px;
        }
        .auto-style10 {
            height: 38px;
            width: 190px;
        }
        .auto-style11 {
            height: 38px;
            width: 313px;
        }
        .auto-style12 {
            height: 37px;
            width: 190px;
        }
        .auto-style13 {
            height: 37px;
            width: 313px;
        }
        .auto-style14 {
            height: 41px;
            width: 190px;
        }
        .auto-style15 {
            height: 41px;
            width: 313px;
        }
        .auto-style16 {
            width: 190px;
            height: 53px;
        }
        .auto-style17 {
            width: 313px;
            height: 53px;
        }
        .auto-style18 {
            width: 126px;
        }
        .auto-style19 {
            width: 126px;
            height: 38px;
        }
        .auto-style20 {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Product_Id" HeaderText="Id">
                        <HeaderStyle Font-Bold="True" Font-Size="Small" ForeColor="Black" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Product_name" HeaderText="Name">
                        <HeaderStyle Font-Bold="True" Font-Size="Small" ForeColor="Black" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Product_details" HeaderText="Details">
                        <HeaderStyle Font-Bold="True" Font-Size="Small" ForeColor="Black" />
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="Product_photo" HeaderText="Image">
                            <HeaderStyle Font-Bold="True" Font-Size="Small" ForeColor="Black" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Product_price" HeaderText="Price">
                        <HeaderStyle Font-Bold="True" Font-Size="Small" ForeColor="Black" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Product_stock" HeaderText="Stock">
                        <HeaderStyle Font-Bold="True" Font-Size="Small" ForeColor="Black" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Product_status" HeaderText="Status">
                        <HeaderStyle Font-Bold="True" Font-Size="Small" ForeColor="Black" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" OnCommand="LinkButton1_Command" Text="Edit" CommandArgument='<%# Eval("Product_Id") %>'></asp:LinkButton>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" Font-Size="Small" ForeColor="Black" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Change_Status">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Change_Status" OnCommand="LinkButton2_Command" CommandArgument='<%# Eval("Product_Id") %>'></asp:LinkButton>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" Font-Size="Small" ForeColor="Black" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("Product_Id") %>' OnCommand="LinkButton3_Command">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Panel ID="Panel1" runat="server">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style18">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style19">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Name"></asp:Label>
                            </td>
                            <td class="auto-style20">
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Details"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Image"></asp:Label>
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Price"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Stock"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" OnClick="Button1_Click" Text="EDIT" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp;</td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <table class="w-100">
                    <tr>
                        <td class="auto-style6"></td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td class="auto-style15">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
