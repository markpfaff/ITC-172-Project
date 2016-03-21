using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FanLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        GetFanLogin();
    }

    protected void GetFanLogin()
    {
        ServiceReference1.STLoginServiceClient src =
            new ServiceReference1.STLoginServiceClient();
        int key = src.FanLogin(PasswordTextbox.Text, UserNameTextbox.Text);
        if (key != -1)
        {
            ErrorLabel.Text = "Welcome";
            Session["userKey"] = key;
            Response.Redirect("FanDashboard.aspx");
        }
        else
        {
            ErrorLabel.Text = "Login Fail";
        }
    }
}