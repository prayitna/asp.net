<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Latihan1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 10px;
        }
        .auto-style2 {
            width: 166px;
        }
        .auto-style3 {
            width: 382px;
            vertical-align:middle 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style3">
                <tr><td class="auto-style2">Nama</td><td class="auto-style1">:</td><td><asp:TextBox ID="txtNama" runat="server"></asp:TextBox> </td></tr>
                <tr><td class="auto-style2">Password</td><td class="auto-style1">:</td><td><asp:TextBox TextMode="Password" ID ="txtPassword" runat="server" ></asp:TextBox></td></tr>
                <tr><td class="auto-style2" colspan="3"><asp:Button ID="btnSubmit" runat="server" text="Login" OnClick="btnSubmit_Click1"/>
                    <br /><asp:Label ID ="lblInfo" runat="server"></asp:Label>
                    </td></tr>

            </table>
        </div>
    </form>
</body>
</html>
