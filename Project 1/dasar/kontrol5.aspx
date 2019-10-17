<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kontrol5.aspx.cs" Inherits="Project_1.dasar.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .html{
            background-color:navy;
        }
        .tabs{
            position: relative;
            top:2px;
            left: 10px;
        }
        .tab{
            border: solid 1px black;
            background-color: silver;
            padding: 2px 10px;
        }
        .selectedTab{
            background-color: white;
            border-bottom:solid 1px white;
        }
        .tabConstents{
            border: solid 1px black;
            padding: 10px;
            background-color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="mnuSatu" runat="server" Orientation="Horizontal" OnMenuItemClick="mnuSatu_MenuItemClick">
                <StaticSelectedStyle CssClass="selectedTab" />
                <StaticMenuStyle CssClass="tab" />
                <Items>
                    <asp:MenuItem Selected="true" Text="Tab 1" Value="0"></asp:MenuItem>
                    <asp:MenuItem Text="Tab 2" Value="1"></asp:MenuItem>
                    <asp:MenuItem Text="Tab 3" Value="2"></asp:MenuItem>
                </Items>
            </asp:Menu>
            <div class="tabConstents">
                <asp:MultiView ID="mvSatu" ActiveViewIndex="0" runat="server">
                    <asp:View ID="view1" runat="server">
                        <asp:BulletedList ID="blTab1" runat="server">
                            <asp:ListItem Value="1">Item 1</asp:ListItem>
                            <asp:ListItem Value="2">Item 2</asp:ListItem>
                            <asp:ListItem Value="3">Item 3</asp:ListItem>
                        </asp:BulletedList>
                    </asp:View>
                    <asp:View ID="view2" runat="server">
                        <asp:CheckBoxList ID="cblTab2" runat="server">
                            <asp:ListItem Value="1">Pilihan 1</asp:ListItem>
                            <asp:ListItem Value="2">Pilihan 2</asp:ListItem>
                            <asp:ListItem Value="3">Pilihan 3</asp:ListItem>
                        </asp:CheckBoxList>
                    </asp:View>
                    <asp:View ID="view3" runat="server">
                        <asp:RadioButtonList ID="rblTab3" runat="server">
                            <asp:ListItem Value="1">Radio 1</asp:ListItem>
                            <asp:ListItem Value="2">Radio 2</asp:ListItem>
                            <asp:ListItem Value="3">Radio 3</asp:ListItem>
                        </asp:RadioButtonList>
                    </asp:View>
                </asp:MultiView>
            </div>
        </div>
    </form>
</body>
</html>
