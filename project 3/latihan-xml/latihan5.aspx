<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="latihan5.aspx.cs" Inherits="project_3.latihan_xml.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="post">
        <div>
            User :<asp:TextBox ID="user" runat="server">00311001</asp:TextBox>
            <br />
            Password :<asp:TextBox ID="password" runat="server">ujicoba</asp:TextBox>
            <br />
            <asp:Button ID="loginBtn" runat="server" Text="Login" OnClick="loginBtn_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
