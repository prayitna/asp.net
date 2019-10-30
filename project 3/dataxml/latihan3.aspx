<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="latihan3.aspx.cs" Inherits="project_3.dataxml.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:XmlDataSource ID="xdsKurikulum" runat="server" DataFile="~/dataxml/kurikulum.xml" TransformFile="~/dataxml/kurikulum.xslt"></asp:XmlDataSource>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="xdsKurikulum">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
