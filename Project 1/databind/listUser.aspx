<%@ Page Title="" Language="C#" MasterPageFile="~/master/mainPage.Master" AutoEventWireup="true" CodeBehind="listUser.aspx.cs" Inherits="Project_1.databind.listUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="sdsUnit" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" 
        SelectCommand="SELECT [unit_id], [unit_name] FROM [tr_unit] WHERE ([flag_aktif] = @flag_aktif) ORDER BY [unit_name]">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="flag_aktif" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div>Unit : <asp:DropDownList ID="ddlUnit" runat="server" DataSourceID="sdsUnit" DataTextField="unit_name" DataValueField="unit_id"></asp:DropDownList><asp:Button ID="btnPilih" Text="Pilih" runat="server" /></div>
    <div>
        <asp:SqlDataSource ID="sdsUser" runat="server"
            ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" 
            SelectCommand="SELECT * FROM [tm_user] WHERE (([flag_aktif] = @flag_aktif) AND ([unit_id] = @unit_id))">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="flag_aktif" Type="Int32" />
                <asp:ControlParameter ControlID="ddlUnit" Name="unit_id" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="gvUser" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="sdsUser">
            <Columns>
                <asp:BoundField DataField="user_id" HeaderText="User ID" ReadOnly="True" SortExpression="user_id" >
                </asp:BoundField>
                <asp:BoundField DataField="user_name" HeaderText="User Name" SortExpression="user_name" >
                </asp:BoundField>
                <asp:BoundField DataField="unit_id" HeaderText="Unit ID" SortExpression="unit_id" >
                </asp:BoundField>
                <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" >
                </asp:BoundField>
                <asp:BoundField DataField="flag_aktif" HeaderText="Aktif" SortExpression="flag_aktif" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
