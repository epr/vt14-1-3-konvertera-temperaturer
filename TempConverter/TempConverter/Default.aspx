<%@ Page Language="C#" ViewStateMode="Disabled" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TempConverter.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Konvertera temperaturer - Eddy Proca</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label for="StartTemperature">Starttemperatur:</label>
        </div>
        <div>
            <asp:TextBox ID="StartTemperature" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="EndTemperature">Sluttemperatur:</label>
        </div>
        <div>
            <asp:TextBox ID="EndTemperature" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="TemperatureSteps">Temperatursteg:</label>
        </div>
        <div>
            <asp:TextBox ID="TemperatureSteps" runat="server"></asp:TextBox>
        </div>
        <div>
            <label>Typ av konvertering</label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Celsius till Fahrenheit</asp:ListItem>
                <asp:ListItem>Fahrenheit till Celsius</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div>
            <asp:Button ID="Convert" runat="server" Text="Konvertera" />
        </div>
    </form>
</body>
</html>
