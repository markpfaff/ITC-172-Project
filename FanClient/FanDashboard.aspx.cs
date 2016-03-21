using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FanDashboard : System.Web.UI.Page
{
    ServiceReference1.STLoginServiceClient db = new ServiceReference1.STLoginServiceClient();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["userKey"] != null)
            {
                if (!IsPostBack)
                {
                    LoadDropDownListArtist();
                    LoadDropDownListVenue();
                    LoadBulletedListVenue();
                    LoadBulletedListArtist();
                    LoadBulletedListShow();
                }

            }
            else
            {
                Response.Redirect("Default.aspx");

            }

        }


    }

    protected void DropDownListArtist_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillGridArtist();
    }

    protected void LoadBulletedListShow()
    {
        string[] shows = db.GetShows();
        BulletedListShows.DataSource = shows;
        BulletedListShows.DataBind();

    }

    protected void LoadBulletedListArtist()
    {
        string[] artists = db.GetArtists();
        BulletedListArtists.DataSource = artists;
        BulletedListArtists.DataBind();

    }

    protected void LoadBulletedListVenue()
    {
        string[] venues = db.GetVenues();
        BulletedListVenues.DataSource = venues;
        BulletedListVenues.DataBind();

    }

    protected void LoadDropDownListArtist()
    {
        string[] artists = db.GetArtists();
        DropDownListArtist.DataSource = artists;
        DropDownListArtist.DataBind();
        DropDownListArtist.Items.Insert(0, "Choose an Artist");

    }

    protected void FillGridArtist()
    {
        string artist = DropDownListArtist.SelectedItem.Text;
        ServiceReference1.ShowLite[] shows = db.GetShowByArtist(artist);
        GridViewArtists.DataSource = shows;
        GridViewArtists.DataBind();
    }

    protected void DropDownListVenue_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillGridVenue();
    }

    protected void LoadDropDownListVenue()
    {
        string[] venues = db.GetVenues();
        DropDownListVenue.DataSource = venues;
        DropDownListVenue.DataBind();
        DropDownListVenue.Items.Insert(0, "Choose a Venue");

    }

    protected void FillGridVenue()
    {
        string venue = DropDownListVenue.SelectedItem.Text;
        ServiceReference1.ShowLite[] shows = db.GetShowByVenue(venue);
        GridViewVenues.DataSource = shows;
        GridViewVenues.DataBind();
    }
}
