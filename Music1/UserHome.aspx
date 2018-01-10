    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="Music1.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UserHome</title>
    <style type="text/css">
        .auto-style1 {
            width: auto;
            height: auto;
        }
        .auto-style3 {
            height: 150px;
            width: 20%;
        }
        .auto-style2 {
            height: 376px;
            text-align: left;
        }
        .auto-style7 {
            //width: 100%;
            width: 1510px;
            height: 680px;
        }
        .auto-style17 {
            width: 64px;
            height: 477px;
            text-align: center;
        }
        .auto-style27 {
            margin-right: 0px;
            
        }
        .auto-style18 {
            height: 261px;
            //ImageUrl: C:\Users\BALAJI D U\source\repos\Music1\Music1\Images\Button_Press.JPG;
        }
        .auto-style25 {
            width: 68px;
            height: 477px;
        }
        .auto-style38 {
            width: 64px;
            height: 477px;
        }
        .auto-style11 {
            width: 57px;
            height: 261px;
        }
        .auto-style13 {
            width: 60px;
            height: 477px;
        }
        .auto-style28 {
            width: 35px;
            height: 354px;
        }
        .auto-style23 {
            width: 25px;
            height: 354px;
        }
        .auto-style45 {
            width: 66px;
            height: 354px;
        }
        .text-align{
            text-align:end;
        }
        .auto-style48 {
            width: 32px;
            height: 354px;
        }
        .auto-style49 {
            width: 66px;
            height: 261px;
        }
        .auto-style68 {
            width: 66px;
        }
        .auto-style69 {
            text-align: right;
            width:15%;
        }
         .auto-style70 {
            text-align: center;
            width:63%;
        }
        .auto-style71 {
            font-size: xx-large;
            font-family: "rage Italic";
        }
        .auto-style72 {
            font-family: "Rage Italic";
        }
        .auto-style73 {
            width: 100%;
        }
        .auto-style74 {
            text-align: center;
            width: 84%;
            height:5px;
        }
        .auto-style75 {
            text-align: center;
            width: 20%;
        }
        </style>

    <script type="text/html">
        windowwindow.onload=window.history.forward(0);
    </script>
    <script type="text/javascript" src="Ajax/ajax.js"></script>
    <meta property="og:audio:path" content="C:\Users\BALAJI D U\source\repos\Music1\Music1\Resources\experiment6.wav" />
    <meta property="og:audio:type" content="audio/wav" />
    <link href="CSS/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <script runat="server">
        /* void ImageButton1_Click(object sender, EventArgs e)
        {
            Button clickedImageButton = (Button)sender;
            clickedImageButton.Text ="C:\\Users\\BALAJI D U\\source\\repos\\Music1\\Music1\\Images\\Button_Press.JPG";
            clickedImageButton.Enabled = true;
        }
        if(==true){
                ImageUrl ="C:\\Users\\BALAJI D U\\source\\repos\\Music1\\Music1\\Images\\Button_Press.JPG
            }*/
            //ImageButton = Request.Application 
    </script>
   
    <script type="text/html">
        function Button1_Click(){
            		xmlHttp = new XMLHttpRequest()
	xmlHttp.open("POST",url,false);
        	xmlHttp.send(null)

        }
    </script>


    <form id="form1" runat="server" width="auto">
        <div>
            <p>

            </p>
        </div>
        <div class="text-right">
            
            <asp:Button runat="server" OnClick="LogOut_btn_Click" Text="SignOut" class="btn btn-danger" Font-Size="Small" ID="LogOut_btn" style="margin-right:1%" align="rignt" />
        </div>
        <div>
            <p>

            </p>
        </div>

        <table border="5" class="auto-style1">

            <tr>
                <td class="auto-style69">
                    <asp:RadioButtonList ID="rb_select" runat="server" OnSelectedIndexChanged="rb_select_SelectedIndexChanged" RepeatDirection="Horizontal" Width="211px" AutoPostBack="True">
                        <asp:ListItem>Carnatic</asp:ListItem>
                        <asp:ListItem>Western</asp:ListItem>
                    </asp:RadioButtonList>

                    &nbsp;</td>
                <td class="auto-style70">
                    <em>
                        <asp:Label ID="SelectedName" runat="server" Height="45px" Width="1000px" CssClass="auto-style71"></asp:Label>
                    </em>
                </td>
                <td>
                    <asp:FileUpload ID="Script_Upload" runat="server" Width="259px" />
                    <asp:Button ID="Script_btn" class="btn btn-default" Font-Size="Small" runat="server" Text="Script" OnClick="Script_btn_Click" Width="106px" />
                    <asp:Button ID="EditScript" class="btn btn-default" Font-Size="Small" runat="server" OnClick="EditScript_Click" Text="Enable / Disable" Width="154px" />
                </td>

            </tr>
            <tr>
                <td class="auto-style2" rowspan="2" colspan="2">
                    <table cellpadding="0" cellspacing="0" width="80%" class="auto-style7">
                        <tr width="auto">
                            <td class="auto-style17" rowspan="2" aria-pressed="true" property="og:audio:type" onclick="Button1_Click">
                                <asp:Button ID="D2_A" runat="server" OnClick="Button3_Click" BackColor="White" BorderColor="White" BorderStyle="None" Height="690px" Width="61px" />

                            </td>
                            <td class="auto-style18" colspan="2">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="310px" ImageUrl="~/Images/Button.JPG" Width="66px" OnClick="ImageButton1_Click" />
                            </td>
                            <td class="auto-style25" rowspan="2" aria-pressed="true">
                                <asp:Button ID="btn" runat="server" OnClick="Button4_Click" Text="        " BackColor="White" BorderColor="White" Height="690px" Width="65px" />
                            </td>
                            <td class="auto-style38" rowspan="2">
                                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" BackColor="White" BorderColor="White" BorderStyle="None" Height="690px" Width="61px" />
                            </td>
                            <td class="auto-style11" colspan="2">
                                <asp:ImageButton ID="ImageButton2" runat="server" Height="310px" ImageUrl="~/Images/Button.JPG" Width="66px" OnClick="ImageButton2_Click1" />
                            </td>
                            <td class="auto-style38" rowspan="2">
                                <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" BackColor="White" BorderColor="White" BorderStyle="None" Height="690px" Width="61px" />
                            </td>
                            <td class="auto-style49">
                                <asp:ImageButton ID="ImageButton3" runat="server" Height="310px" ImageUrl="~/Images/Button.JPG" Width="66px" OnClick="ImageButton3_Click1" />
                            </td>
                            <td class="auto-style13" rowspan="2">
                                <asp:Button ID="Button24" runat="server" OnClick="Button11_Click" BackColor="White" BorderColor="White" Height="690px" Width="61px" />
                            </td>
                            <td class="auto-style13" rowspan="2">
                                <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" BackColor="White" BorderColor="White" BorderStyle="None" ForeColor="Black" Height="690px" CssClass="auto-style27" Width="61px" />
                            </td>
                            <td class="auto-style49">
                                <asp:ImageButton ID="ImageButton4" runat="server" Height="310px" ImageUrl="~/Images/Button.JPG" Width="66px" OnClick="ImageButton4_Click1" />
                            </td>
                            <td class="auto-style38" rowspan="2">
                                <asp:Button ID="Button16" runat="server" OnClick="Button16_Click" BackColor="White" BorderColor="White" BorderStyle="None" Height="690px" Width="61px" />
                            </td>
                            <td class="auto-style49">
                                <asp:ImageButton ID="ImageButton5" runat="server" Height="310px" ImageUrl="~/Images/Button.JPG" Width="66px" OnClick="ImageButton5_Click1" />
                            </td>
                            <td class="auto-style38" rowspan="2">
                                <asp:Button ID="Button19" runat="server" OnClick="Button19_Click" BackColor="White" BorderColor="White" BorderStyle="None" Height="690px" Width="61px" />
                            </td>
                            <td class="auto-style49">
                                <asp:ImageButton ID="ImageButton6" runat="server" Height="310px" ImageUrl="~/Images/Button.JPG" Width="66px" OnClick="ImageButton6_Click1" CssClass="auto-style72" />
                            </td>
                            <td class="auto-style25" rowspan="2">
                                <asp:Button ID="Button25" runat="server" OnClick="Button25_Click" BackColor="White" BorderColor="White" Height="690px" Width="65px" />
                            </td>
                            <td class="auto-style38" rowspan="2">
                                <asp:Button ID="Button23" runat="server" OnClick="Button23_Click" BackColor="White" BorderColor="White" BorderStyle="None" Height="690px" Style="width: 64px" Width="61px" />
                            </td>
                            <td class="auto-style49">
                                <asp:ImageButton ID="ImageButton7" runat="server" Height="310px" ImageUrl="~/Images/Button.JPG" Width="66px" OnClick="ImageButton7_Click1" />
                            </td>
                            <td class="auto-style38" rowspan="2">
                                <asp:Button ID="Button28" runat="server" OnClick="Button28_Click" BackColor="White" BorderColor="White" BorderStyle="None" Height="690px" Width="61px" />
                            </td>
                            <td class="auto-style49">
                                <asp:ImageButton ID="ImageButton8" runat="server" Height="308px" ImageUrl="~/Images/Button.JPG" Width="66px" OnClick="ImageButton8_Click1" />
                            </td>
                            <td class="auto-style25" rowspan="2">
                                <asp:Button ID="Button31" runat="server" OnClick="Button31_Click" BackColor="White" BorderColor="White" Height="690px" Width="65px" />
                            </td>
                            <td class="auto-style38" rowspan="2">
                                <asp:Button ID="Button32" runat="server" OnClick="Button32_Click" BackColor="White" BorderColor="White" BorderStyle="None" Height="690px" Style="width: 64px" />
                            </td>
                            <td class="auto-style68">
                                <asp:ImageButton ID="ImageButton9" runat="server" Height="308px" ImageUrl="~/Images/Button.JPG" Width="66px" OnClick="ImageButton9_Click1" />
                            </td>
                            <td class="auto-style38" rowspan="2">
                                <asp:Button ID="Button36" runat="server" OnClick="Button36_Click" BackColor="White" BorderColor="White" Height="690px" Width="61px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28" aria-pressed="true">
                                <asp:Button ID="Button3" runat="server" BackColor="White" Height="360px" OnClick="Button3_Click" CssClass="auto-style27" Width="32px" OnClientClick="A1" />
                            </td>
                            <td class="auto-style48">
                                <asp:Button ID="Button4" runat="server" BackColor="White" BorderStyle="None" Height="360px" Width="30px" OnClick="Button4_Click" />
                            </td>
                            <td class="auto-style48">
                                <asp:Button ID="Button7" runat="server" BackColor="White" Height="360px" OnClick="Button7_Click" CssClass="auto-style27" Width="32px" />
                            </td>
                            <td class="auto-style23">
                                <asp:Button ID="Button8" runat="server" BackColor="White" BorderStyle="None" Height="360px" Width="30px" OnClick="Button8_Click" />
                            </td>
                            <td class="auto-style45">
                                <asp:Button ID="Button10" runat="server" BackColor="White" Height="360px" OnClick="Button10_Click" CssClass="auto-style27" Width="32px" />
                                <asp:Button ID="Button11" runat="server" BackColor="White" BorderStyle="None" Height="360px" Width="30px" OnClick="Button11_Click" />
                            </td>
                            <td class="auto-style45">
                                <asp:Button ID="Button14" runat="server" BackColor="White" Height="360px" OnClick="Button14_Click" CssClass="auto-style27" Width="32px" />
                                <asp:Button ID="Button15" runat="server" BackColor="White" BorderStyle="None" Height="360px" Width="30px" OnClick="Button15_Click1" />
                            </td>
                            <td class="auto-style45">
                                <asp:Button ID="Button17" runat="server" BackColor="White" Height="360px" OnClick="Button17_Click" CssClass="auto-style27" Width="32px" />
                                <asp:Button ID="Button18" runat="server" BackColor="White" BorderStyle="None" Height="360px" Width="30px" OnClick="Button18_Click1" />
                            </td>
                            <td class="auto-style45">
                                <asp:Button ID="Button20" runat="server" BackColor="White" Height="360px" OnClick="Button20_Click" CssClass="auto-style27" Width="32px" />
                                <asp:Button ID="Button21" runat="server" BackColor="White" BorderStyle="None" Height="360px" Width="30px" OnClick="Button21_Click1" />
                            </td>
                            <td class="auto-style45">
                                <asp:Button ID="Button26" runat="server" BackColor="White" Height="360px" OnClick="Button26_Click" CssClass="auto-style27" Width="32px" />
                                <asp:Button ID="Button27" runat="server" BackColor="White" BorderStyle="None" Height="360px" Width="30px" OnClick="Button27_Click1" />
                            </td>
                            <td class="auto-style45">
                                <asp:Button ID="Button29" runat="server" BackColor="White" Height="360px" OnClick="Button29_Click" CssClass="auto-style27" Width="32px" />
                                <asp:Button ID="Button30" runat="server" BackColor="White" BorderStyle="None" Height="360px" Width="30px" OnClick="Button30_Click1" />
                            </td>
                            <td class="auto-style68">
                                <asp:Button ID="Button34" runat="server" BackColor="White" Height="360px" OnClick="Button34_Click" CssClass="auto-style27" Width="32px" />
                                <asp:Button ID="Button37" runat="server" BackColor="White" BorderStyle="None" Height="360px" Width="30px" OnClick="Button37_Click" />
                            </td>
                        </tr>
                    </table>
                </td>

            </tr>
            <tr>
                <td class="auto-style3" width="20%" id="Script">
                    <div>
                        <asp:TextBox ID="DisplayScript" runat="server" TextMode="MultiLine" Height="685px" Width="100%" />
                    </div>
                </td>
            </tr>
        </table>
        <div>

            <table class="auto-style73">
                <tr>
                    <td class="auto-style74">
                        <asp:Label ID="Label1" runat="server" Text="A2" Width="94px" BorderColor="Black"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text="B2" Width="98px" BorderColor="Black"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text="C3" Width="100px"></asp:Label>
                        <asp:Label ID="Label4" runat="server" Text="D3" Width="120px"></asp:Label>
                        <asp:Label ID="Label5" runat="server" Text="E3" Width="97px"></asp:Label>
                        <asp:Label ID="Label6" runat="server" Text="F3" Width="92px"></asp:Label>
                        <asp:Label ID="Label7" runat="server" Text="G3" Width="131px"></asp:Label>
                        <asp:Label ID="Label8" runat="server" Text="A3" Width="129px"></asp:Label>
                        <asp:Label ID="Label9" runat="server" Text="B3" Width="102px"></asp:Label>
                        <asp:Label ID="Label10" runat="server" Text="C4" Width="99px"></asp:Label>
                        <asp:Label ID="Label11" runat="server" Text="D4" Width="131px"></asp:Label>
                        <asp:Label ID="Label12" runat="server" Text="E4" Width="104px"></asp:Label>
                        <asp:Label ID="Label13" runat="server" Text="F4" Width="96px"></asp:Label>
                        <asp:Label ID="Label14" runat="server" Text="G4" Width="102px"></asp:Label>
                    </td>
                    <td class="auto-style75">&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>