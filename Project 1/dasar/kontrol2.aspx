<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kontrol2.aspx.cs" Inherits="Project_1.dasar.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>User ID : <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
            <br />
            Password: <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnLogin"  runat="server" Text="Login" OnClick="btnLogin_Click" />
            <br />
            <asp:Label ID="lblInfo" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
