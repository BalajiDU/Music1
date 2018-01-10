using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Media;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;
using System.Text;

namespace Music1
{
    //SqlConnection Con = new SqlConnection("Data Source=BALAJI-DU;Initial Catalog=Music;Integrated Security=True");
    //SqlCommand sqlCommand = null;
    //SqlDataReader dr = null;



    public partial class UserHome : System.Web.UI.Page
    {
        System.Media.SoundPlayer a1 = new SoundPlayer();
        

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void C_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            KeyPress("D2_A");
        }
        protected void KeyPress(string note)

        { 
            String loc = "E:\\RNSIT\\5th Sem\\Music1\\Music1\\KeyboardTracks\\" + note+".wav";
            a1.SoundLocation=loc;
            a1.Play();
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           KeyPress("D2_A");
        }
        
        protected void Button5_Click(object sender, EventArgs e)
        {
            /* Con.open();
             SqlCommand command = Con.CreateCommand();
             command.CommandType = CommandType.Text;
             cmd.CommandText = "SELECT Audio FROM Music Wehere Classical=D1 ";
             cmd.ExecuteNonQuery();
             DataTable dt = new DataTable();
             SqlDataAdapter sa = new SqlDataAdapter(cmd);
             sa.Fill(dt);
             conn.close();
             */

            KeyPress("N2_BL");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            KeyPress("N1_BBL");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            KeyPress("N2_BL");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            KeyPress("S_C");
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            KeyPress("S_C");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            KeyPress("R1_DB");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            KeyPress("R2_D");
        }
        protected void Button9_Click(object sender, EventArgs e)
        {
            KeyPress("R2_D");
        }
        protected void Button10_Click(object sender, EventArgs e)
        {
            KeyPress("R2_D");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            KeyPress("G1_EB");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            KeyPress("G2_E");
        }
        protected void Button24_Click(object sender, EventArgs e)
        {
            KeyPress("G2_E");
        }
        protected void Button13_Click(object sender, EventArgs e)
        {
            KeyPress("M1_F");
        }
        protected void Button14_Click(object sender, EventArgs e)
        {
            KeyPress("M1_F");
        }

       /* protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            KeyPress("M2_GB");
        }
        */

