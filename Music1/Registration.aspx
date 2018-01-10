<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Music1.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <style type="text/css" aria-label="center">
        .auto-style13 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 33.33333333%;
            text-align: justify;
            padding-left: 15px;
            padding-right: 15px;
        }
       
    </style>
      
    <link href="CSS/MyStyle.css" rel="stylesheet" />
    <link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <br />
    <div class="container" style="margin-top: 5%">
        <form id="form1" runat="server" aria-multiselectable="True" class="form-horizontal">
            <div class="row topmar">
                <div class="auto-style13">
                    <asp:Label ID="Info" runat="server" font-color="white" Style="text-decoration-color: white" Font-Size="X-Large" ForeColor="#CCCCCC">
VIRTUAL KEYBOARD empowers the user to experience the piano on any system online.
Pianos are large instruments that cannot be carried everywhere. Even electric pianos need to be carried in a large bag and are prone to damage in travelling. So here we propose a portable virtual piano that can be operated anywhere with internet connection and a computer system
                    </asp:Label>
                </div>
                <div>
                    <div class="col-xs-8 bgcol" style="background-color: black; opacity: 0.8">
                        <div class="row">
                            <div class="form-group col-xs-12 text-center">
                                <strong>
                                    <asp:Label ID="Label7" runat="server" class="col-sm-offset-0" ForeColor="AliceBlue" Text="Registration Form" Style="text-decoration-color: aquamarine; font-size: 40px; font-family: serif"></asp:Label>
                                </strong>
                            </div>
                        </div>

                        <div class="form-group ">
                            <strong>
                                <asp:Label ID="Label1" runat="server" class="control-label col-xs-3" ForeColor="White" Font-Size="X-Large" Text="Name"></asp:Label>
                            </strong>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txt_Name" Class="form-control" placeholder="Enter Your Name" runat="server" ForeColor="Black" OnTextChanged="txt_Name_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_Name" ErrorMessage="Enter Name" BackColor="White" ForeColor="Red"></asp:RequiredFieldValidator>
                                <!-- <asp:RegularExpressionValidator runat="server" Display="Dynamic" ControlToValidate="txt_Name" ValidationExpression="[A-Z a-z]" ErrorMessage="Enter Valid Name" targetID="RequiredFieldValidator1" ForeColor="Red" /> -->
                            </div>
                        </div>

                        <div class="form-group ">
                            <strong>
                                <asp:Label ID="Label2" runat="server" class="control-label col-xs-3 text-info" ForeColor="White" Font-Size="X-Large" Text="E-MAil"></asp:Label>
                            </strong>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txt_Email" Class="form-control" placeholder="Enter Your Email" runat="server" TextMode="Email" ForeColor="Black"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_Email" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group ">
                            <strong>
                                <asp:Label ID="Label3" class="control-label col-xs-3" runat="server" ForeColor="White" Font-Size="X-Large" Text="Gender"></asp:Label>
                            </strong>
                            <div class="col-xs-6">
                                <asp:RadioButtonList ID="rb_Gender" class="radio radio-inline" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Font-Size="Larger" ForeColor="white">
                                    <asp:ListItem Value="Male"  class="radio radio-inline" Selected="True" >Male</asp:ListItem>
                                    <asp:ListItem Value="Female" class="radio radio-inline">Female</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <div class="form-group ">
                            <strong>
                                <asp:Label ID="Label4" runat="server" class="control-label col-xs-3" ForeColor="White" Font-Size="X-Large" Text="Password"></asp:Label>
                            </strong>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txt_Password" Class="form-control" runat="server" placeholder="Enter Strong Password" TextMode="Password" ForeColor="Black"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PwdValidator" runat="server" ControlToValidate="txt_Password" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group ">
                            <strong>
                                <asp:Label ID="Label6" runat="server" class="control-label col-xs-3" ForeColor="White" Font-Size="X-Large" Text="Mobile"></asp:Label>
                            </strong>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txt_Phone" runat="server" placeholder="Enter Your Mobile Number" Class="form-control" TextMode="Phone" ForeColor="Black" MaxLength="10" OnTextChanged="txt_Phone_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" Display="Dynamic" ControlToValidate="txt_Phone" ErrorMessage="Enter Mobile Number" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_Phone" ErrorMessage="Enter Phone Number" ForeColor="Red" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>

                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10 col-sm-offset-4">
                                <asp:Button ID="Signup_btn" class="btn btn-default" Font-Size="Large" runat="server" Text="Sign Up" OnClick="Signup_btn_Click" />
                                <asp:Button ID="Login_btn" Class="btn btn-default col-sm-offset-1" Font-Size="Large" runat="server" Text="Sign In" OnClick="Login_btn_Click" />
                            </div>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MusicConnectionString %>" SelectCommand="SELECT [Name], [Email], [Gender], [Password], [Phone] FROM [User]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Music1ConnectionString %>" SelectCommand="SELECT * FROM [user1]"></asp:SqlDataSource>

                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
