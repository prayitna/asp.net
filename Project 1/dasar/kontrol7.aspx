<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kontrol7.aspx.cs" Inherits="Project_1.dasar.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>Upload file : <asp:FileUpload ID="fuGambar" runat="server" OnPreRender="fuGambar_PreRender" /><asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
            <br />

        </div>
        <div>
            <asp:DataList ID="dlGambar" runat="server" RepeatColumns="3">
                <ItemTemplate>
                    <asp:Image ID="imgGambar" ImageUrl='<%# Eval("Name","~/dasar/images/{0}")  %>' Style="width:60px" runat="server" /><br />
                    <%# Eval("Name") %>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
