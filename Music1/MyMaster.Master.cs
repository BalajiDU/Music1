using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Music
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void About_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("About.aspx");
        }

        protected void Login_Sign_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Home_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("WelcomePage.aspx");
        }
    }
}