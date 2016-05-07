<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AddStudent.aspx.vb" Inherits="AddStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Add Student Record:</h1>
        <p>
            &nbsp;Student ID:&nbsp;
            <asp:TextBox ID="TextBoxStudentID" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxStudentID" ErrorMessage="Field required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxStudentID" ErrorMessage="Student ID needs to be 8 digits" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
        </p>
        <p>
            First name:&nbsp;
            <asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxFirstName" ErrorMessage="Field required"></asp:RequiredFieldValidator>
        </p>
        <p>
            Last Name:
            <asp:TextBox ID="TextBoxLName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxLName" ErrorMessage="Field required"></asp:RequiredFieldValidator>
        </p>
        <p>
            Email:&nbsp;
            <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Field required"></asp:RequiredFieldValidator>
        </p>
        <p>
            Date Of Birth:&nbsp;
            <asp:TextBox ID="TextBoxDOB" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxDOB" ErrorMessage="Field required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxDOB" ErrorMessage="Date needs to be in format mm-dd-yyyy" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$"></asp:RegularExpressionValidator>
        </p>
        <h2>Local:</h2>
        <p>
            Home Phone: <asp:TextBox ID="TextBoxLHPhn" runat="server"></asp:TextBox>
        </p>
        <p>
            Mobile Phone: <asp:TextBox ID="TextBoxLMphone" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxLMphone" ErrorMessage="Field required"></asp:RequiredFieldValidator>
        </p>
        <p>
            Address Line 1:
            <asp:TextBox ID="TextBoxLAddrLn1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxLAddrLn1" ErrorMessage="Field required"></asp:RequiredFieldValidator>
        </p>
        <p>
            Address Line 2:
            <asp:TextBox ID="TextBoxAddrLn2" runat="server"></asp:TextBox>
        </p>
        <p>
            State:
            <asp:TextBox ID="TextBoxLState" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxLState" ErrorMessage="Field required"></asp:RequiredFieldValidator>
        </p>
        <p>
            Post Code:&nbsp;
            <asp:TextBox ID="TextBoxLPCode" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxLPCode" ErrorMessage="Field required"></asp:RequiredFieldValidator>
        </p>
        <h2>Overseas (If applicable):</h2>
        <p>
            Home Phone:</p>
Home Phone:&nbsp;
            <asp:TextBox ID="TextBoxOHPhn" runat="server"></asp:TextBox>
        <p>
            Mobile Phone:
            <asp:TextBox ID="TextBoxOMbPhn" runat="server"></asp:TextBox>
        </p>
        <p>
            Address Line 1:
            <asp:TextBox ID="TextBoxOAdLn1" runat="server"></asp:TextBox>
        </p>
        <p>
            Address Line 2:
            <asp:TextBox ID="TextBoxOAdLn2" runat="server"></asp:TextBox>
        </p>
        <p>
            Address Line 3:
            <asp:TextBox ID="TextBoxOAdLn3" runat="server"></asp:TextBox>
        </p>
        <p>
            City:
            <asp:TextBox ID="TextBoxOCity" runat="server"></asp:TextBox>
        </p>
        <p>
            Country:
            <asp:TextBox ID="TextBoxOCountry" runat="server"></asp:TextBox>
        </p>
        <p>
            Ares Code:&nbsp;
            <asp:TextBox ID="TextBoxOAreaCode" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="ButtonAddStudent" runat="server" Text="Add Student" />
