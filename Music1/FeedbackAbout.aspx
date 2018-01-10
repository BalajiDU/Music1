<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="FeedbackAbout.aspx.cs" Inherits="Music.FeedbackAbout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            color: #FFFFFF;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/MyStyle.css" rel="stylesheet" />
    <div style="margin-top: 1%" class="form-horizontal">
        <div class="row col-xs-12" style="margin-top: 2%">
            <div>
                <div class="row col-xs-6">
                    <div class="auto-style6 auto-style13">
                        <asp:Label ID="Info" runat="server" font-color="white" Style="text-decoration-color: white; text-align:justify" Font-Size="Large" ForeColor="#CCCCCC" Width="600px">
The application is developed by Balaji D U and Ashwini D students of 5th sem MCA, RNS Institute of Technology. The aim of Virtual Keyboard always is to provide a free online platform for anyone to use and enjoy. Our mission is to spread the joy of playing the piano to every corner of the globe, allowing it to become a form of expression and communication between cultures and countries, transversing language, space and time. Our vision is to keep improving the platform so that it can continue to be enjoyed by more people. More features and instruments will be added and improved like Tabala, and other string instruments like violin and based on the instrument tutorials will conducted online.

                        </asp:Label>
                        <table class="auto-style1">
                        <tr>
                            <td class="auto-style11">
                                <span class="auto-style7">For more details contact:</span><br />
                            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><span class="auto-style8"><strong> </strong><a href="mailto:balaji.duk@gmail.com"><strong>balaji@gmail.com</strong></a><strong><br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><a href="mailto:ashwini@gmail.com"><strong>ashwini@gmail.com</strong></a></span>
                            </td>
                            <td>                       <p>

                                                       </p> <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/AB Pic.jpg" Width="200px" />
</td>
                        </tr>
                    </table>
                    </div>
                    <div style="margin-left:65%" class="col-xs-12">
                        <div class="col-xs-6 col-sm-offset-7">
                            <div class="row">
                                <div class="form-group ">
                                    <div class="col-sm-offset-0">
                                        <asp:Label ID="Label1" runat="server" font-color="white" Style="text-decoration-color: white" Font-Size="Xx-Large" ForeColor="#CCCCCC">
                        Provide Your Valuable Feedback
                                        </asp:Label>
                                    </div>
                                    <div class="form-group ">
                                        <div class="col-xs-12">
                                            
                                            <asp:TextBox ID="Name_txt" Class="form-control" placeholder="Enter Your Name" runat="server" ForeColor="Black"></asp:TextBox>
                                            
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <div class="col-xs-12">
                                            <asp:TextBox ID="Email_txt" Class="form-control" placeholder="Enter Your Email" runat="server" ForeColor="Black"></asp:TextBox>
                                            
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <div class="col-xs-12">
                                            <asp:TextBox ID="Feedback_txt" Class="form-control" placeholder="Enter Your Feedback" runat="server" ForeColor="Black" Height="80px" TextMode="MultiLine"></asp:TextBox>
                                           
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-10 col-sm-offset-4">
                                            <asp:Button ID="Submit_btn" class="btn btn-default" Font-Size="Large" runat="server" Text="Submit" OnClick="Submit_btn_Click" />
                                            <asp:Button ID="Home_btn" Class="btn btn-default col-sm-offset-1" Font-Size="Large" runat="server" Text="Home" OnClick="Home_btn_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Music1ConnectionString %>" SelectCommand="SELECT [Name], [Email], [Feedback] FROM [Feedback]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
