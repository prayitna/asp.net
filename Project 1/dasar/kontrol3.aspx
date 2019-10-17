<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kontrol3.aspx.cs" Inherits="Project_1.dasar.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>User ID : <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUserID" runat="server" ErrorMessage="User ID harus isi" ForeColor="#FF3300" ControlToValidate="txtUserID">*</asp:RequiredFieldValidator>
            <br />
            Password: <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password harus diisi" Text="*" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnLogin"  runat="server" Text="Login" OnClick="btnLogin_Click" PostBackUrl="~/dasar/kontrol3hasil.aspx"  />
            <br />
            <asp:Label ID="lblInfo" runat="server" Text=""></asp:Label>
            <br />
            <asp:ValidationSummary ID="vsValidasi" runat="server" ShowMessageBox="True" ShowSummary="False" HeaderText="Terjadi kesalahan:" />
        </div>
    </form>
</body>
</html>
