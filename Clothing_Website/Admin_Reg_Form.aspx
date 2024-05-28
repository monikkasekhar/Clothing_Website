<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Admin_Reg_Form.aspx.cs" Inherits="Clothing_Website.Admin_Reg_Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width: 100%">
        <tr>
            <td style="height: 48px; " colspan="3">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#666666" Text="Admin-Registration-From"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 51px; width: 246px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="#666666" Text="Name"></asp:Label>
            </td>
            <td class="tabs" style="height: 51px; width: 295px;">
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium"></asp:TextBox>
            </td>
            <td class="tabs" style="height: 51px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" Font-Bold="True" Font-Italic="True" Font-Size="Small" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 41px; width: 246px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="#666666" Text="Email"></asp:Label>
            </td>
            <td class="tabs" style="height: 41px; width: 295px;">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" TextMode="Email"></asp:TextBox>
            </td>
            <td class="tabs" style="height: 41px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email-Id" Font-Bold="True" Font-Italic="True" Font-Size="Small" ControlToValidate="TextBox2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 48px; width: 246px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" Text="Mobile Number"></asp:Label>
            </td>
            <td class="tabs" style="height: 48px; width: 295px;">
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" TextMode="Phone"></asp:TextBox>
            </td>
            <td class="tabs" style="height: 48px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Valid Mobile Number" Font-Bold="True" Font-Italic="True" Font-Size="Small" ControlToValidate="TextBox3" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 57px; width: 246px">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="Gray" Text="Username"></asp:Label>
            </td>
            <td class="tabs" style="height: 57px; width: 295px;">
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium"></asp:TextBox>
            </td>
            <td class="tabs" style="height: 57px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter valid username" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; height: 55px">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" Text="Password"></asp:Label>
            </td>
            <td style="height: 55px; width: 295px;">
                <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" TextMode="Password"></asp:TextBox>
            </td>
            <td style="height: 55px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Password" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px">&nbsp;</td>
            <td style="width: 295px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 19px; width: 246px"></td>
            <td style="height: 19px; width: 295px;">
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="#666666" OnClick="Button2_Click" Text="Register" />
            </td>
            <td style="height: 19px"></td>
        </tr>
        <tr>
            <td style="height: 109px; width: 246px"></td>
            <td style="height: 109px; width: 295px;">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" Text="Label" Visible="False"></asp:Label>
            </td>
            <td style="height: 109px"></td>
        </tr>
    </table>
    </asp:Content>
