<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Loan_App.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>User Login</h1>
        <div>
            <table>
                <tr>
                    <td>Email : </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password : </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    </td>
                    </tr>
                        <asp:Button ID="btnSignin" runat="server" Text="Sign in" />
                        &nbsp;
                        <asp:Button ID="btnReset" runat="server" Text="Reset" />
                        &nbsp;
            </table>
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign in" />
            <asp:Button ID="Button2" runat="server" Text="Reset" />
            <asp:LinkButton ID="btnregister" runat="server">Register</asp:LinkButton>
        </p>
    </form>
   </body>
</html>
