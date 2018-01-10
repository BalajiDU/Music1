<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Music.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            font-size: larger;
        }
        .auto-style10 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style11 {
            width: 900px;
        }
        .auto-style12 {
            font-size: medium;
        }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/MyStyle.css" rel="stylesheet" />
    <div style="margin-top: 1%" class="container">
        <div class="row col-xs-12" style="margin-top: 2%">

            <div class="row">
                <div>
                    <asp:Label ID="Info" runat="server" font-color="white" Style="text-decoration-color: white; text-align: center" Font-Size="X-Large" ForeColor="#CCCCCC" CssClass="auto-style9">
The application is developed by Balaji D U and Ashwini D students of 5th sem MCA, RNS Institute of Technology. The aim of Virtual Keyboard always is to provide a free online platform for anyone to use and enjoy. Our mission is to spread the joy of playing the piano to every corner of the globe, allowing it to become a form of expression and communication between cultures and countries, transversing language, space and time. Our vision is to keep improving the platform so that it can continue to be enjoyed by more people. More features and instruments will be added and improved like Tabala, and other string instruments like violin and based on the instrument tutorials will conducted online.
                    </asp:Label>
                </div>
                <div class="row" >
                    
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style11">
                                <span class="auto-style10">For more details contact:</span><br />
                            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><span class="auto-style12"><strong> </strong><a href="mailto:balaji.duk@gmail.com"><strong>balaji@gmail.com</strong></a><strong><br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><a href="mailto:ashwini@gmail.com"><strong>ashwini@gmail.com</strong></a></span>
                            </td>
                            <td>                       <p>

                                                       </p> <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/AB Pic.jpg" Width="200px" />
</td>
                        </tr>
                    </table>
                    
                </div>
            </div>
        </div>
    </div>

   
</asp:Content>
