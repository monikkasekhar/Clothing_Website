<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="User_Reg_Form.aspx.cs" Inherits="Clothing_Website.User_Reg_Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table style="width: 100%">
        <tr>
            <td style="height: 69px">&nbsp;</td>
            <td colspan="3" style="height: 69px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#666666" Text="User-Registration-Form"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 69px">
                &nbsp;</td>
            <td colspan="3" style="height: 69px">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td style="width: 199px; height: 53px">
                &nbsp;</td>
            <td style="width: 199px; height: 53px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="#666666" Text="Name"></asp:Label>
            </td>
            <td style="height: 53px; width: 279px;">
                <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="148px"></asp:TextBox>
            </td>
            <td style="height: 53px" class="tabs">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Name" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 42px; width: 199px">
                &nbsp;</td>
            <td style="height: 42px; width: 199px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" Font-Strikeout="False" Text="Age"></asp:Label>
            </td>
            <td style="height: 42px; width: 279px;">
                <asp:TextBox ID="TextBox2" runat="server" Height="29px" TextMode="Number" Width="143px"></asp:TextBox>
            </td>
            <td style="height: 42px">
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Age Between 18 to 80" Font-Bold="True" Font-Italic="True" Font-Size="Small" MaximumValue="80" MinimumValue="18"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 55px; width: 199px">
                &nbsp;</td>
            <td style="height: 55px; width: 199px">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="#666666" Text="Address"></asp:Label>
            </td>
            <td style="height: 55px; width: 279px;">
                <asp:TextBox ID="TextBox3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="#666666" Height="24px" TextMode="MultiLine" Width="148px"></asp:TextBox>
            </td>
            <td style="height: 55px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Address" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 199px; height: 48px;">
                &nbsp;</td>
            <td style="width: 199px; height: 48px;">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" Text="Mobile Number"></asp:Label>
            </td>
            <td style="width: 279px; height: 48px;">
                <asp:TextBox ID="TextBox4" runat="server" Height="24px" TextMode="Phone" Width="145px"></asp:TextBox>
            </td>
            <td style="height: 48px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Valid Mobille Number" Font-Bold="True" Font-Italic="True" Font-Size="Small" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 54px; width: 199px">
                &nbsp;</td>
            <td style="height: 54px; width: 199px">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" Text="Email-Id"></asp:Label>
            </td>
            <td style="height: 54px; width: 279px;">
                <asp:TextBox ID="TextBox5" runat="server" Height="29px" TextMode="Email" Width="149px"></asp:TextBox>
            </td>
            <td style="height: 54px" class="tabs">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Valid Email" Font-Bold="True" Font-Italic="True" Font-Size="Small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 54px; width: 199px">
                &nbsp;</td>
            <td style="height: 54px; width: 199px">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" Text="State"></asp:Label>
            </td>
            <td style="height: 54px; width: 279px;">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="46px" Width="148px" AutoPostBack="True" OnTextChanged="DropDownList1_TextChanged">
                </asp:DropDownList>
            </td>
            <td style="height: 54px" class="tabs">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 54px; width: 199px">
                &nbsp;</td>
            <td style="height: 54px; width: 199px">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" Text="District"></asp:Label>
            </td>
            <td style="height: 54px; width: 279px;">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="64px" Width="152px">
                </asp:DropDownList>
            </td>
            <td style="height: 54px" class="tabs"></td>
        </tr>
        <tr>
            <td style="width: 199px; height: 48px;">
                &nbsp;</td>
            <td style="width: 199px; height: 48px;">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" Text="Pincode"></asp:Label>
            </td>
            <td style="width: 279px; height: 48px;">
                <asp:TextBox ID="TextBox6" runat="server" Height="27px" TextMode="Number" Width="147px"></asp:TextBox>
            </td>
            <td class="tabs" style="height: 48px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter Valid Pincode" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 199px; height: 54px;">
                &nbsp;</td>
            <td style="width: 199px; height: 54px;">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="Small" ForeColor="#666666" Text="Username"></asp:Label>
            </td>
            <td style="width: 279px; height: 54px;">
                <asp:TextBox ID="TextBox7" runat="server" Height="22px" Width="146px"></asp:TextBox>
            </td>
            <td class="tabs" style="height: 54px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter Valid Username" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 199px; height: 41px;">
                &nbsp;</td>
            <td style="width: 199px; height: 41px;">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="#666666" Text="Password"></asp:Label>
            </td>
            <td style="width: 279px; height: 41px;">
                <asp:TextBox ID="TextBox8" runat="server" Height="28px" TextMode="Password" Width="147px"></asp:TextBox>
            </td>
            <td class="tabs" style="height: 41px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter valid Password" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 279px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 279px">
                <asp:Button ID="Button1" runat="server" Height="47px" Text="Register" Width="97px" Font-Bold="True" Font-Italic="True" Font-Size="Small" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 199px; height: 36px;">&nbsp;</td>
            <td style="width: 199px; height: 36px;"></td>
            <td style="width: 279px; height: 36px;">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="tabs"></td>
        </tr>
        <tr>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 279px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
