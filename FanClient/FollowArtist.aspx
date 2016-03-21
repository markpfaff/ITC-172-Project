<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FollowArtist.aspx.cs" Inherits="FollowArtist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Follow Artist</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Follow Artist</h1>

        <p>Select your artists and click enter to add them</p>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="3" AutoPostBack="True"></asp:CheckBoxList>
        <asp:Button ID="Button1" runat="server" Text="Add Artists" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    </div>
    <div>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="FanDashboard.aspx">Go To Dashboard</asp:HyperLink>
    </div>
    </form>
</body>
</html>
