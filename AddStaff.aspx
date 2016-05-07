<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AddStaff.aspx.vb" Inherits="AddStaff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Add Staff </h1>
        <p>
            Staff ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBoxStaffID" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxStaffID" ErrorMessage="Field required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxStaffID" ErrorMessage="Staff ID needs to be 6 digits" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
        </p>
        <p>
            &nbsp;</p>
        <p>
            First Name:
            <asp:TextBox ID="TextBoxStaffFNAme" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxStaffFNAme" ErrorMessage="Field required"></asp:RequiredFieldValidator>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Last Name:
            <asp:TextBox ID="TextBoxStaffLName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxStaffLName" ErrorMessage="Field required"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="ButtonAddStaff" runat="server" Text="Add Staff" />
&nbsp;&nbsp;&nbsp;
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:SqlDataSource ID="SqlAddStaff" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Staff] WHERE [SN] = ? AND [StaffID] = ? AND [StaffFName] = ? AND (([StaffLName] = ?) OR ([StaffLName] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Staff] ( [StaffID], [StaffFName], [StaffLName]) VALUES ( ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Staff]" UpdateCommand="UPDATE [Staff] SET [StaffID] = ?, [StaffFName] = ?, [StaffLName] = ? WHERE [SN] = ? AND [StaffID] = ? AND [StaffFName] = ? AND (([StaffLName] = ?) OR ([StaffLName] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_SN" Type="Int32" />
                <asp:Parameter Name="original_StaffID" Type="Int32" />
                <asp:Parameter Name="original_StaffFName" Type="String" />
                <asp:Parameter Name="original_StaffLName" Type="String" />
                <asp:Parameter Name="original_StaffLName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBoxStaffID" Name="StaffID" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="TextBoxStaffFNAme" Name="StaffFName" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBoxStaffLName" Name="StaffLName" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="StaffID" Type="Int32" />
                <asp:Parameter Name="StaffFName" Type="String" />
                <asp:Parameter Name="StaffLName" Type="String" />
                <asp:Parameter Name="original_SN" Type="Int32" />
                <asp:Parameter Name="original_StaffID" Type="Int32" />
                <asp:Parameter Name="original_StaffFName" Type="String" />
                <asp:Parameter Name="original_StaffLName" Type="String" />
                <asp:Parameter Name="original_StaffLName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <p>
            &nbsp;</p>
    
    </div>
    </form>
</body>
</html>
