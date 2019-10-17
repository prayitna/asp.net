<%@ Page Title="" Language="C#" MasterPageFile="~/master/mainPage.Master" AutoEventWireup="true" CodeBehind="databound2.aspx.cs" Inherits="Project_2.databound.WebForm2" Theme="myTheme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div >
        <h2>Master Data</h2>
    <asp:SqlDataSource ID="sdsUnit" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" 
        SelectCommand="SELECT [unit_name], [unit_id] FROM [tr_unit] WHERE ([flag_aktif] = @flag_aktif) ORDER BY [unit_id]">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="flag_aktif" Type="Boolean" />
        </SelectParameters>
        </asp:SqlDataSource>
    <asp:GridView ID="gvUnit" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sdsUnit" 
        DataKeyNames="unit_id,unit_name" OnRowCommand="gvUnit_RowCommand" OnSelectedIndexChanged="Button1_Click">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="unit_id" HeaderText="Unit ID" SortExpression="unit_id" />
            <asp:BoundField DataField="unit_name" HeaderText="Unit Name" SortExpression="unit_name" />
        </Columns>
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Info Selected" OnClick="Button1_Click" />
        <asp:Label ID="lblMaster" runat="server" Text=""></asp:Label>
    </div>
    <div >
        <h2>Detail Data</h2>
                <asp:SqlDataSource ID="sdsUser" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" 
            SelectCommand="SELECT [user_id], [user_name] FROM [tm_user] WHERE (([flag_aktif] = @flag_aktif) AND ([unit_id] = @unit_id))">
            <SelectParameters>
                <asp:Parameter DefaultValue="True" Name="flag_aktif" Type="Boolean" />
                <asp:ControlParameter ControlID="gvUnit" Name="unit_id" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="gvUser" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sdsUser">
            <Columns>
                <asp:BoundField DataField="user_id" HeaderText="User ID" />
                <asp:BoundField DataField="user_name" HeaderText="User Name" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
