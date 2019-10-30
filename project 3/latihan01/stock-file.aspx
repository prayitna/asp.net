<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stock-file.aspx.cs" Inherits="project_3.latihan2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            
            <asp:GridView ID="GridView1" runat="server" DataSourceID="XmlDataSource1">
            </asp:GridView>
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/latihan01/data.xml"></asp:XmlDataSource>
        </div>
    </form>
</body>
</html>
