<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Lab3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 295px;
        }
        .auto-style4 {
            width: 341px;
        }
        .auto-style15 {
            width: 103px;
        }
        .auto-style3 {
            width: 252px;
        }
        .auto-style17 {
            width: 258px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
            <table class="auto-style1" style="font-family: montserrat">
                <tr>
                    <td colspan="2" style="font-family: Montserrat; text-align: center; font-size: medium;">
                        <asp:Label ID="Увійти" runat="server" Font-Bold="True" Text="Вхід"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td colspan="2" style="text-align: center; font-family: Montserrat">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Реєстрація"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15" style="font-family: Montserrat; font-size: medium;">
                        <asp:Label ID="Label1" runat="server" Text="Логін"></asp:Label>
                    </td>
                    <td class="auto-style2" style="font-family: Montserrat; font-size: medium;">
                        <asp:TextBox ID="LoginText" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Label ID="Label5" runat="server" Text="Логін"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="RegisterLogin" runat="server" Width="238px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15" style="font-family: Montserrat; font-size: medium;">
                        <asp:Label ID="Label2" runat="server" Text="Пароль"></asp:Label>
                    </td>
                    <td class="auto-style2" style="font-family: Montserrat; font-size: medium;">
                        <asp:TextBox ID="PasswordText" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style4" style="font-family: 'Montserrat ExtraBold'; text-align: center;">АБО</td>
                    <td class="auto-style17">
                        <asp:Label ID="Label6" runat="server" Text="Пароль"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="RegisterPassword" runat="server" TextMode="Password" Width="239px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15" style="font-family: Montserrat; font-size: medium;">&nbsp;</td>
                    <td class="auto-style2" style="font-family: Montserrat; font-size: medium;">
                        <asp:Button ID="LoginBtn" runat="server" BackColor="#66FFCC" Font-Bold="True" Font-Size="Medium" OnClick="LoginBtn_Click" Text="Увійти" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Label ID="Label7" runat="server" Text="Підтвердження паролю"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" Width="238px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15" style="font-family: Montserrat; font-size: medium;">&nbsp;</td>
                    <td class="auto-style2" style="font-family: Montserrat; font-size: medium;">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="RegisterBtn" runat="server" BackColor="#99FF99" Font-Bold="True" Font-Size="Medium" OnClick="RegisterBtn_Click" Text="Зареєструватись" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
    </form>
</body>
</html>
