<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="latihan5.aspx.cs" Inherits="project_3.dataxml.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Xml ID="Xml1" runat="server" DocumentSource="~/dataxml/books.xml" TransformSource="~/dataxml/books.xslt"></asp:Xml>
        </div>
    </form>
</body>
</html>
