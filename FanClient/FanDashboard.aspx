<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FanDashboard.aspx.cs" Inherits="FanDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fan Dashboard</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Fan Dashboard</h1>
        <div>
            <h2>List Shows</h2>
            <asp:BulletedList ID="BulletedListShows" runat="server"></asp:BulletedList>
        </div>
        <div>
            <h2>List Artists</h2>
            <asp:BulletedList ID="BulletedListArtists" runat="server"></asp:BulletedList>
        </div>
        <div>
            <h2>List Venues</h2>
            <asp:BulletedList ID="BulletedListVenues" runat="server"></asp:BulletedList>
        </div>
        <div>
            <h2>Select Show by Venues</h2>
            <asp:DropDownList ID="DropDownListVenue" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListVenue_SelectedIndexChanged"></asp:DropDownList>
            <asp:GridView ID="GridViewVenues" runat="server"></asp:GridView>
        </div>
        <div>
            <h2>Select Show by Artist</h2>
            <asp:DropDownList ID="DropDownListArtist" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="DropDownListArtist_SelectedIndexChanged"></asp:DropDownList>
            <asp:GridView ID="GridViewArtists" runat="server"></asp:GridView>
        </div>

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="FollowArtist.aspx">Follow An Artist</asp:HyperLink>
        

    </div>
    </form>
</body>
</html>
