<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Admin_home_page.aspx.cs" Inherits="Clothing_Website.Admin_home_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 46px;
        }
        .auto-style2 {
            height: 42px;
        }
        .auto-style3 {
            height: 41px;
        }
        .auto-style4 {
            height: 37px;
        }
        .auto-style5 {
            height: 46px;
            width: 151px;
        }
        .auto-style6 {
            height: 42px;
            width: 151px;
        }
        .auto-style7 {
            height: 41px;
            width: 151px;
        }
        .auto-style8 {
            height: 37px;
            width: 151px;
        }
        .auto-style9 {
            width: 151px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style2">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Small" ForeColor="#666666" PostBackUrl="~/Add_Category.aspx">Add Category</asp:LinkButton>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Small" ForeColor="#666666" PostBackUrl="~/Edit_Category.aspx">Edit Category</asp:LinkButton>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Small" ForeColor="#666666" PostBackUrl="~/Add_Product.aspx">Add Product</asp:LinkButton>
            &nbsp;&nbsp;
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style4">
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#666666" PostBackUrl="~/Edit_Product.aspx">Edit Product</asp:LinkButton>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Size="Smaller" PostBackUrl="~/View_Feedback.aspx">View Feedback</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
