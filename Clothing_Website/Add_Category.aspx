<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Add_Category.aspx.cs" Inherits="Clothing_Website.Add_Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 230px;
        }
        .auto-style2 {
            width: 246px;
        }
        .auto-style3 {
            width: 230px;
            height: 49px;
        }
        .auto-style4 {
            width: 246px;
            height: 49px;
        }
        .auto-style5 {
            height: 49px;
        }
        .auto-style6 {
            width: 230px;
            height: 38px;
        }
        .auto-style7 {
            width: 246px;
            height: 38px;
        }
        .auto-style8 {
            height: 38px;
        }
        .auto-style9 {
            width: 230px;
            height: 39px;
        }
        .auto-style10 {
            width: 246px;
            height: 39px;
        }
        .auto-style11 {
            height: 39px;
        }
        .auto-style12 {
            width: 230px;
            height: 50px;
        }
        .auto-style13 {
            width: 246px;
            height: 50px;
        }
        .auto-style14 {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="Black" Text="Category Name"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="Black" Text="Category Image"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="Black" Text="Category Discription"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style13"></td>
            <td class="auto-style14">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" Height="43px" OnClick="Button1_Click" Text="Add Category" Width="169px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="Black" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
