<%@ Page Title="" Language="C#" MasterPageFile="~/master/mainPage.Master" AutoEventWireup="true" CodeBehind="ListView.aspx.cs" Inherits="Project_2.tampilan.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="sdsUser" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" 
        SelectCommand="SELECT * FROM [tm_user]"></asp:SqlDataSource>
    List View
        <asp:ListView ID="ListView1" runat="server" DataSourceID="sdsUser" DataKeyNames="user_id" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FFFFFF;color: #284775;">user_id:
                    <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                    <br />user_name:
                    <asp:Label ID="user_nameLabel" runat="server" Text='<%# Eval("user_name") %>' />
                    <br />unit_id:
                    <asp:Label ID="unit_idLabel" runat="server" Text='<%# Eval("unit_id") %>' />
                    <br />password:
                    <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                    <br />
                    <asp:CheckBox ID="flag_aktifCheckBox" runat="server" Checked='<%# Eval("flag_aktif") %>' Enabled="false" Text="flag_aktif" />
                    <br /></td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #999999;">user_id:
                    <asp:Label ID="user_idLabel1" runat="server" Text='<%# Eval("user_id") %>' />
                    <br />user_name:
                    <asp:TextBox ID="user_nameTextBox" runat="server" Text='<%# Bind("user_name") %>' />
                    <br />unit_id:
                    <asp:TextBox ID="unit_idTextBox" runat="server" Text='<%# Bind("unit_id") %>' />
                    <br />password:
                    <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                    <br />
                    <asp:CheckBox ID="flag_aktifCheckBox" runat="server" Checked='<%# Bind("flag_aktif") %>' Text="flag_aktif" />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">user_id:
                    <asp:TextBox ID="user_idTextBox" runat="server" Text='<%# Bind("user_id") %>' />
                    <br />user_name:
                    <asp:TextBox ID="user_nameTextBox" runat="server" Text='<%# Bind("user_name") %>' />
                    <br />unit_id:
                    <asp:TextBox ID="unit_idTextBox" runat="server" Text='<%# Bind("unit_id") %>' />
                    <br />password:
                    <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                    <br />
                    <asp:CheckBox ID="flag_aktifCheckBox" runat="server" Checked='<%# Bind("flag_aktif") %>' Text="flag_aktif" />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #E0FFFF;color: #333333;">user_id:
                    <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                    <br />user_name:
                    <asp:Label ID="user_nameLabel" runat="server" Text='<%# Eval("user_name") %>' />
                    <br />unit_id:
                    <asp:Label ID="unit_idLabel" runat="server" Text='<%# Eval("unit_id") %>' />
                    <br />password:
                    <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                    <br />
                    <asp:CheckBox ID="flag_aktifCheckBox" runat="server" Checked='<%# Eval("flag_aktif") %>' Enabled="false" Text="flag_aktif" />
                    <br /></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">user_id:
                    <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                    <br />user_name:
                    <asp:Label ID="user_nameLabel" runat="server" Text='<%# Eval("user_name") %>' />
                    <br />unit_id:
                    <asp:Label ID="unit_idLabel" runat="server" Text='<%# Eval("unit_id") %>' />
                    <br />password:
                    <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                    <br />
                    <asp:CheckBox ID="flag_aktifCheckBox" runat="server" Checked='<%# Eval("flag_aktif") %>' Enabled="false" Text="flag_aktif" />
                    <br /></td>
            </SelectedItemTemplate>
    </asp:ListView>

</asp:Content>
