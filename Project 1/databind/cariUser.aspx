<%@ Page Title="" Language="C#" MasterPageFile="~/master/mainPage.Master" AutoEventWireup="true" CodeBehind="cariUser.aspx.cs" Inherits="Project_1.databind.cariUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Nama user :<asp:TextBox ID="txtNama" runat="server"></asp:TextBox>
        <asp:Button ID="btnCari"   runat="server" Text="Cari" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="sdsUser" AutoGenerateColumns="False" DataKeyNames="user_id">
            <Columns>
                <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
                <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                <asp:BoundField DataField="unit_id" HeaderText="unit_id" SortExpression="unit_id" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:CheckBoxField DataField="flag_aktif" HeaderText="flag_aktif" SortExpression="flag_aktif" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sdsUser" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" 
            SelectCommand="SELECT * FROM [tm_user] WHERE ([user_name] LIKE '%' + @user_name + '%') ORDER BY [user_name]">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtNama" Name="user_name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>


</asp:Content>
