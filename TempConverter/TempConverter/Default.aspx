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
            <%-- Start temperature --%>
            <asp:TextBox ID="StartTemperature" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="StartTemperature" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fyll i en starttemperatur." Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
            <asp:CompareValidator ControlToValidate="StartTemperature" ControlToCompare="EndTemperature" Operator="LessThan" Type="Integer" ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
        </div>
        <div>
            <label for="EndTemperature">Sluttemperatur:</label>
        </div>
        <div>
            <%-- End temperature --%>
            <asp:TextBox ID="EndTemperature" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="EndTemperature" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fyll i sluttemperaturen." Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
            <asp:CompareValidator ControlToValidate="EndTemperature" ControlToCompare="StartTemperature" Operator="GreaterThan" Type="Integer" Display="Dynamic" ID="CompareValidator2" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
        </div>
        <div>
            <label for="TemperatureSteps">Temperatursteg:</label>
        </div>
        <div>
            <%-- Temperature steps --%>
            <asp:TextBox ID="TemperatureSteps" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="TemperatureSteps" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Fyll i ett temperatursteg." Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
            <asp:RangeValidator ControlToValidate="TemperatureSteps" MinimumValue="1" MaximumValue="100" Type="Integer" ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator"></asp:RangeValidator>
        </div>
        <div>
            <%-- Conversion type --%>
            <label>Typ av konvertering</label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Celsius till Fahrenheit</asp:ListItem>
                <asp:ListItem>Fahrenheit till Celsius</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div>
            <%-- Convert button --%>
            <asp:Button ID="Convert" runat="server" Text="Konvertera" />
        </div>
    </form>
</body>
</html>
