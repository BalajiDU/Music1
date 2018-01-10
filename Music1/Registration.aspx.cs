using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.ComponentModel;
using System.Web.UI.WebControls.Adapters;

namespace Music1
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["Music1ConnectionString"].ConnectionString);

        SqlCommand cmd = null;
        String con = @"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\RNSIT\5th Sem\Music1\Music1\App_Data\Instruments.mdf;Integrated Security = True; User Instance = True";
        
        SqlDataAdapter da = null;
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
            
        public void DBConnection()
        {
                SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["Music1ConnectionString"].ConnectionString);
           // scon.Open();
             //   if (scon.State == System.Data.ConnectionState.Open)
               // {
                //}
        }
                    
            protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string value = RadioButtonList1.SelectedItem.Value.ToString();

        }

        protected void Signup_btn_Click(object sender, EventArgs e)
        {
            //string radio_btn_value = rb_Gender.SelectedValue;
            //string value = rb_Gender.SelectedItem.Value.ToString();
            try
            {
              //  DBConnection();
                SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["Music1ConnectionString"].ConnectionString);
                //SqlConnection conn = new SqlConnection(
                //ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                scon.Open();

                SqlCommand check = new SqlCommand("select * from user1 where Email = @email");
                check.Parameters.AddWithValue("@email", txt_Email.Text);
                check.Connection = scon;
                SqlDataReader rd = check.ExecuteReader();
                if(txt_Email.Text==""||txt_Email.Text==""||txt_Password.Text==""||txt_Phone.Text=="")
                {
                    Registration.Show("Enter All Details",this);
                }

                else if (rd.HasRows)
                {
                    scon.Close();
                    rd.Close();
                    Registration.Show("Email Exist", this);
                    txt_Email.Text = "";
                    SetFocus(txt_Email.Text);
                    
                }
                
                else
                {
                    scon.Close();
                    rd.Close();

                    //String query = "INSERT INTO User(Name,Email,Gender,Password,Phone)VALUES('" + txt_Name.Text + "','" + txt_Email.Text + "','" + rb_Gender.Text + "','" + txt_Password.Text + "','" + txt_Phone.Text + "')";
                    String insertQuery = "INSERT INTO User1(Name,Email,Gender,Password,Phone)VALUES(@Name,@Email,@Gender,@Password,@Phone)";
                    cmd = new SqlCommand(insertQuery, scon);
                    cmd.Parameters.AddWithValue("@Name", txt_Name.Text);
                    cmd.Parameters.AddWithValue("@Email", txt_Email.Text);
                    cmd.Parameters.AddWithValue("@Gender", rb_Gender.SelectedValue);
                    cmd.Parameters.AddWithValue("@Password", txt_Password.Text);
                    cmd.Parameters.AddWithValue("@Phone", txt_Phone.Text);
                    scon.Open();
                    int res = cmd.ExecuteNonQuery();
                    //MessageBox.Show("Here is my message");
                    //Response.Write(txt_Name.Text + " Your Registeration Successfully!!!thank you");
                    txt_Name.Text = "";
                    txt_Email.Text = "";
                    txt_Password.Text = "";
                    txt_Phone.Text = "";
                    Registration.Show("Registration Successful", this);
                    //Login_Link.Visible = true;
                    scon.Close();
                    //Response.Redirect("Login.aspx");
                    //da = new SqlDataAdapter(query, scon);
                    //DataTable dt = new DataTable();
                    //da.Fill(dt);
                }
                
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        /*
        protected bool Getmail()
        {
            SqlCommand cmd = null;

            String Query = "select Email(*) from Music where Email=@Email";
            cmd.Parameters.AddWithValue("@Email", txt_Email.Text);
            cmd = new SqlCommand(Query, scon);
            //int res = cmd.ExecuteNonQuery();
           // return ((scon.  .ExecuteScalar() <= 0 ? true : false));

        }
        protected void txt_Email_TextChanged(object sender, EventArgs e)
        {
           
                //BDConnection();
                String Query = "select Email from Music where Email= '"+txt_Email.Text+"'";
               // if()
                //cmd.Parameters.AddWithValue("@Email",txt_Email.Text);
                cmd = new SqlCommand(Query, scon);
                int res = (int)cmd.ExecuteScalar();
                
                if (res==0)
                {
                    Registration.Show("Email Alredy Exist", this);
                    txt_Password.Enabled = true;
                    txt_Password.Enabled = true;
                    txt_Phone.Enabled = true;
                    rb_Gender.Enabled = true;
                    Conf_Password.Enabled = true;
                }
                else
                    Registration.Show("Email Alredy Exist", this);
            
        }
        */
        protected void txt_Name_TextChanged(object sender, EventArgs e)
        {
           
        }
        /*
        private void txt_Name_KeyPress(object sender, KeyPressEventArgs e)
        {
           
        }
        */
        private void txt_Name_Validating(object sender, CancelEventArgs e)
        {
            string name = Request.Form["txt_Name"];
            try
            {
                if (name.Length > 0)
                {
                    if (System.Text.RegularExpressions.Regex.IsMatch(name,"^[a-zA-Z'.]{1,40}$"))
                        Response.Write("Valid name");
                    else
                        Response.Write("Invalid name");
                }
            }
            catch
            {
                
                SetFocus(txt_Name);
                txt_Name = null;
                Registration.Show("Password Should Match", this);
            }

            /*
            if (txt_Name.Text.Contains("0-9"))
            {
                // e.Handled = True;

                Registration.Show("Only Letters Allowed",this);
                //ClientMessageBox.Show("Hello World", this);
            }*/
        }
        //private object MessageBox;
        
        public static void Show(string message, Control owner)
        {
            Page page = (owner as Page) ?? owner.Page;
            if (page == null) return;

            page.ClientScript.RegisterStartupScript(owner.GetType(),
                "ShowMessage", string.Format("<script type='text/javascript'>alert('{0}')</script>",
                message));
        }
        /*
        private void Conf_Password_Validating(object sender, CancelEventArgs e)
        {
            if (txt_Password.Text == "" || Conf_Password.Text == "")
            {
               // MessageBox.Show("Please enter values");
                //txtpassword1.Focus();
                return;
            }
            if (txt_Password.Text != Conf_Password.Text)
            {
                Registration.Show("Password Should Match", this);
                //MessageBox.Show("Password not matching");
                txt_Password = null;
                Conf_Password = null;
                txt_Password.Focus();
                return;
            }
        }
        */

        protected void txt_Phone_TextChanged(object sender, EventArgs e)
        {
            //int a = Convert.ToInt32(txt_Phone.Text);
            //int b = Convert.ToInt32(txt_Phone.Text);
            //if () ;
        }
        protected void Login_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}