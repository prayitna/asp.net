<%@ Page Title="" Language="C#" MasterPageFile="~/master/mainPage.Master" AutoEventWireup="true" CodeBehind="databound4.aspx.cs" Inherits="Project_2.databound.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="sdsUnit" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbUserConnectionString %>" 
        DeleteCommand="DELETE FROM [tr_unit] WHERE [unit_id] = @unit_id" 
        InsertCommand="INSERT INTO [tr_unit] ([unit_id], [unit_name], [flag_aktif]) VALUES (@unit_id, @unit_name, @flag_aktif)" 
        SelectCommand="SELECT * FROM [tr_unit] WHERE ([unit_name] LIKE '%' + @unit_name + '%') ORDER BY [unit_id]" 
        UpdateCommand="UPDATE [tr_unit] SET [unit_name] = @unit_name, [flag_aktif] = @flag_aktif WHERE [unit_id] = @unit_id" >
        <DeleteParameters>
            <asp:Parameter Name="unit_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="unit_id" Type="String" />
            <asp:Parameter Name="unit_name" Type="String" />
            <asp:Parameter Name="flag_aktif" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtUnit" Name="unit_name" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="unit_name" Type="String" />
            <asp:Parameter Name="flag_aktif" Type="Boolean" />
            <asp:Parameter Name="unit_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    Unit Kerja <asp:TextBox ID="txtUnit" runat="server"></asp:TextBox>
    <asp:Button ID="btnCari" Text="Cari" runat="server" OnClick="btnCari_Click" />
    <br />
    <asp:GridView ID="gvUnit" runat="server" AutoGenerateColumns="False" DataKeyNames="unit_id" DataSourceID="sdsUnit" Visible="False">
        <Columns>
            <asp:BoundField DataField="unit_id" HeaderText="unit_id" ReadOnly="True" SortExpression="unit_id" />
            <asp:BoundField DataField="unit_name" HeaderText="unit_name" SortExpression="unit_name" />
            <asp:CheckBoxField DataField="flag_aktif" HeaderText="flag_aktif" SortExpression="flag_aktif" />
        </Columns>
        <EmptyDataTemplate>
            Unit kerja tidak ditemukan, anda dapat menambahkan data baru
            
        <asp:FormView ID="fvUnit" runat="server" DataKeyNames="unit_id" DataSourceID="sdsUnit" 
            DefaultMode="Insert" OnItemInserted="fvUnit_ItemInserted">
        <InsertItemTemplate>
            unit_id: <asp:TextBox ID="unit_idTextBox" runat="server" Text='<%# Bind("unit_id") %>' />
            <br />
            unit_name: <asp:TextBox ID="unit_nameTextBox" runat="server" Text='<%# Bind("unit_name") %>' />
            <br />
            flag_aktif:<asp:CheckBox ID="flag_aktifCheckBox" runat="server" Checked='<%# Bind("flag_aktif") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>

        </asp:FormView>  
        </EmptyDataTemplate>         
    </asp:GridView>
 
</asp:Content>
