<%@ Page Language="C#" ViewStateMode="Disabled" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TempConverter.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Konvertera temperaturer - Eddy Proca</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Fel inträffade. Åtgärda felen och försök igen." />
        <div>
            <label for="StartTemperature">Starttemperatur:</label>
        </div>
        <div>
            <%-- Start temperature --%>
            <asp:TextBox ID="StartTemperature" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="StartTemperature" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fyll i en starttemperatur." Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
            <asp:CompareValidator ControlToValidate="StartTemperature" Operator="DataTypeCheck" Type="Integer" ID="CompareValidator1" runat="server" ErrorMessage="Fyll i en giltig starttemperatur." Text="*"></asp:CompareValidator>
        </div>
        <div>
            <label for="EndTemperature">Sluttemperatur:</label>
        </div>
        <div>
            <%-- End temperature --%>
            <asp:TextBox ID="EndTemperature" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="EndTemperature" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fyll i sluttemperaturen." Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
            <asp:CompareValidator ControlToValidate="EndTemperature" ControlToCompare="StartTemperature" Operator="GreaterThan" Type="Integer" ID="CompareValidator2" runat="server" ErrorMessage="Fyll i en sluttemperatur högre än starttemperaturen." Text="*"></asp:CompareValidator>
            <asp:CompareValidator ControlToValidate="EndTemperature" Operator="DataTypeCheck" Type="Integer" ID="CompareValidator3" runat="server" ErrorMessage="Fyll i en giltig sluttemperatur." Text="*"></asp:CompareValidator>
        </div>
        <div>
            <label for="TemperatureSteps">Temperatursteg:</label>
        </div>
        <div>
            <%-- Temperature steps --%>
            <asp:TextBox ID="TemperatureSteps" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="TemperatureSteps" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Fyll i ett temperatursteg." Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
            <asp:RangeValidator ControlToValidate="TemperatureSteps" MinimumValue="1" MaximumValue="100" Type="Integer" ID="RangeValidator1" runat="server" ErrorMessage="Fyll i temperatursteget så att det är ett heltal mellan 1 och 100." Text="*"></asp:RangeValidator>
        </div>
        <div>
            <%-- Conversion type --%>
            <label>Typ av konvertering</label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Selected="True">Celsius till Fahrenheit</asp:ListItem>
                <asp:ListItem>Fahrenheit till Celsius</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div>
            <%-- Convert button --%>
            <asp:Button ID="Convert" runat="server" Text="Konvertera" OnClick="Convert_Click" />
        </div>
    </form>
</body>
</html>
