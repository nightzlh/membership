<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="membership_login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Login ID="Login1" runat="server" Height="135px" Width="247px"></asp:Login>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Login1" />
        </div>
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                You are not logged in. Click the login link to sign in.
            </AnonymousTemplate>
            <LoggedInTemplate>
                You are logged in. Welcome<asp:LoginName ID="LoginName1" runat="server" />
            </LoggedInTemplate>
        </asp:LoginView>
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
    </form>
</body>
</html>
