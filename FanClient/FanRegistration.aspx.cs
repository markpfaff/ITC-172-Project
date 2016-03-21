using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FanRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        ServiceReference1.STLoginServiceClient src =
           new ServiceReference1.STLoginServiceClient();
        ServiceReference1.FanLite fLite =
            new ServiceReference1.FanLite();

        fLite.fanName = FanNameTextBox.Text;
        fLite.fanEmail = EmailTextBox.Text;
        fLite.fanLoginUserName = UsernameTextBox.Text;
        fLite.fanLoginPasswordPlain = PasswordTextBox.Text;


        int result = src.FanRegistration(fLite);

        if (result != -1)
        {
            ResultLabel.Text = "Successfully Registered";
        }
        else
        {
            ResultLabel.Text = "Registration Failed";
        }
    }

}