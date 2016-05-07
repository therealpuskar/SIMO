<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AddCourse.aspx.vb" Inherits="AddCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Add Course:</h1>
        <p>
            <asp:Label ID="lblAddCourseConfirm" runat="server" ForeColor="#0066FF" Text="Unit Successfully Added!!" Visible="False"></asp:Label>
        </p>
        <p>
            Course Code:&nbsp;
            <asp:TextBox ID="TextBoxCourseCode" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxCourseCode" ErrorMessage="CourseCode needs to be in format &quot;U55&quot;" ValidationExpression="[A-Z]{1}\d{2}"></asp:RegularExpressionValidator>
            <asp:Label ID="warningLabel" runat="server" BackColor="#FF0066" Text="Warning!! Course Code already exists in database" Visible="False"></asp:Label>
        </p>
        <p>
            <asp:RequiredFieldValidator ID="unitTitleValidator0" runat="server" ControlToValidate="TextBoxCourseCode" ErrorMessage="Course code cannot be left blank" ForeColor="Blue"></asp:RequiredFieldValidator>
        </p>
        <p>
            Course Title:&nbsp;
            <asp:TextBox ID="TextBoxCourseTitle" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxCourseTitle" ErrorMessage="Course Title needs to be at least 5 characters" ValidationExpression="(\s|.){5,100}"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="unitTitleValidator" runat="server" ControlToValidate="TextBoxCourseTitle" ErrorMessage="Course title cannot be left blank" ForeColor="Blue"></asp:RequiredFieldValidator>
        </p>
        <p>
            Course Type:
            <asp:DropDownList ID="DropDownListCourseType" runat="server">
                <asp:ListItem Value="1">Associate Degree</asp:ListItem>
                <asp:ListItem Value="2">Double Degree</asp:ListItem>
                <asp:ListItem Value="3">Graduate Diploma</asp:ListItem>
                <asp:ListItem Value="4">Masters By CourseWork</asp:ListItem>
                <asp:ListItem Value="5">Ph. D.</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            Course Credit Points:&nbsp; <asp:TextBox ID="TextBoxCreditPoints" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxCreditPoints" ErrorMessage="Only 120, 240, 360 and 480 are allowed as credit points" ValidationExpression="^(120|240|360|480)$"></asp:RegularExpressionValidator>
        </p>
        <p>
            Coordinator:&nbsp; <asp:TextBox ID="TextBoxCoordinator" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxCoordinator" ErrorMessage="Field Cannot be left Blank"></asp:RequiredFieldValidator>
        </p>
        <p>
            Duration In Months:&nbsp;
            <asp:TextBox ID="TextBoxDuration" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxDuration" ErrorMessage="Field Cannot be left Blank"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Add Course" style="height: 26px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonLinkHomePage" runat="server" Text="Homepage" />
        </p>
        <asp:SqlDataSource ID="SqlAddCourse" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Course] WHERE [CourseID] = ? AND (([CourseCode] = ?) OR ([CourseCode] IS NULL AND ? IS NULL)) AND (([CourseTitle] = ?) OR ([CourseTitle] IS NULL AND ? IS NULL)) AND (([CourseType] = ?) OR ([CourseType] IS NULL AND ? IS NULL)) AND (([CourseCreditPoints] = ?) OR ([CourseCreditPoints] IS NULL AND ? IS NULL)) AND (([CourseCoordinator] = ?) OR ([CourseCoordinator] IS NULL AND ? IS NULL)) AND (([CourseDutation] = ?) OR ([CourseDutation] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Course] ( [CourseCode], [CourseTitle], [CourseType], [CourseCreditPoints], [CourseCoordinator], [CourseDutation]) VALUES (?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Course]" UpdateCommand="UPDATE [Course] SET [CourseCode] = ?, [CourseTitle] = ?, [CourseType] = ?, [CourseCreditPoints] = ?, [CourseCoordinator] = ?, [CourseDutation] = ? WHERE [CourseID] = ? AND (([CourseCode] = ?) OR ([CourseCode] IS NULL AND ? IS NULL)) AND (([CourseTitle] = ?) OR ([CourseTitle] IS NULL AND ? IS NULL)) AND (([CourseType] = ?) OR ([CourseType] IS NULL AND ? IS NULL)) AND (([CourseCreditPoints] = ?) OR ([CourseCreditPoints] IS NULL AND ? IS NULL)) AND (([CourseCoordinator] = ?) OR ([CourseCoordinator] IS NULL AND ? IS NULL)) AND (([CourseDutation] = ?) OR ([CourseDutation] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_CourseID" Type="Int32" />
                <asp:Parameter Name="original_CourseCode" Type="String" />
                <asp:Parameter Name="original_CourseCode" Type="String" />
                <asp:Parameter Name="original_CourseTitle" Type="String" />
                <asp:Parameter Name="original_CourseTitle" Type="String" />
                <asp:Parameter Name="original_CourseType" Type="String" />
                <asp:Parameter Name="original_CourseType" Type="String" />
                <asp:Parameter Name="original_CourseCreditPoints" Type="Int32" />
                <asp:Parameter Name="original_CourseCreditPoints" Type="Int32" />
                <asp:Parameter Name="original_CourseCoordinator" Type="String" />
                <asp:Parameter Name="original_CourseCoordinator" Type="String" />
                <asp:Parameter Name="original_CourseDutation" Type="String" />
                <asp:Parameter Name="original_CourseDutation" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBoxCourseCode" Name="CourseCode" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBoxCourseTitle" Name="CourseTitle" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="DropDownListCourseType" Name="CourseType" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="TextBoxCreditPoints" Name="CourseCreditPoints" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="TextBoxCoordinator" Name="CourseCoordinator" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBoxDuration" Name="CourseDutation" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CourseCode" Type="String" />
                <asp:Parameter Name="CourseTitle" Type="String" />
                <asp:Parameter Name="CourseType" Type="String" />
                <asp:Parameter Name="CourseCreditPoints" Type="Int32" />
                <asp:Parameter Name="CourseCoordinator" Type="String" />
                <asp:Parameter Name="CourseDutation" Type="String" />
                <asp:Parameter Name="original_CourseID" Type="Int32" />
                <asp:Parameter Name="original_CourseCode" Type="String" />
                <asp:Parameter Name="original_CourseCode" Type="String" />
                <asp:Parameter Name="original_CourseTitle" Type="String" />
                <asp:Parameter Name="original_CourseTitle" Type="String" />
                <asp:Parameter Name="original_CourseType" Type="String" />
                <asp:Parameter Name="original_CourseType" Type="String" />
                <asp:Parameter Name="original_CourseCreditPoints" Type="Int32" />
                <asp:Parameter Name="original_CourseCreditPoints" Type="Int32" />
                <asp:Parameter Name="original_CourseCoordinator" Type="String" />
                <asp:Parameter Name="original_CourseCoordinator" Type="String" />
                <asp:Parameter Name="original_CourseDutation" Type="String" />
                <asp:Parameter Name="original_CourseDutation" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <p>
            <asp:SqlDataSource ID="SqlChkDupCoCode" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Course] WHERE ([CourseCode] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBoxCourseCode" Name="CourseCode" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:GridView ID="gvChkDupCoCode" runat="server" AutoGenerateColumns="False" DataKeyNames="CourseID" DataSourceID="SqlChkDupCoCode" Visible="False">
                <Columns>
                    <asp:BoundField DataField="CourseID" HeaderText="CourseID" InsertVisible="False" ReadOnly="True" SortExpression="CourseID" />
                    <asp:BoundField DataField="CourseCode" HeaderText="CourseCode" SortExpression="CourseCode" />
                    <asp:BoundField DataField="CourseTitle" HeaderText="CourseTitle" SortExpression="CourseTitle" />
                    <asp:BoundField DataField="CourseType" HeaderText="CourseType" SortExpression="CourseType" />
                    <asp:BoundField DataField="CourseCreditPoints" HeaderText="CourseCreditPoints" SortExpression="CourseCreditPoints" />
                    <asp:BoundField DataField="CourseCoordinator" HeaderText="CourseCoordinator" SortExpression="CourseCoordinator" />
                    <asp:BoundField DataField="CourseDutation" HeaderText="CourseDutation" SortExpression="CourseDutation" />
                </Columns>
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
        <br />
    
    </div>
    </form>
</body>
</html>
