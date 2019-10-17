<%@ Page Title="" Language="C#" MasterPageFile="~/master/mainPage.Master" AutoEventWireup="true" CodeBehind="databound6.aspx.cs" Inherits="Project_2.databound.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="sdsUnit2" runat="server" ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" 
        DeleteCommand="DELETE FROM [tr_unit2] WHERE [unit_id] = @unit_id" 
        InsertCommand="INSERT INTO [tr_unit2] ([unit_id], [unit_name], [posisi]) VALUES (@unit_id, @unit_name, @posisi)" 
        SelectCommand="SELECT [unit_id], [unit_name], [posisi] FROM [tr_unit2] ORDER BY [posisi]" 
        UpdateCommand="UPDATE [tr_unit2] SET [posisi] = @posisi WHERE [unit_id] = @unit_id">
        <DeleteParameters>
            <asp:Parameter Name="unit_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="unit_id" Type="String" />
            <asp:Parameter Name="unit_name" Type="String" />
            <asp:Parameter Name="posisi" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="unit_id" Type="String" />
            <asp:Parameter Name="posisi" Type="Int32" />

        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="gvUnit2" runat="server" AutoGenerateColumns="False" DataKeyNames="unit_id,posisi" 
        DataSourceID="sdsUnit2" OnRowCommand="gvUnit2_RowCommand">
        <Columns>
            <asp:ButtonField CommandName="Up" Text="Up" />
            <asp:ButtonField CommandName="Down" Text="Down" />
            <asp:BoundField DataField="posisi" HeaderText="posisi" SortExpression="posisi" />
            <asp:BoundField DataField="unit_id" HeaderText="unit_id" ReadOnly="True" SortExpression="unit_id" />
            <asp:BoundField DataField="unit_name" HeaderText="unit_name" SortExpression="unit_name" />
            <asp:HyperLinkField DataNavigateUrlFields="unit_id" DataTextField="unit_name" HeaderText="Unit Name" DataNavigateUrlFormatString="databound1.aspx?unit_id={0}" />
        </Columns>
    </asp:GridView>
</asp:Content>
