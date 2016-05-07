<%@ Page Language="VB" AutoEventWireup="false" CodeFile="BrowseByUnitList.aspx.vb" Inherits="BrowseByUnitList" %>

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
        <h1>Browse By Unit List:<br />
            <span class="auto-style1">Select the Unit&nbsp; you want to view the results for:</span></h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Unit]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="UnitCode" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="UnitCode" HeaderText="UnitCode" SortExpression="UnitCode" />
                <asp:BoundField DataField="UnitTitle" HeaderText="UnitTitle" SortExpression="UnitTitle" />
                <asp:BoundField DataField="UnitType" HeaderText="UnitType" SortExpression="UnitType" />
                <asp:BoundField DataField="CreditPoints" HeaderText="CreditPoints" SortExpression="CreditPoints" />
                <asp:BoundField DataField="Coordinator" HeaderText="Coordinator" SortExpression="Coordinator" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [UnitEnrolment] WHERE ([UnitCode] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="UnitCode" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="StudentID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
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
        <br />
        <asp:SqlDataSource ID="SqlDataSorceGetName" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [StudentID], [StudentFName], [StudentEmail], [StudentLName], [StudentHomePhone_Local], [StudentPostCode_Local], [StudentState_Local], [DateOfBirth] FROM [Students] WHERE ([StudentID] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView2" Name="StudentID" PropertyName="SelectedValue" Type="Double" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSorceGetName" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                <asp:BoundField DataField="StudentFName" HeaderText="StudentFName" SortExpression="StudentFName" />
                <asp:BoundField DataField="StudentEmail" HeaderText="StudentEmail" SortExpression="StudentEmail" />
                <asp:BoundField DataField="StudentLName" HeaderText="StudentLName" SortExpression="StudentLName" />
                <asp:BoundField DataField="StudentHomePhone_Local" HeaderText="StudentHomePhone_Local" SortExpression="StudentHomePhone_Local" />
                <asp:BoundField DataField="StudentPostCode_Local" HeaderText="StudentPostCode_Local" SortExpression="StudentPostCode_Local" />
                <asp:BoundField DataField="StudentState_Local" HeaderText="StudentState_Local" SortExpression="StudentState_Local" />
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
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [CourseEnrolment] WHERE ([StudentID] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView2" Name="StudentID" PropertyName="SelectedValue" Type="Double" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="CourseEnrolmentID" DataSourceID="SqlDataSource3" GridLines="Horizontal">
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
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [UnitEnrolment] WHERE ([StudentID] = ?) ORDER BY [UnitMarks] DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView2" Name="StudentID" PropertyName="SelectedValue" Type="Double" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="ENrolmentID" DataSourceID="SqlDataSource4" GridLines="Horizontal">
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
        <br />
    </form>
</body>
</html>
