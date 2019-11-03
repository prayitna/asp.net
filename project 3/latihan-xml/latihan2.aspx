<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="latihan2.aspx.cs" Inherits="project_3.latihan_xml.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="btnSImpan" runat="server" Text="Simpan XML" OnClick="btnSImpan_Click" />
            <br />
            <asp:Xml ID="Xml1" runat="server"></asp:Xml>
        </div>
    </form>
</body>
</html>
