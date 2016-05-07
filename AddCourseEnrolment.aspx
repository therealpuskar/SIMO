<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AddCourseEnrolment.aspx.vb" Inherits="AddCourseEnrolment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1><strong>Add CourseEnrolment</strong></h1>
    
    </div>
        <p>
            <asp:Label ID="warningLabel" runat="server" BackColor="#FF0066" Text="A student Cannot be enrolled in same course twice" Visible="False"></asp:Label>
            </p>
        <p>
            Student ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="unitCodeValidator" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter correct format" ValidationExpression="\d{8}" ForeColor="#FF3300"></asp:RegularExpressionValidator>
        </p>
        <p>
            Course Code:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="CourseCode needs to be in format &quot;U55&quot;" ValidationExpression="[A-Z]{1}\d{2}"></asp:RegularExpressionValidator>
        </p>
        <p>
            Enrolment Type:
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Field required"></asp:RequiredFieldValidator>
        </p>
        <p>
            Course Status:&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Field required"></asp:RequiredFieldValidator>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Add" />
            &nbsp;<asp:SqlDataSource ID="SqlAddCE" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO CourseEnrolment(StudentID, CourseCode, EnrolmentType, CourseStatus) VALUES (?, ?, ?, ?)
" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [CourseEnrolment]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="StudentID" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="CourseCode" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="EnrolmentType" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox4" Name="CourseStatus" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:SqlDataSource ID="ChkIfSameCourseTwice" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO CourseEnrolment(StudentID, CourseCode, EnrolmentType, CourseStatus) VALUES (?, ?, ?, ?)
" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * From CourseEnrolment
WHERE (([StudentID] = ?) AND ([CourseCode] = ?))
">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="StudentID" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="CourseCode" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="EnrolmentType" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox4" Name="CourseStatus" PropertyName="Text" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="StudentID" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="CourseCode" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CourseEnrolmentID" DataSourceID="ChkIfSameCourseTwice" Visible="False">
                <Columns>
                    <asp:BoundField DataField="CourseEnrolmentID" HeaderText="CourseEnrolmentID" InsertVisible="False" ReadOnly="True" SortExpression="CourseEnrolmentID" />
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                    <asp:BoundField DataField="CourseCode" HeaderText="CourseCode" SortExpression="CourseCode" />
                    <asp:BoundField DataField="EnrolmentType" HeaderText="EnrolmentType" SortExpression="EnrolmentType" />
                    <asp:BoundField DataField="CourseStatus" HeaderText="CourseStatus" SortExpression="CourseStatus" />
                </Columns>
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
