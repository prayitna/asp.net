<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kontrol4.aspx.cs" Inherits="Project_1.dasar.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="calBulan" runat="server" OnSelectionChanged="calBulan_SelectionChanged"></asp:Calendar>
            <br />
            <asp:Label ID="lblInfo" runat="server" Text="Hari dipilih:"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
