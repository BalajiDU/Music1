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
    public partial class FeedbackAbout : System.Web.UI.Page
    {
        SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["Music1ConnectionString"].ConnectionString);
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_btn_Click(object sender, EventArgs e)
        {
            try
            {

                if (Name_txt.Text == "" || Email_txt.Text == "" || Feedback_txt.Text == "")
                {
                    FeedbackAbout.Show("Enter All Details", this);
                }
                else
                {
                    String insertQuery = "INSERT INTO Feedback(Name,Email,Feedback)VALUES(@Name,@Email,@Feedback)";
                    cmd = new SqlCommand(insertQuery, scon);
                    cmd.Parameters.AddWithValue("@Name", Name_txt.Text);
                    cmd.Parameters.AddWithValue("@Email", Email_txt.Text);
                    cmd.Parameters.AddWithValue("@Feedback", Feedback_txt.Text);
                    scon.Open();
                    int res = cmd.ExecuteNonQuery();
                    Name_txt.Text = "";
                    Email_txt.Text = "";
                    Feedback_txt.Text = "";
                    FeedbackAbout.Show("Feedback Submitted Successfully", this);
                    scon.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
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
            Response.Redirect("WelcomePage.aspx");
        }
    }
}