<%@ Page Title="" Language="C#" MasterPageFile="~/master/mainPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Project_1.databind.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div>
            <div class="menu-kiri">User ID</div><div class="menu-kiri">:</div>
            <div><asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfUSerID" ControlToValidate="txtUserID" ErrorMessage="User ID harus diisi" ForeColor="Red" Text="*" runat="server"></asp:RequiredFieldValidator></div>
        </div>
        <div>
            <div class="menu-kiri">Password</div><div class="menu-kiri">:</div>
            <div><asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfPassword" ControlToValidate="txtPassword" ErrorMessage="Password harus diisi"  ForeColor="Red" Text="*" runat="server"></asp:RequiredFieldValidator></div>
        </div>
        <div>    
            <div class="menu-kiri">Login as</div><div class="menu-kiri">:</div>
            <div><asp:DropDownList ID="ddlSebagai"  runat="server">
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem Selected="True">Operator</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div>
            <div class="menu-kiri"></div><div class="menu-kiri"></div>
            <div><asp:Button ID="btnLogin" Text="Login"  runat="server" OnClick="btnLogin_Click" />
                <br />
                <asp:Label ID="lblInfo" runat="server"></asp:Label>
            </div>
        </div>
        <div><asp:ValidationSummary ID="vsLogin" runat="server" HeaderText="Pesan kesalahan:" ShowMessageBox="true" /></div>
    </div>
    </asp:Content>
