<%@ Page Title="" Language="C#" MasterPageFile="~/master/mainPage.Master" AutoEventWireup="true" CodeBehind="listUnit.aspx.cs" Inherits="Project_1.databind.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="sdsUnit" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" 
        SelectCommand="SELECT [unit_id], [unit_name], [flag_aktif] FROM [tr_unit] ORDER BY [unit_id]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="sdsUnit">
        
    </asp:GridView>
</asp:Content>