        protected void Button15_Click(object sender, EventArgs e)
        {
            KeyPress("P_G");
        }
        protected void Button16_Click(object sender, EventArgs e)
        {
            KeyPress("P_G");
        }
        protected void Button17_Click(object sender, EventArgs e)
        {
            KeyPress("P_G");
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            KeyPress("D2_A");
        }
        protected void Button19_Click(object sender, EventArgs e)
        {
            KeyPress("D2_A");
        }
        protected void Button20_Click(object sender, EventArgs e)
        {
            KeyPress("D2_A");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            KeyPress("N1_BB");
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            KeyPress("N2_B");
        }
        protected void Button25_Click(object sender, EventArgs e)
        {
            KeyPress("N2_B");
        }
        protected void Button23_Click(object sender, EventArgs e)
        {
            KeyPress("S_CH");
        }
        protected void Button26_Click(object sender, EventArgs e)
        {
            KeyPress("S_CH");
        }
        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            KeyPress("R1_DBH");
        }
        protected void Button27_Click(object sender, EventArgs e)
        {
            KeyPress("R2_DH");
        }
        protected void Button28_Click(object sender, EventArgs e)
        {
            KeyPress("R2_DH");
        }
        protected void Button29_Click(object sender, EventArgs e)
        {
            KeyPress("R2_DH");
        }
        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            KeyPress("G1_EBH");
        }
        protected void Button30_Click(object sender, EventArgs e)
        {
            KeyPress("G2_EH");
        }
        protected void Button31_Click(object sender, EventArgs e)
        {
            KeyPress("G2_EH");
        }
        protected void Button32_Click(object sender, EventArgs e)
        {
            KeyPress("M1_FH");
        }
        protected void Button34_Click(object sender, EventArgs e)
        {
            KeyPress("M1_FH");
        }
        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            KeyPress("M2_GBH");
        }
        protected void Button36_Click(object sender, EventArgs e)
        {
            KeyPress("P_GH");
        }
        protected void Button37_Click(object sender, EventArgs e)
        {
            KeyPress("P_GH");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            KeyPress("M2_GB");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            KeyPress("D1_AB");
        }

        protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
        {
            ImageButton2_Click(sender,e);
        }

        protected void ImageButton3_Click1(object sender, ImageClickEventArgs e)
        {
            ImageButton3_Click(sender, e);
        }
        protected void ImageButton4_Click1(object sender, ImageClickEventArgs e)
        {
            ImageButton4_Click(sender, e);
        }

        protected void ImageButton5_Click1(object sender, ImageClickEventArgs e)
        {
            ImageButton5_Click(sender, e);
        }

        protected void ImageButton6_Click1(object sender, ImageClickEventArgs e)
        {
            ImageButton6_Click(sender, e);
        }

        protected void ImageButton7_Click1(object sender, ImageClickEventArgs e)
        {
            ImageButton7_Click(sender, e);
        }

        protected void ImageButton8_Click1(object sender, ImageClickEventArgs e)
        {
            ImageButton8_Click(sender, e);
        }

        protected void ImageButton9_Click1(object sender, ImageClickEventArgs e)
        {
            ImageButton9_Click(sender, e);
        }

        protected void Button8_Click1(object sender, EventArgs e)
        {
            Button8_Click(sender, e);
        }

        protected void Button11_Click1(object sender, EventArgs e)
        {
            Button11_Click(sender, e);
        }

        protected void Button15_Click1(object sender, EventArgs e)
        {
            Button15_Click(sender, e);
        }

        protected void Button18_Click1(object sender, EventArgs e)
        {
            Button18_Click(sender, e);
        }

        protected void Button21_Click1(object sender, EventArgs e)
        {
            Button21_Click(sender, e);
        }

        protected void Button27_Click1(object sender, EventArgs e)
        {
            Button27_Click(sender, e);
        }

        protected void Button30_Click1(object sender, EventArgs e)
        {
            Button30_Click(sender, e);
        }
        
       

        protected void Script_btn_Click(object sender, EventArgs e)
        {
            if (Script_Upload.HasFile)
            {
                string ext = Path.GetExtension(Script_Upload.FileName);
               
                if (ext == ".txt")
                {
                    try
                    {
                        
                        string filename = Path.GetFileName(Script_Upload.PostedFile.FileName);
                        string UserScript = Server.MapPath(@".\UserScript\");
                        if (!Directory.Exists(UserScript))
                            Directory.CreateDirectory(UserScript);
                        string serverpath = UserScript + filename;
                        Script_Upload.SaveAs(serverpath);
                        string path = Script_Upload.PostedFile.FileName;
                        string ScriptText = System.IO.File.ReadAllText(path);
                        DisplayScript.Text = ScriptText;
                    }
                    catch(Exception ex)
                    {
                        UserHome.Show("File cant be upload"+ex.Message, this);
                    }

                }
                else
                {
                    UserHome.Show("Select Only text File", this);
                }
            }
            else
            {
               
                UserHome.Show("Select The File", this);
            }
            //Script_Upload.SaveAs(Server.MapPath("UserScript\\"+FileUpload+""));
        }
        public static void Show(string message, Control owner)
        {
            Page page = (owner as Page) ?? owner.Page;
            if (page == null) return;

            page.ClientScript.RegisterStartupScript(owner.GetType(),
                "ShowMessage", string.Format("<script type='text/javascript'>alert('{0}')</script>",
                message));
        }

        protected void EditScript_Click(object sender, EventArgs e)
        {
            if (DisplayScript.Enabled == true)
                DisplayScript.Enabled = false;
            else
                DisplayScript.Enabled = true;
        }

        protected void rb_select_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if(rb_select.SelectedValue[Carnatic])
            SelectedName.Text = rb_select.SelectedValue;

            if(rb_select.SelectedItem.Text == "Carnatic")
            {
                Label1.Text = "D2";
                Label2.Text = "N2";
                Label3.Text = "S";
                Label4.Text = "R2";
                Label5.Text = "G2";
                Label6.Text = "M2";
                Label7.Text = "P";
                Label8.Text = "D2";
                Label9.Text = "N2";
                Label10.Text = "S";
                Label11.Text = "R2";
                Label12.Text = "G2";
                Label13.Text = "M1";
                Label14.Text = "P";
            }
            else
            {
                Label1.Text = "A2";
                Label2.Text = "B2";
                Label3.Text = "C3";
                Label4.Text = "D3";
                Label5.Text = "E3";
                Label6.Text = "F3";
                Label7.Text = "G3";
                Label8.Text = "A3";
                Label9.Text = "B3";
                Label10.Text = "C4";
                Label11.Text = "D4";
                Label12.Text = "E4";
                Label13.Text = "F4";
                Label14.Text = "G4";
            }


        }
        protected void LogOut_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("FeedbackAbout.aspx");
        }
    }
}