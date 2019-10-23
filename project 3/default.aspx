<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="project_3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SiteMapDataSource ID="sdsWEB" runat="server"></asp:SiteMapDataSource>
            <asp:Menu ID="mnu1" runat="server" Orientation="Horizontal" DataSourceID="sdsWEB" StaticDisplayLevels="2"></asp:Menu>
        </div>
        <div>
            <asp:TreeView ID="tv1" runat="server" DataSourceID="sdsWEB" ShowLines="true"></asp:TreeView>
        </div>
    </form>
</body>
</html>
