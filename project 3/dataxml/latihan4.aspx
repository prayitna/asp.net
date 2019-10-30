<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="latihan4.aspx.cs" Inherits="project_3.dataxml.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Sort" />
            <br />
            <asp:Xml ID="Xml1" runat="server" DocumentSource="~/dataxml/unit2.xml" TransformSource="~/dataxml/style.xslt"></asp:Xml>
        </div>
    </form>
</body>
</html>
