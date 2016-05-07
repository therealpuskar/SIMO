<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AddUnitEnrolment.aspx.vb" Inherits="AddUnitEnrolment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Add Unit Enrolment</h1>
        <p>
            <asp:Label ID="lblAddUnitConfirm1" runat="server" ForeColor="#0066FF" Text="Result Successfully Added!!" Visible="False"></asp:Label>
            <asp:Label ID="warningLabel2" runat="server" BackColor="#FF0066" Text="A student cannot be enrolled in the same unit twice in the same semester" Visible="False"></asp:Label>
        </p>
        <p>
            Student ID:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Student ID needs to be 8 digits" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
            <asp:Label ID="warningLabel3" runat="server" BackColor="#FF0066" Text="A student cannot enrol more than 3 times in a same unit" Visible="False"></asp:Label>
        </p>
        <p>
            Unit Code:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field required"></asp:RequiredFieldValidator>
            <asp:Label ID="warningLabel" runat="server" BackColor="#FF0066" Text="Unit Already Passed :)" Visible="False"></asp:Label>
            <asp:RegularExpressionValidator ID="unitCodeValidator0" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter correct format" ValidationExpression="^[A-Z]{3}\d{4}" ForeColor="#FF3300"></asp:RegularExpressionValidator>
        </p>
        <p>
            Credit Points:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Field required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Only 15, 20 or 60 are allowed as credit points" ValidationExpression="^(15|20|60)$"></asp:RegularExpressionValidator>
        </p>
        <p>
            Enrolment Year/Semester:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Field required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter Correct Format" ValidationExpression="\d{3}"></asp:RegularExpressionValidator>
        </p>
        <p>
            Unit Marks:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Field required"></asp:RequiredFieldValidator>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Add" />
            &nbsp;<asp:SqlDataSource ID="SqlAddUE1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO UnitEnrolment(StudentID, UnitCode, CreditPoints, EnrolmentYS, UnitMarks) VALUES (?, ?, ?, ?, ?)
" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [UnitEnrolment]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="StudentID" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="UnitCode" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="CreditPoint" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox4" Name="EnrolmentYS" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox5" Name="UnitMarks" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:SqlDataSource ID="ChkIfPassAlready" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT *  FROM UnitEnrolment
WHERE (([StudentID] = ?) AND  ([UnitCode] = ?) AND ([UnitMarks] &gt;= 50))
">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="StudentID" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="UnitCode" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:SqlDataSource ID="ChkIfTwiceSameSem" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM UnitEnrolment
WHERE (([StudentID] = ?) AND ([UnitCode] = ?) AND ([EnrolmentYS] = ?))
">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="StudentID" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="UnitCode" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox4" Name="EnrolmentYS" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlChkIf3Times" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * From UnitEnrolment
WHERE (([StudentID] = ?) AND ([UnitCode] = ?))
">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="StudentID" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="UnitCode" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ChkIfPassAlready" DataKeyNames="ENrolmentID" Visible="False">
                <Columns>
                    <asp:BoundField DataField="ENrolmentID" HeaderText="ENrolmentID" SortExpression="ENrolmentID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                    <asp:BoundField DataField="UnitCode" HeaderText="UnitCode" SortExpression="UnitCode" />
                    <asp:BoundField DataField="CreditPoints" HeaderText="CreditPoints" SortExpression="CreditPoints" />
                    <asp:BoundField DataField="EnrolmentYS" HeaderText="EnrolmentYS" SortExpression="EnrolmentYS" />
                    <asp:BoundField DataField="UnitMarks" HeaderText="UnitMarks" SortExpression="UnitMarks" />
                </Columns>
            </asp:GridView>
        </p>
        <p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ENrolmentID" DataSourceID="ChkIfTwiceSameSem" Visible="False">
                <Columns>
                    <asp:BoundField DataField="ENrolmentID" HeaderText="ENrolmentID" InsertVisible="False" ReadOnly="True" SortExpression="ENrolmentID" />
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                    <asp:BoundField DataField="UnitCode" HeaderText="UnitCode" SortExpression="UnitCode" />
                    <asp:BoundField DataField="CreditPoints" HeaderText="CreditPoints" SortExpression="CreditPoints" />
                    <asp:BoundField DataField="EnrolmentYS" HeaderText="EnrolmentYS" SortExpression="EnrolmentYS" />
                    <asp:BoundField DataField="UnitMarks" HeaderText="UnitMarks" SortExpression="UnitMarks" />
                </Columns>
            </asp:GridView>
        </p>
        </div>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="ENrolmentID" DataSourceID="SqlChkIf3Times" Visible="False">
            <Columns>
                <asp:BoundField DataField="ENrolmentID" HeaderText="ENrolmentID" InsertVisible="False" ReadOnly="True" SortExpression="ENrolmentID" />
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                <asp:BoundField DataField="UnitCode" HeaderText="UnitCode" SortExpression="UnitCode" />
                <asp:BoundField DataField="CreditPoints" HeaderText="CreditPoints" SortExpression="CreditPoints" />
                <asp:BoundField DataField="EnrolmentYS" HeaderText="EnrolmentYS" SortExpression="EnrolmentYS" />
                <asp:BoundField DataField="UnitMarks" HeaderText="UnitMarks" SortExpression="UnitMarks" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
