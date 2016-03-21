using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FollowArtist : System.Web.UI.Page
{
    ServiceReference1.STLoginServiceClient src =
        new ServiceReference1.STLoginServiceClient();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userKey"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        if (!IsPostBack) { 
            PopulateArtists();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        AddArtists();
    }

    protected void PopulateArtists()
    {
        string[] artists = src.GetArtists();
        CheckBoxList1.DataSource = artists;
        CheckBoxList1.DataBind();
    }

    protected void AddArtists()
    {
        int key = (int)Session["userKey"];

        foreach (ListItem i in CheckBoxList1.Items)
        {

            if (i.Selected)
            {
                int x = src.AddFanArtist(key, i.Text);
            }
        }
        Label1.Text = "Artist has been added";
        CheckBoxList1.Items.Clear();
    }

}