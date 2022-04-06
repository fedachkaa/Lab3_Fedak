<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultTask2.aspx.cs" Inherits="Lab3.ResultTask2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 313px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="vertical-align: middle; text-align: center">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: left; font-family: Montserrat;">
                        <asp:Label ID="Result2Title" runat="server" Font-Bold="True" Text="Рейтинг розробників:"></asp:Label>
                    </td>
                    <td style="font-family: Montserrat; font-size: medium; vertical-align: 0%; line-height: normal; text-align: left;">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: left; font-family: Montserrat;">
                        <asp:GridView ID="Result2Grid" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Height="242px" Width="309px">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>
                    </td>
                    <td style="text-align: left; vertical-align: top;">
                        <asp:Button ID="OrderBtn" runat="server" BackColor="Tan" Font-Bold="True" Font-Size="Medium" OnClick="OrderBtn_Click" Text="За зростанням" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
