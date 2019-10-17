<%@ Page Title="" Language="C#" MasterPageFile="~/master/mainPage.Master" AutoEventWireup="true" CodeBehind="databound5.aspx.cs" Inherits="Project_2.databound.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="sdsUser" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" 
        SelectCommand="SELECT * FROM [tm_user] ORDER BY [user_id]"></asp:SqlDataSource>
    <asp:GridView ID="gvUser" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="sdsUser">
        <Columns>
            <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
            <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
            <asp:BoundField DataField="unit_id" HeaderText="unit_id" SortExpression="unit_id" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:CheckBoxField DataField="flag_aktif" HeaderText="flag_aktif" SortExpression="flag_aktif" />
            <asp:CommandField ButtonType="Image" CancelImageUrl="~/Icons/cancel.ico" DeleteImageUrl="~/Icons/delete.ico" EditImageUrl="~/Icons/edit.ico" NewImageUrl="~/Icons/insert.ico" SelectImageUrl="~/Icons/Play.ico" ShowEditButton="True" ControlStyle-Height="20px" HeaderText="Actions" ShowDeleteButton="True" ShowInsertButton="True" ShowSelectButton="True" >
<ControlStyle Height="20px"></ControlStyle>
            </asp:CommandField>
        </Columns>

    </asp:GridView>
</asp:Content>
