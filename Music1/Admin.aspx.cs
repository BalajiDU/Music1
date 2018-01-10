using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Music
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void usrlist_btn_Click(object sender, EventArgs e)
        {
           // Grid_Display.DataSource = SqlDataSource2;
            Grid_Display.Visible = true;
            usrFeedback_Display.Visible = false;
        }

        protected void usrfeedback_Click(object sender, EventArgs e)
        {
            // Grid_Display.DataSource = SqlDataSource1;
            usrFeedback_Display.Visible = true;
            Grid_Display.Visible = false;
        }

        protected void Selected_delete_Click(object sender, EventArgs e)
        {
            
        }

        protected void LogOut_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("WelcomePage.aspx");
        }
    }
}