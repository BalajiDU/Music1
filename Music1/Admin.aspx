<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Music.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome To Admin</title>
    <link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/MyStyle.css" rel="stylesheet" />
</head>
<body>
    <div  style="margin-top: 5%">
        <form id="form1" runat="server" class="form-horizontal">
            <div class="row col-xs-12">
                <div class="row col-xs-6">
                    <asp:GridView ID="usrFeedback_Display" runat="server" class="col-sm-offset-2" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Visible="False" Height="113px" OnSelectedIndexChanged="Selected_delete_Click" Width="597px" ForeColor="White">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Feedback" HeaderText="Feedback" SortExpression="Feedback" />
                        </Columns>
                        <HeaderStyle BackColor="#999999" ForeColor="Black" />
                    </asp:GridView>
                    <asp:GridView ID="Grid_Display" runat="server" class="col-sm-offset-2" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Height="139px" OnSelectedIndexChanged="Selected_delete_Click" Width="597px" ForeColor="White">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        </Columns>
                        <HeaderStyle BackColor="#999999" ForeColor="Black" />
                    </asp:GridView>
                </div>

                <div class="col-xs-6">
                    <div class="row">
                        <div class="row form-group col-xs-12" style="text-align: right">
                            <asp:Button ID="usrlist_btn" class="btn btn-default col-sm-offset-1" Font-Size="Medium" runat="server" OnClick="usrlist_btn_Click" Text="User List" />
                            <asp:Button ID="usrfeedback_btn" class="btn btn-default col-sm-offset-1" Font-Size="Medium" runat="server" OnClick="usrfeedback_Click" Text="User Feedback" />
                            <asp:Button runat="server" OnClick="LogOut_btn_Click" Text="SignOut" class="btn btn-default col-sm-offset-1" Font-Size="Medium" ID="LogOut_btn" style="margin-right:1%" align="rignt" />
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Music1ConnectionString %>" SelectCommand="SELECT * FROM [Feedback]" DeleteCommand="DELETE FROM [Feedback] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Feedback] ([Name], [Email], [Feedback]) VALUES (@Name, @Email, @Feedback)" UpdateCommand="UPDATE [Feedback] SET [Name] = @Name, [Email] = @Email, [Feedback] = @Feedback WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Feedback" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Feedback" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Music1ConnectionString %>" SelectCommand="SELECT [Id], [Name], [Email], [Gender], [Phone] FROM [user1]" DeleteCommand="DELETE FROM [user1] WHERE [Id] = @Id" InsertCommand="INSERT INTO [user1] ([Name], [Email], [Gender], [Phone]) VALUES (@Name, @Email, @Gender, @Phone)" UpdateCommand="UPDATE [user1] SET [Name] = @Name, [Email] = @Email, [Gender] = @Gender, [Phone] = @Phone WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Phone" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Phone" Type="Decimal" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</body>
</html>
