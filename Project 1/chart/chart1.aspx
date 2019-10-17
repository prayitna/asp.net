<%@ Page Title="" Language="C#" MasterPageFile="~/master/mainPage.Master" AutoEventWireup="true" CodeBehind="chart1.aspx.cs" Inherits="Project_1.chart.Chart1" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" 
        SelectCommand="stat_user" 
        SelectCommandType="StoredProcedure">

    </asp:SqlDataSource>
    <asp:Chart runat="server" ID="ctl00" DataSourceID="SqlDataSource1">
        <series><asp:Series Name="Series1" XValueMember="unit_name" YValueMembers="jumlah"></asp:Series></series>
        <chartareas><asp:ChartArea Name="ChartArea1"></asp:ChartArea></chartareas>
    </asp:Chart>
</asp:Content>
