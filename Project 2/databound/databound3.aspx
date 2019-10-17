<%@ Page Title="" Language="C#" MasterPageFile="~/master/mainPage.Master" AutoEventWireup="true" CodeBehind="databound3.aspx.cs" Inherits="Project_2.databound.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="sdsUnit" runat="server" 
        ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" 
        DeleteCommand="DELETE FROM [tr_unit] WHERE [unit_id] = @original_unit_id AND [unit_name] = @original_unit_name AND [flag_aktif] = @original_flag_aktif" 
        InsertCommand="INSERT INTO [tr_unit] ([unit_id], [unit_name], [flag_aktif]) VALUES (@unit_id, @unit_name, @flag_aktif)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [tr_unit] ORDER BY [unit_id]" 
        UpdateCommand="UPDATE [tr_unit] SET [unit_name] = @unit_name, [flag_aktif] = @flag_aktif WHERE [unit_id] = @original_unit_id AND [unit_name] = @original_unit_name AND [flag_aktif] = @original_flag_aktif" OnUpdated="sdsUnit_Updated">
        <DeleteParameters>
            <asp:Parameter Name="original_unit_id" Type="String" />
            <asp:Parameter Name="original_unit_name" Type="String" />
            <asp:Parameter Name="original_flag_aktif" Type="Boolean" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="unit_id" Type="String" />
            <asp:Parameter Name="unit_name" Type="String" />
            <asp:Parameter Name="flag_aktif" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="unit_name" Type="String" />
            <asp:Parameter Name="flag_aktif" Type="Boolean" />
            <asp:Parameter Name="original_unit_id" Type="String" />
            <asp:Parameter Name="original_unit_name" Type="String" />
            <asp:Parameter Name="original_flag_aktif" Type="Boolean" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="gvUnit" runat="server" DataSourceID="sdsUnit">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="lblInfo" Text="" runat="server"></asp:Label>
</asp:Content>
