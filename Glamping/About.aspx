<%@ Page Title="Moonbeam Glamping" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="Glamping.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Guest Reservation Form</h2>
<table class="nav-justified">
    <tr>
        <td style="width: 150px">Name:</td>
        <td class="modal-sm" style="width: 250px">
            <asp:TextBox ID="txtName" runat="server" Width="250px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="* Enter Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 150px">Email Address:</td>
        <td class="modal-sm" style="width: 250px">
            <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Enter a Valid Email"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 150px">
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Error Email Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td class="modal-sm" style="width: 250px">
            <asp:CheckBox ID="chkGrizzly" runat="server" Checked="True" Text="Grizzy (suite) $99" Width="250px" />
        </td>
        <td>
            <asp:Label ID="lblTentError" runat="server" Text="* Select a Tent" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 150px">Tent Selection:</td>
        <td class="modal-sm" style="width: 250px">
            <asp:CheckBox ID="chkPolar" runat="server" Text="Polar (deluxe plus cot) $89" Width="250px" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 150px">&nbsp;</td>
        <td class="modal-sm" style="width: 250px">
            <asp:CheckBox ID="chkKodiak" runat="server" Text="Kodiak (deluxe) $79" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 150px">Night(s):</td>
        <td class="modal-sm" style="width: 250px">
            <asp:DropDownList ID="ddlNights" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 150px">Check-in Date:</td>
        <td class="modal-sm" style="width: 250px">
            <asp:Calendar ID="cldArrival" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" style="margin-left: 8px" Width="250px">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
        </td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
            <br />
            <asp:Label ID="lblCalendarError" runat="server" Text="* Select a Valid Date" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblReservation" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
    </tr>
</table>
    <p>&nbsp;</p>
</asp:Content>
