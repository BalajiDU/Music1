<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Music1.Login"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        .auto-style6 {
            position: relative;
            top: 20%;
            left: 65%;
            width: 30%;
            height: 50%;
            opacity: 0.9;
            background-color: aliceblue;
        }
    </style>
    <script type='text/javascript'>

        function UserName_TextChanged()
        {
            var name = document.getElementById('UserName').value;
            if (name.length == 0)
            {
                alert("Username Required");
               // return false;
            }
        }

    </script>
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/MyStyle.css" rel="stylesheet" />
    <link href="CSS/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="container" style="margin-top: 5%">
        <form runat="server" id="login__form" class="container">
            <div class="bgcol col-xs-5"  style="background-color: black; opacity: 0.8 ; margin-left:35%; margin-top:10%">
                <div class="row">
                    <div class="form-group col-xs-8 text-center">
                        <strong>
                            <asp:Label ID="Label7" runat="server" class="col-sm-offset-0" ForeColor="AliceBlue" Text="Login Form" Style="text-decoration-color: aquamarine; font-size: 40px; font-family: serif"></asp:Label>
                        </strong>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-8">
                        <asp:TextBox ID="UserName" class="form-control" runat="server" TextMode="Email" OnTextChanged="UserName_TextChanged" placeholder="Username"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" ErrorMessage="User Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-8">
                        <asp:TextBox ID="txt_Password" class="form-control" runat="server" TextMode="Password" placeholder="Password" Enabled="true"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_Password" ErrorMessage="PasswordRequired" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-8">
                        <asp:Button ID="Login_btn" class="btn btn-default col-sm-offset-1" Font-Size="Large" runat="server" OnClick="Login_btn_Click" Text="Sign in" />
                        <asp:Button ID="Reg_btn" class="btn btn-default col-sm-offset-2" Font-Size="Large" runat="server" OnClick="Reg_btn_Click" Text="Sign up" CausesValidation="False" />
                    </div>
                </div>
            </div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Music1ConnectionString %>" SelectCommand="SELECT * FROM [user1]"></asp:SqlDataSource>
        </form>
    </div>
</body>
</html>
