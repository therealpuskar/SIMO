<%@ Page Language="VB" AutoEventWireup="false" CodeFile="BrowseByStudentList.aspx.vb" Inherits="BrowseByStudentList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Browse By Student List:<br />
            <span class="auto-style1">Select the Student ID you want to view the results for:</span></h1>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Students] ORDER BY [StudentID]"></asp:SqlDataSource>
        </p>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                <asp:BoundField DataField="StudentFName" HeaderText="StudentFName" SortExpression="StudentFName" />
                <asp:BoundField DataField="StudentLName" HeaderText="StudentLName" SortExpression="StudentLName" />
                <asp:BoundField DataField="StudentEmail" HeaderText="StudentEmail" SortExpression="StudentEmail" />
                <asp:BoundField DataField="StudentHomePhone_Local" HeaderText="StudentHomePhone_Local" SortExpression="StudentHomePhone_Local" />
                <asp:BoundField DataField="StudentMobilePhone_Local" HeaderText="StudentMobilePhone_Local" SortExpression="StudentMobilePhone_Local" />
                <asp:BoundField DataField="StudentAddressLine1_Local" HeaderText="StudentAddressLine1_Local" SortExpression="StudentAddressLine1_Local" />
                <asp:BoundField DataField="StudentAddressLine2_Local" HeaderText="StudentAddressLine2_Local" SortExpression="StudentAddressLine2_Local" />
                <asp:BoundField DataField="StudentState_Local" HeaderText="StudentState_Local" SortExpression="StudentState_Local" />
                <asp:BoundField DataField="StudentPostCode_Local" HeaderText="StudentPostCode_Local" SortExpression="StudentPostCode_Local" />
                <asp:BoundField DataField="StudentHomePhone_Home" HeaderText="StudentHomePhone_Home" SortExpression="StudentHomePhone_Home" />
                <asp:BoundField DataField="StudentMobilePhone_Home" HeaderText="StudentMobilePhone_Home" SortExpression="StudentMobilePhone_Home" />
                <asp:BoundField DataField="StudentAddressLine1_Home" HeaderText="StudentAddressLine1_Home" SortExpression="StudentAddressLine1_Home" />
                <asp:BoundField DataField="StudentAddressLine2_Home" HeaderText="StudentAddressLine2_Home" SortExpression="StudentAddressLine2_Home" />
                <asp:BoundField DataField="StudentAddressLine3_Home" HeaderText="StudentAddressLine3_Home" SortExpression="StudentAddressLine3_Home" />
                <asp:BoundField DataField="StudentAddressCity_Home" HeaderText="StudentAddressCity_Home" SortExpression="StudentAddressCity_Home" />
                <asp:BoundField DataField="StudentAddressCountry" HeaderText="StudentAddressCountry" SortExpression="StudentAddressCountry" />
                <asp:BoundField DataField="StudentAddressAreaCode" HeaderText="StudentAddressAreaCode" SortExpression="StudentAddressAreaCode" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [CourseEnrolment] WHERE ([StudentID] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="StudentID" PropertyName="SelectedValue" Type="Double" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="CourseEnrolmentID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="CourseCode" HeaderText="CourseCode" SortExpression="CourseCode" />
                <asp:BoundField DataField="EnrolmentType" HeaderText="EnrolmentType" SortExpression="EnrolmentType" />
                <asp:BoundField DataField="CourseStatus" HeaderText="CourseStatus" SortExpression="CourseStatus" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [UnitEnrolment] WHERE ([StudentID] = ?) ORDER BY [UnitMarks] DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="StudentID" PropertyName="SelectedValue" Type="Double" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="ENrolmentID" DataSourceID="SqlDataSource3" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="UnitCode" HeaderText="UnitCode" SortExpression="UnitCode" />
                <asp:BoundField DataField="CreditPoints" HeaderText="CreditPoints" SortExpression="CreditPoints" />
                <asp:BoundField DataField="EnrolmentYS" HeaderText="EnrolmentYS" SortExpression="EnrolmentYS" />
                <asp:BoundField DataField="UnitMarks" HeaderText="UnitMarks" SortExpression="UnitMarks" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
    </form>
</body>
</html>
