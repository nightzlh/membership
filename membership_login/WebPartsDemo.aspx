<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebPartsDemo.aspx.cs" Inherits="membership_login.WebPartsDemo" %>

<%@ Register src="SearchUserControl.ascx" tagname="SearchUserControl" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:WebPartManager ID="WebPartManager1" runat="server">
        </asp:WebPartManager>
        
        Web Parts Demonstration Page

    </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:WebPartZone ID="SidebarZone" runat="server" HeaderText="Sidebar">
                        <ZoneTemplate>
                            <asp:Label runat="server" id="linksPart" title="My Links">
                                <a href="http://www.asp.net">ASP.NET site</a> 
                                <br />
                                <a href="http://www.gotdotnet.com">GotDotNet</a> 
                                <br />
                                <a href="http://www.contoso.com">Contoso.com</a> 
                                <br />
                            </asp:Label>
                            <uc1:SearchUserControl ID="SearchUserControl1" runat="server" title ="Search"/>
                        </ZoneTemplate>
                    </asp:WebPartZone>
                </td>
                <td>
                    <asp:WebPartZone ID="MainZone" runat="server" HeaderText="Main">
                        <ZoneTemplate>
                            <asp:Label ID="Label1" runat="server" title ="Content">
                                <h2>Welcome to My Home Page</h2>
                            </asp:Label>
                        </ZoneTemplate>
                    </asp:WebPartZone>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
