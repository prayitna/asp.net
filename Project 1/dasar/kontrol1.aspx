<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kontrol1.aspx.cs" Inherits="Project_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Text Box <asp:TextBox ID="txtDemo" Text="Demo Text" runat="server"></asp:TextBox>
            <br />
            Button <asp:Button ID="btnDemo" Text="Demo Button" runat="server" />
            <br />
            Radio Button <asp:RadioButton ID="rdoDemo" Text="Demo Radio" Checked="false" runat="server" />
            <br />
            <asp:CheckBox ID="cbDemo" Text="Demo CheckBox" Checked="false" runat="server" />
            <br />
            <asp:HyperLink ID="hlDemo" NavigateUrl="#" runat="server">HyperLink</asp:HyperLink>
            
        </div>
    </form>
</body>
</html>
