<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="clientside.aspx.cs" Inherits="WebApplication1.clientside" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Client Side State Management in ASP.NET<br />
            <br />
            1) ViewState Example<br />
            <br />
            <br />
            <asp:TextBox ID="txtViewState" runat="server" OnTextChanged="txtViewState_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblviewstate" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            2) HiddenField Example<br />
            <br />
            <asp:HiddenField ID="HiddenField1" runat="server" EnableViewState="False" Visible="False" />
            <br />
            <asp:Button ID="btn_hidden" runat="server" OnClick="btn_hidden_Click" Text="Store Hidden Value" />
            <asp:Label ID="lblhidden" runat="server" Visible="False"></asp:Label>
            <br />
            <br />
            3) Cookies Example
            <br />
            <br />
            <asp:TextBox ID="txtCookie" runat="server"></asp:TextBox>
            <asp:Button ID="btn_create" runat="server" OnClick="btn_create_Click" Text="Create Cookie" />
            <asp:Button ID="btn_read" runat="server" OnClick="btn_read_Click" Text="Read Cookie" />
            <asp:Label ID="lblcookie" runat="server"></asp:Label>
            <br />
            <br />
            4) Query String Example<br />
            <br />
            <asp:TextBox ID="txtquery" runat="server"></asp:TextBox>
            <asp:Button ID="btn_query" runat="server" OnClick="btn_query_Click" Text="Show via Query String" />
            <asp:Label ID="lblquery" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
