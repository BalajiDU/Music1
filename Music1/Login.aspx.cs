using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;
using System.ComponentModel;
using System.Web.UI.WebControls.Adapters;


namespace Music1
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["Music1ConnectionString"].ConnectionString);

        SqlCommand cmd = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            //InitializeComponent();
            if (IsPostBack)
            {
                // MusicConnectionString
                SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["Music1ConnectionString"].ConnectionString);
                //scon.Open();
            }

        }
        public void BDConnection()
        {
            SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["Music1ConnectionString"].ConnectionString);
            scon.Open();

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void Login_btn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["Music1ConnectionString"].ConnectionString);
                scon.Open();
                SqlCommand check = new SqlCommand("select * from user1 where Email = @email");
                check.Parameters.AddWithValue("@email", UserName.Text);
                check.Connection = scon;
                SqlDataReader rd = check.ExecuteReader();
                if(UserName.Text=="admin@vk.com")
                {
                    SqlCommand cmd = new SqlCommand("select Password from User1 where Email = @email");
                    cmd.Parameters.AddWithValue("@email", UserName.Text);
                    rd.Close();
                    cmd.Connection = scon;
                    SqlDataReader dr = cmd.ExecuteReader();
                    dr.Read();
                    if (txt_Password.Text == dr.GetString(0))
                    {
                        scon.Close();
                        dr.Close();
                        Response.Redirect("Admin.aspx");
                    }
                }

                if (rd.HasRows)
                {
                    SqlCommand cmd = new SqlCommand("select Password from User1 where Email = @email");
                    cmd.Parameters.AddWithValue("@email", UserName.Text);
                    rd.Close();
                    cmd.Connection = scon;
                    SqlDataReader dr = cmd.ExecuteReader();
                    dr.Read();
                    if (txt_Password.Text == dr.GetString(0))
                    {
                        scon.Close();
                        dr.Close();
                        Response.Redirect("UserHome.aspx");
                    }
                    else
                    {
                        scon.Close();
                        dr.Close();
                        Login.Show("Incorrect Password", this);
                    }
                }
                else
                {
                    Login.Show("UserName Does not exist, So please Register", this);
                    scon.Close();
                    rd.Close();
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
        }
        protected void Reg_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void UserName_KeyPress(object sender, EventArgs e)
        {
            UserName_TextChanged(sender,e);
            /*if( Asc(e.KeyChar) < 65 || Asc(e.KeyChar) > 90 && Asc(e.KeyChar) < 97 Or Asc(e.KeyChar) > 122 )
            {
                e.ToString = True;
            Error("Only Letters Allowed");
            }
            */
        }
        
        protected void UserName_TextChanged(object sender, EventArgs e)
        {
           

        }
        private void Error(string v)
        {
            throw new NotImplementedException();
        }
        public static void Show(string message, Control owner)
        {
            Page page = (owner as Page) ?? owner.Page;
            if (page == null) return;

            page.ClientScript.RegisterStartupScript(owner.GetType(),
                "ShowMessage", string.Format("<script type='text/javascript'>alert('{0}')</script>",
                message));
        }
    }
}