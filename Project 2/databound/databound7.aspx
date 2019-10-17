<%@ Page Title="" Language="C#" MasterPageFile="~/master/mainPage.Master" AutoEventWireup="true" CodeBehind="databound7.aspx.cs" Inherits="Project_2.databound.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="sdsUser" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" 
        DeleteCommand="DELETE FROM [tm_user] WHERE [user_id] = @user_id" 
        InsertCommand="INSERT INTO [tm_user] ([user_id], [user_name], [unit_id], [password], [flag_aktif]) VALUES (@user_id, @user_name, @unit_id, @password, @flag_aktif)" 
        SelectCommand="SELECT a.*,b.unit_name FROM [tm_user] a, [tr_unit] b where a.unit_id=b.unit_id ORDER BY [user_id]" 
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
    <asp:SqlDataSource ID="sdsUnit" runat="server" ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" SelectCommand="SELECT [unit_id], [unit_name] FROM [tr_unit] ORDER BY [unit_id]"></asp:SqlDataSource>
    <asp:GridView ID="gvUser" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="sdsUser">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
            <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
            <asp:TemplateField HeaderText="Unit Kerja">
                <EditItemTemplate>
                    <asp:DropDownList ID="ddlUnit" runat="server" DataSourceID="sdsUnit" 
                        DataTextField="unit_name" DataValueField="unit_id"
                        SelectedValue=<%# Bind("unit_id") %>>
                    </asp:DropDownList>
                    
                </EditItemTemplate>
                <ItemTemplate>
                    <%# Eval("unit_name") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:CheckBoxField DataField="flag_aktif" HeaderText="flag_aktif" SortExpression="flag_aktif" />
        </Columns>
    </asp:GridView>
</asp:Content>
