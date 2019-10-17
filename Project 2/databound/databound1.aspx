<%@ Page Title="" Language="C#" MasterPageFile="~/master/mainPage.Master" AutoEventWireup="true" CodeBehind="databound1.aspx.cs" Inherits="Project_2.databound.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="sdsSQLEXPRESS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" 
        SelectCommand="SELECT user_id, 'Mr(s) '+user_name as user_name, unit_id,password FROM [tm_user]">
    </asp:SqlDataSource>
    <asp:DropDownList ID="ddlUser" runat="server" DataSourceID="sdsSQLEXPRESS" DataTextField="user_name" DataValueField="user_id" ></asp:DropDownList>
    <br />
    <asp:RadioButtonList ID="rblUser" runat="server" BorderColor="Blue" BorderStyle="Solid" DataSourceID="sdsSQLEXPRESS" DataTextField="user_name" DataValueField="user_id" RepeatColumns="3" RepeatLayout="Flow">
    </asp:RadioButtonList>
    <br />
    <asp:ListBox ID="lbUser" runat="server" DataSourceID="sdsSQLEXPRESS" DataTextField="user_name" DataValueField="user_id"></asp:ListBox>
    <br />
    <asp:Button ID="btnPilih" runat="server" OnClick="btnPilih_Click" Text="Pilih" />
    <br />
    <asp:Label ID="lblInfo1" runat="server" Text="DropDown"></asp:Label><br />
    <asp:Label ID="lblInfo2" runat="server" Text="RadioButton"></asp:Label><br />
    <asp:Label ID="lblInfo3" runat="server" Text="ListBox"></asp:Label><br />

</asp:Content>
