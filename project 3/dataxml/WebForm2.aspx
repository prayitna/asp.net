<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="project_3.dataxml.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SiteMapPath ID="smWF2" runat="server"></asp:SiteMapPath>
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/dataxml/unit2.xml" 
                TransformFile="~/dataxml/unit2.xslt"></asp:XmlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1">
                <Columns>
                    <asp:BoundField DataField="unit_id" HeaderText="unit_id" SortExpression="unit_id" />
                    <asp:BoundField DataField="unit_name" HeaderText="unit_name" SortExpression="unit_name" />
                </Columns>
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
