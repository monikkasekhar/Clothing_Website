<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Clothing_Website.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 54px;
            width: 205px;
        }
        .auto-style6 {
            height: 48px;
            width: 205px;
        }
        .auto-style7 {
            height: 38px;
            width: 205px;
        }
        .auto-style8 {
            height: 53px;
            width: 205px;
        }
        .auto-style9 {
            height: 54px;
            width: 234px;
        }
        .auto-style10 {
            height: 48px;
            width: 234px;
        }
        .auto-style11 {
            height: 38px;
            width: 234px;
        }
        .auto-style12 {
            height: 53px;
            width: 234px;
        }
        .auto-style13 {
            height: 54px;
            width: 255px;
        }
        .auto-style14 {
            height: 48px;
            width: 255px;
        }
        .auto-style15 {
            height: 38px;
            width: 255px;
        }
        .auto-style16 {
            height: 53px;
            width: 255px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style9"></td>
            <td class="auto-style13"></td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style10">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="#666666" Text="UserName"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="171px"></asp:TextBox>
            </td>
            <td class="auto-style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Valid Username" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="#666666"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style11">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="#666666" Text="Password"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="170px"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Valid Password" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style12"></td>
            <td class="auto-style16">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="#666666" Height="39px" Text="Login" Width="84px" OnClick="Button1_Click" />
            </td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
