using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace Music
{
    public partial class About : System.Web.UI.Page
    {
        SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["Music1ConnectionString"].ConnectionString);
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        public static void Show(string message, Control owner)
        {
            Page page = (owner as Page) ?? owner.Page;
            if (page == null) return;

            page.ClientScript.RegisterStartupScript(owner.GetType(),
                "ShowMessage", string.Format("<script type='text/javascript'>alert('{0}')</script>",
                message));
        }

        protected void Home_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}