<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Lab3.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 197px;
        }
        .auto-style4 {
            width: 431px;
        }
        .auto-style5 {
            width: 463px;
        }
        .auto-style6 {
            width: 463px;
            height: 129px;
        }
        .auto-style7 {
            width: 431px;
            height: 246px;
        }
        .auto-style9 {
            margin-top: 0px;
        }
        .auto-style10 {
            width: 463px;
            height: 60px;
        }
        .auto-style15 {
            width: 431px;
            height: 60px;
        }
        .auto-style20 {
            width: 355px;
        }
        .auto-style21 {
            width: 355px;
            height: 129px;
        }
        .auto-style22 {
            width: 355px;
            height: 60px;
        }
        .auto-style23 {
            width: 431px;
            height: 211px;
            top: auto;
            right: auto;
            bottom: auto;
            left: auto;
        }
        .auto-style24 {
            width: 355px;
            height: 211px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1" style="vertical-align: top;">
            <tr>
                <td class="auto-style5" style="text-align: left; font-family: 'Montserrat ExtraBold'; font-size: large;">Розробники</td>
                <td class="auto-style20" style="text-align: left; font-family: 'Montserrat ExtraBold'; font-size: large;">Від:</td>
                <td class="auto-style20" style="text-align: left; font-family: 'Montserrat ExtraBold'; font-size: large;">До:</td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Montserrat; font-size: medium; font-style: normal">
                    <asp:GridView ID="DevelopersGrid" runat="server" CellPadding="4" CssClass="auto-style9" ForeColor="#333333" GridLines="None" Width="410px">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </td>
                <td class="auto-style21" style="font-family: Montserrat; font-size: medium; font-style: normal">
                    <asp:Calendar ID="DateFrom" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#507CD1" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="White" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
                <td class="auto-style21" style="font-family: Montserrat; font-size: medium; font-style: normal">
                    <asp:Calendar ID="DateTo" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#990000" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="White" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align: left; font-family: 'Montserrat ExtraBold'; font-size: large;">Проекти</td>
                <td class="auto-style20" style="text-align: left; font-family: 'Montserrat ExtraBold'; font-size: large;">&nbsp;</td>
                <td class="auto-style20" style="text-align: left; font-family: 'Montserrat ExtraBold'; font-size: large;">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23" style="font-family: Montserrat; font-size: medium; font-style: normal;">
                    <asp:GridView ID="ProjectsGrid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="410px">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
                <td class="auto-style24">
                    <asp:Button ID="Task1Btn" runat="server" BackColor="#507CD1" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Task1Btn_Click" Text="Завдання 1" Width="348px" />
                </td>
                <td class="auto-style24">
                    <asp:Button ID="Task2Btn" runat="server" BackColor="#990000" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Task2Btn_Click" Text="Завдання 2" Width="350px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style22"></td>
                <td class="auto-style22">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15" style="vertical-align: bottom; font-family: 'Montserrat ExtraBold'; font-size: medium; font-style: normal; text-align: center;"></td>
                <td class="auto-style22"></td>
                <td class="auto-style22">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" style="font-family: Montserrat; font-size: medium; font-style: normal">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
