<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="db2xml.aspx.cs" Inherits="project_3.latihan03.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Save to XML" OnClick="Button1_Click" />
        <br />
        <asp:Xml ID="Xml1" runat="server"></asp:Xml>
    </form>
    
</body>
</html>
