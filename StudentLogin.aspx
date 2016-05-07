<%@ Page Language="VB" AutoEventWireup="false" CodeFile="StudentLogin.aspx.vb" Inherits="StudentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Student Login</h1>
        <p>
            &nbsp;</p>
        <p>
            Enter Username:<asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>
        </p>
        <p>
            Enter Password:
            <asp:TextBox ID="TextBoxPassword" runat="server" Height="22px" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionStringLogin %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerUsername] = ? AND (([CustomerPassword] = ?) OR ([CustomerPassword] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Customer] ([CustomerUsername], [CustomerPassword]) VALUES (?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionStringLogin.ProviderName %>" SelectCommand="SELECT * FROM [Customer] WHERE (([CustomerUsername] = ?) AND ([CustomerPassword] = ?))" UpdateCommand="UPDATE [Customer] SET [CustomerPassword] = ? WHERE [CustomerUsername] = ? AND (([CustomerPassword] = ?) OR ([CustomerPassword] IS NULL AND ? IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_CustomerUsername" Type="String" />
                    <asp:Parameter Name="original_CustomerPassword" Type="String" />
                    <asp:Parameter Name="original_CustomerPassword" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerUsername" Type="String" />
                    <asp:Parameter Name="CustomerPassword" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBoxUsername" Name="CustomerUsername" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxPassword" Name="CustomerPassword" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustomerPassword" Type="String" />
                    <asp:Parameter Name="original_CustomerUsername" Type="String" />
                    <asp:Parameter Name="original_CustomerPassword" Type="String" />
                    <asp:Parameter Name="original_CustomerPassword" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:Button ID="BtnStdntLogin" runat="server" PostBackUrl="~/StudentLogin.aspx" Text="Log In" />
        </p>
    
    </div>
    </form>
</body>
</html>