&nbsp;</p>
        <p>
            <asp:SqlDataSource ID="SqlAddStudent" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Students] WHERE [SN] = ? AND (([StudentID] = ?) OR ([StudentID] IS NULL AND ? IS NULL)) AND [StudentFName] = ? AND [StudentLName] = ? AND [StudentEmail] = ? AND (([StudentHomePhone_Local] = ?) OR ([StudentHomePhone_Local] IS NULL AND ? IS NULL)) AND (([StudentMobilePhone_Local] = ?) OR ([StudentMobilePhone_Local] IS NULL AND ? IS NULL)) AND (([StudentAddressLine1_Local] = ?) OR ([StudentAddressLine1_Local] IS NULL AND ? IS NULL)) AND (([StudentAddressLine2_Local] = ?) OR ([StudentAddressLine2_Local] IS NULL AND ? IS NULL)) AND (([StudentState_Local] = ?) OR ([StudentState_Local] IS NULL AND ? IS NULL)) AND (([StudentPostCode_Local] = ?) OR ([StudentPostCode_Local] IS NULL AND ? IS NULL)) AND (([StudentHomePhone_Home] = ?) OR ([StudentHomePhone_Home] IS NULL AND ? IS NULL)) AND (([StudentMobilePhone_Home] = ?) OR ([StudentMobilePhone_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressLine1_Home] = ?) OR ([StudentAddressLine1_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressLine2_Home] = ?) OR ([StudentAddressLine2_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressLine3_Home] = ?) OR ([StudentAddressLine3_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressCity_Home] = ?) OR ([StudentAddressCity_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressCountry] = ?) OR ([StudentAddressCountry] IS NULL AND ? IS NULL)) AND (([StudentAddressAreaCode] = ?) OR ([StudentAddressAreaCode] IS NULL AND ? IS NULL)) AND (([DateOfBirth] = ?) OR ([DateOfBirth] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Students] ( [StudentID], [StudentFName], [StudentLName], [StudentEmail], [StudentHomePhone_Local], [StudentMobilePhone_Local], [StudentAddressLine1_Local], [StudentAddressLine2_Local], [StudentState_Local], [StudentPostCode_Local], [StudentHomePhone_Home], [StudentMobilePhone_Home], [StudentAddressLine1_Home], [StudentAddressLine2_Home], [StudentAddressLine3_Home], [StudentAddressCity_Home], [StudentAddressCountry], [StudentAddressAreaCode], [DateOfBirth]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Students]" UpdateCommand="UPDATE [Students] SET [StudentID] = ?, [StudentFName] = ?, [StudentLName] = ?, [StudentEmail] = ?, [StudentHomePhone_Local] = ?, [StudentMobilePhone_Local] = ?, [StudentAddressLine1_Local] = ?, [StudentAddressLine2_Local] = ?, [StudentState_Local] = ?, [StudentPostCode_Local] = ?, [StudentHomePhone_Home] = ?, [StudentMobilePhone_Home] = ?, [StudentAddressLine1_Home] = ?, [StudentAddressLine2_Home] = ?, [StudentAddressLine3_Home] = ?, [StudentAddressCity_Home] = ?, [StudentAddressCountry] = ?, [StudentAddressAreaCode] = ?, [DateOfBirth] = ? WHERE [SN] = ? AND (([StudentID] = ?) OR ([StudentID] IS NULL AND ? IS NULL)) AND [StudentFName] = ? AND [StudentLName] = ? AND [StudentEmail] = ? AND (([StudentHomePhone_Local] = ?) OR ([StudentHomePhone_Local] IS NULL AND ? IS NULL)) AND (([StudentMobilePhone_Local] = ?) OR ([StudentMobilePhone_Local] IS NULL AND ? IS NULL)) AND (([StudentAddressLine1_Local] = ?) OR ([StudentAddressLine1_Local] IS NULL AND ? IS NULL)) AND (([StudentAddressLine2_Local] = ?) OR ([StudentAddressLine2_Local] IS NULL AND ? IS NULL)) AND (([StudentState_Local] = ?) OR ([StudentState_Local] IS NULL AND ? IS NULL)) AND (([StudentPostCode_Local] = ?) OR ([StudentPostCode_Local] IS NULL AND ? IS NULL)) AND (([StudentHomePhone_Home] = ?) OR ([StudentHomePhone_Home] IS NULL AND ? IS NULL)) AND (([StudentMobilePhone_Home] = ?) OR ([StudentMobilePhone_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressLine1_Home] = ?) OR ([StudentAddressLine1_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressLine2_Home] = ?) OR ([StudentAddressLine2_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressLine3_Home] = ?) OR ([StudentAddressLine3_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressCity_Home] = ?) OR ([StudentAddressCity_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressCountry] = ?) OR ([StudentAddressCountry] IS NULL AND ? IS NULL)) AND (([StudentAddressAreaCode] = ?) OR ([StudentAddressAreaCode] IS NULL AND ? IS NULL)) AND (([DateOfBirth] = ?) OR ([DateOfBirth] IS NULL AND ? IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_SN" Type="Int32" />
                    <asp:Parameter Name="original_StudentID" Type="Double" />
                    <asp:Parameter Name="original_StudentID" Type="Double" />
                    <asp:Parameter Name="original_StudentFName" Type="String" />
                    <asp:Parameter Name="original_StudentLName" Type="String" />
                    <asp:Parameter Name="original_StudentEmail" Type="String" />
                    <asp:Parameter Name="original_StudentHomePhone_Local" Type="String" />
                    <asp:Parameter Name="original_StudentHomePhone_Local" Type="String" />
                    <asp:Parameter Name="original_StudentMobilePhone_Local" Type="String" />
                    <asp:Parameter Name="original_StudentMobilePhone_Local" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine1_Local" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine1_Local" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine2_Local" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine2_Local" Type="String" />
                    <asp:Parameter Name="original_StudentState_Local" Type="String" />
                    <asp:Parameter Name="original_StudentState_Local" Type="String" />
                    <asp:Parameter Name="original_StudentPostCode_Local" Type="Int32" />
                    <asp:Parameter Name="original_StudentPostCode_Local" Type="Int32" />
                    <asp:Parameter Name="original_StudentHomePhone_Home" Type="String" />
                    <asp:Parameter Name="original_StudentHomePhone_Home" Type="String" />
                    <asp:Parameter Name="original_StudentMobilePhone_Home" Type="String" />
                    <asp:Parameter Name="original_StudentMobilePhone_Home" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine1_Home" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine1_Home" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine2_Home" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine2_Home" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine3_Home" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine3_Home" Type="String" />
                    <asp:Parameter Name="original_StudentAddressCity_Home" Type="String" />
                    <asp:Parameter Name="original_StudentAddressCity_Home" Type="String" />
                    <asp:Parameter Name="original_StudentAddressCountry" Type="String" />
                    <asp:Parameter Name="original_StudentAddressCountry" Type="String" />
                    <asp:Parameter Name="original_StudentAddressAreaCode" Type="String" />
                    <asp:Parameter Name="original_StudentAddressAreaCode" Type="String" />
                    <asp:Parameter Name="original_DateOfBirth" Type="DateTime" />
                    <asp:Parameter Name="original_DateOfBirth" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBoxStudentID" Name="StudentID" PropertyName="Text" Type="Double" />
                    <asp:ControlParameter ControlID="TextBoxFirstName" Name="StudentFName" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxLName" Name="StudentLName" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxEmail" Name="StudentEmail" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxLHPhn" Name="StudentHomePhone_Local" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxLMphone" Name="StudentMobilePhone_Local" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxLAddrLn1" Name="StudentAddressLine1_Local" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxAddrLn2" Name="StudentAddressLine2_Local" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxLState" Name="StudentState_Local" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxLPCode" Name="StudentPostCode_Local" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBoxOHPhn" Name="StudentHomePhone_Home" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxOMbPhn" Name="StudentMobilePhone_Home" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxOAdLn1" Name="StudentAddressLine1_Home" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxOAdLn2" Name="StudentAddressLine2_Home" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxOAdLn3" Name="StudentAddressLine3_Home" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxOCity" Name="StudentAddressCity_Home" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxOCountry" Name="StudentAddressCountry" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxOAreaCode" Name="StudentAddressAreaCode" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxDOB" Name="DateOfBirth" PropertyName="Text" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="StudentID" Type="Double" />
                    <asp:Parameter Name="StudentFName" Type="String" />
                    <asp:Parameter Name="StudentLName" Type="String" />
                    <asp:Parameter Name="StudentEmail" Type="String" />
                    <asp:Parameter Name="StudentHomePhone_Local" Type="String" />
                    <asp:Parameter Name="StudentMobilePhone_Local" Type="String" />
                    <asp:Parameter Name="StudentAddressLine1_Local" Type="String" />
                    <asp:Parameter Name="StudentAddressLine2_Local" Type="String" />
                    <asp:Parameter Name="StudentState_Local" Type="String" />
                    <asp:Parameter Name="StudentPostCode_Local" Type="Int32" />
                    <asp:Parameter Name="StudentHomePhone_Home" Type="String" />
                    <asp:Parameter Name="StudentMobilePhone_Home" Type="String" />
                    <asp:Parameter Name="StudentAddressLine1_Home" Type="String" />
                    <asp:Parameter Name="StudentAddressLine2_Home" Type="String" />
                    <asp:Parameter Name="StudentAddressLine3_Home" Type="String" />
                    <asp:Parameter Name="StudentAddressCity_Home" Type="String" />
                    <asp:Parameter Name="StudentAddressCountry" Type="String" />
                    <asp:Parameter Name="StudentAddressAreaCode" Type="String" />
                    <asp:Parameter Name="DateOfBirth" Type="DateTime" />
                    <asp:Parameter Name="original_SN" Type="Int32" />
                    <asp:Parameter Name="original_StudentID" Type="Double" />
                    <asp:Parameter Name="original_StudentID" Type="Double" />
                    <asp:Parameter Name="original_StudentFName" Type="String" />
                    <asp:Parameter Name="original_StudentLName" Type="String" />
                    <asp:Parameter Name="original_StudentEmail" Type="String" />
                    <asp:Parameter Name="original_StudentHomePhone_Local" Type="String" />
                    <asp:Parameter Name="original_StudentHomePhone_Local" Type="String" />
                    <asp:Parameter Name="original_StudentMobilePhone_Local" Type="String" />
                    <asp:Parameter Name="original_StudentMobilePhone_Local" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine1_Local" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine1_Local" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine2_Local" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine2_Local" Type="String" />
                    <asp:Parameter Name="original_StudentState_Local" Type="String" />
                    <asp:Parameter Name="original_StudentState_Local" Type="String" />
                    <asp:Parameter Name="original_StudentPostCode_Local" Type="Int32" />
                    <asp:Parameter Name="original_StudentPostCode_Local" Type="Int32" />
                    <asp:Parameter Name="original_StudentHomePhone_Home" Type="String" />
                    <asp:Parameter Name="original_StudentHomePhone_Home" Type="String" />
                    <asp:Parameter Name="original_StudentMobilePhone_Home" Type="String" />
                    <asp:Parameter Name="original_StudentMobilePhone_Home" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine1_Home" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine1_Home" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine2_Home" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine2_Home" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine3_Home" Type="String" />
                    <asp:Parameter Name="original_StudentAddressLine3_Home" Type="String" />
                    <asp:Parameter Name="original_StudentAddressCity_Home" Type="String" />
                    <asp:Parameter Name="original_StudentAddressCity_Home" Type="String" />
                    <asp:Parameter Name="original_StudentAddressCountry" Type="String" />
                    <asp:Parameter Name="original_StudentAddressCountry" Type="String" />
                    <asp:Parameter Name="original_StudentAddressAreaCode" Type="String" />
                    <asp:Parameter Name="original_StudentAddressAreaCode" Type="String" />
                    <asp:Parameter Name="original_DateOfBirth" Type="DateTime" />
                    <asp:Parameter Name="original_DateOfBirth" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    
    </div>
    </form>
</body>
</html>
