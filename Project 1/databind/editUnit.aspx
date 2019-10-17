<%@ Page Title="" Language="C#" MasterPageFile="~/master/mainPage.Master" AutoEventWireup="true" CodeBehind="editUnit.aspx.cs" Inherits="Project_1.databind.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="sdsUnit" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" 
        DeleteCommand="DELETE FROM [tr_unit] WHERE [unit_id] = @unit_id" 
        InsertCommand="INSERT INTO [tr_unit] ([unit_id], [unit_name], [flag_aktif]) VALUES (@unit_id, @unit_name, @flag_aktif)" 
        SelectCommand="SELECT [unit_id], [unit_name], [flag_aktif] FROM [tr_unit] WHERE ([flag_aktif] = @flag_aktif) ORDER BY [unit_id]" 
        UpdateCommand="UPDATE [tr_unit] SET [unit_name] = @unit_name, [flag_aktif] = @flag_aktif WHERE [unit_id] = @unit_id">
        <DeleteParameters>
            <asp:Parameter Name="unit_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="unit_id" Type="String" />
            <asp:Parameter Name="unit_name" Type="String" />
            <asp:Parameter Name="flag_aktif" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="flag_aktif" Type="Boolean" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="unit_name" Type="String" />
            <asp:Parameter Name="flag_aktif" Type="Boolean" />
            <asp:Parameter Name="unit_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="gvUnit" runat="server" DataSourceID="sdsUnit" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="unit_id">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="unit_id" HeaderText="unit_id" ReadOnly="True" SortExpression="unit_id" />
            <asp:BoundField DataField="unit_name" HeaderText="unit_name" SortExpression="unit_name" />
            <asp:CheckBoxField DataField="flag_aktif" HeaderText="flag_aktif" SortExpression="flag_aktif" />
        </Columns>
</asp:GridView>
</asp:Content>
