<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="latihan1.aspx.cs" Inherits="project_3.latihan_xml.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="sdsUnit" runat="server" ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" SelectCommand="SELECT * FROM [tr_unit]" DeleteCommand="DELETE FROM [tr_unit] WHERE [unit_id] = @unit_id" InsertCommand="INSERT INTO [tr_unit] ([unit_id], [unit_name], [flag_aktif]) VALUES (@unit_id, @unit_name, @flag_aktif)" UpdateCommand="UPDATE [tr_unit] SET [unit_name] = @unit_name, [flag_aktif] = @flag_aktif WHERE [unit_id] = @unit_id">
                <DeleteParameters>
                    <asp:Parameter Name="unit_id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="unit_id" Type="String" />
                    <asp:Parameter Name="unit_name" Type="String" />
                    <asp:Parameter Name="flag_aktif" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="unit_name" Type="String" />
                    <asp:Parameter Name="flag_aktif" Type="Boolean" />
                    <asp:Parameter Name="unit_id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="gvUnit" runat="server" AutoGenerateColumns="False" DataKeyNames="unit_id" DataSourceID="sdsUnit">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="unit_id" HeaderText="unit_id" ReadOnly="True" SortExpression="unit_id" />
                    <asp:BoundField DataField="unit_name" HeaderText="unit_name" SortExpression="unit_name" />
                    <asp:BoundField DataField="flag_aktif" HeaderText="flag_aktif" SortExpression="flag_aktif" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Simpan XML" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="lblHasil" runat="server" Text=""></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
