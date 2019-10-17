<%@ Page Title="" Language="C#" MasterPageFile="~/master/mainPage.Master" AutoEventWireup="true" CodeBehind="addUser.aspx.cs" Inherits="Project_1.databind.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="sdsUser" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" 
        DeleteCommand="DELETE FROM [tm_user] WHERE [user_id] = @user_id" 
        InsertCommand="INSERT INTO [tm_user] ([user_id], [user_name], [unit_id], [password], [flag_aktif]) VALUES (@user_id, @user_name, @unit_id, @password, @flag_aktif)" SelectCommand="SELECT * FROM [tm_user] ORDER BY [user_name]" 
        UpdateCommand="UPDATE [tm_user] SET [user_name] = @user_name, [unit_id] = @unit_id, [password] = @password, [flag_aktif] = @flag_aktif WHERE [user_id] = @user_id">
        <DeleteParameters>
            <asp:Parameter Name="user_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_id" Type="String" />
            <asp:Parameter Name="user_name" Type="String" />
            <asp:Parameter Name="unit_id" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="flag_aktif" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_name" Type="String" />
            <asp:Parameter Name="unit_id" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="flag_aktif" Type="Boolean" />
            <asp:Parameter Name="user_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="dvUser" runat="server" AllowPaging="True" DataSourceID="sdsUser">
        <Fields>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>

    </asp:DetailsView>
    <br />
    <asp:SqlDataSource id="sdsUnit" runat="server" ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" SelectCommand="SELECT [unit_name], [unit_id] FROM [tr_unit] WHERE ([flag_aktif] = @flag_aktif) ORDER BY [unit_name]">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="flag_aktif" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
    User ID : <asp:TextBox ID ="txtUserID" runat="server"></asp:TextBox><br />
    User Name : <asp:TextBox ID="txtUserNAme" runat="server"></asp:TextBox><br />
    Password : <asp:TextBox ID="txtPassword" runat="server"> </asp:TextBox><br />
    Unit : <asp:DropDownList ID="ddlUnit" runat="server" DataSourceID="sdsUnit" DataTextField="unit_name" DataValueField="unit_id"></asp:DropDownList><br />
    <asp:CheckBox ID="cbAktif" Text="Aktif" runat="server" /><br />
    <asp:Button ID="btnNew" Text="New" runat="server" OnClick="btnNew_Click" />
    </asp:Content>
