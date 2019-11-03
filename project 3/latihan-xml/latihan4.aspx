<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="latihan4.aspx.cs" Inherits="project_3.latihan_xml.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="unit.xml" />
            <br />
            <asp:Button ID="Button2" runat="server" Text="unit2.xml" OnClick="Button2_Click" />
            <br />
            <asp:Button ID="Button3" runat="server" Text="rates.xml" OnClick="Button3_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
