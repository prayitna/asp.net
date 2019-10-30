<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="latihan1.aspx.cs" Inherits="project_3.dataxml.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SiteMapPath ID="smWF1" runat="server"></asp:SiteMapPath>
            <asp:XmlDataSource ID="xdsUnit" runat="server" DataFile="~/dataxml/unit.xml"></asp:XmlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="xdsUnit">
                <Columns>
                    <asp:BoundField DataField="unit_id" HeaderText="unit_id" SortExpression="unit_id" />
                    <asp:BoundField DataField="unit_name" HeaderText="unit_name" SortExpression="unit_name" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
