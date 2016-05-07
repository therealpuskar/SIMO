<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ManageStudent.aspx.vb" Inherits="ManageStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Manage Student:</h1>
        <p>
            <asp:SqlDataSource ID="SqlManageStudent" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Students] WHERE [SN] = ? AND [StudentID] = ? AND [StudentFName] = ? AND [StudentLName] = ? AND [StudentEmail] = ? AND (([StudentHomePhone_Local] = ?) OR ([StudentHomePhone_Local] IS NULL AND ? IS NULL)) AND (([StudentMobilePhone_Local] = ?) OR ([StudentMobilePhone_Local] IS NULL AND ? IS NULL)) AND (([StudentAddressLine1_Local] = ?) OR ([StudentAddressLine1_Local] IS NULL AND ? IS NULL)) AND (([StudentAddressLine2_Local] = ?) OR ([StudentAddressLine2_Local] IS NULL AND ? IS NULL)) AND (([StudentState_Local] = ?) OR ([StudentState_Local] IS NULL AND ? IS NULL)) AND (([StudentPostCode_Local] = ?) OR ([StudentPostCode_Local] IS NULL AND ? IS NULL)) AND (([StudentHomePhone_Home] = ?) OR ([StudentHomePhone_Home] IS NULL AND ? IS NULL)) AND (([StudentMobilePhone_Home] = ?) OR ([StudentMobilePhone_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressLine1_Home] = ?) OR ([StudentAddressLine1_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressLine2_Home] = ?) OR ([StudentAddressLine2_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressLine3_Home] = ?) OR ([StudentAddressLine3_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressCity_Home] = ?) OR ([StudentAddressCity_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressCountry] = ?) OR ([StudentAddressCountry] IS NULL AND ? IS NULL)) AND (([StudentAddressAreaCode] = ?) OR ([StudentAddressAreaCode] IS NULL AND ? IS NULL)) AND (([DateOfBirth] = ?) OR ([DateOfBirth] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Students] ([SN], [StudentID], [StudentFName], [StudentLName], [StudentEmail], [StudentHomePhone_Local], [StudentMobilePhone_Local], [StudentAddressLine1_Local], [StudentAddressLine2_Local], [StudentState_Local], [StudentPostCode_Local], [StudentHomePhone_Home], [StudentMobilePhone_Home], [StudentAddressLine1_Home], [StudentAddressLine2_Home], [StudentAddressLine3_Home], [StudentAddressCity_Home], [StudentAddressCountry], [StudentAddressAreaCode], [DateOfBirth]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Students]" UpdateCommand="UPDATE [Students] SET [StudentID] = ?, [StudentFName] = ?, [StudentLName] = ?, [StudentEmail] = ?, [StudentHomePhone_Local] = ?, [StudentMobilePhone_Local] = ?, [StudentAddressLine1_Local] = ?, [StudentAddressLine2_Local] = ?, [StudentState_Local] = ?, [StudentPostCode_Local] = ?, [StudentHomePhone_Home] = ?, [StudentMobilePhone_Home] = ?, [StudentAddressLine1_Home] = ?, [StudentAddressLine2_Home] = ?, [StudentAddressLine3_Home] = ?, [StudentAddressCity_Home] = ?, [StudentAddressCountry] = ?, [StudentAddressAreaCode] = ?, [DateOfBirth] = ? WHERE [SN] = ? AND [StudentID] = ? AND [StudentFName] = ? AND [StudentLName] = ? AND [StudentEmail] = ? AND (([StudentHomePhone_Local] = ?) OR ([StudentHomePhone_Local] IS NULL AND ? IS NULL)) AND (([StudentMobilePhone_Local] = ?) OR ([StudentMobilePhone_Local] IS NULL AND ? IS NULL)) AND (([StudentAddressLine1_Local] = ?) OR ([StudentAddressLine1_Local] IS NULL AND ? IS NULL)) AND (([StudentAddressLine2_Local] = ?) OR ([StudentAddressLine2_Local] IS NULL AND ? IS NULL)) AND (([StudentState_Local] = ?) OR ([StudentState_Local] IS NULL AND ? IS NULL)) AND (([StudentPostCode_Local] = ?) OR ([StudentPostCode_Local] IS NULL AND ? IS NULL)) AND (([StudentHomePhone_Home] = ?) OR ([StudentHomePhone_Home] IS NULL AND ? IS NULL)) AND (([StudentMobilePhone_Home] = ?) OR ([StudentMobilePhone_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressLine1_Home] = ?) OR ([StudentAddressLine1_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressLine2_Home] = ?) OR ([StudentAddressLine2_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressLine3_Home] = ?) OR ([StudentAddressLine3_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressCity_Home] = ?) OR ([StudentAddressCity_Home] IS NULL AND ? IS NULL)) AND (([StudentAddressCountry] = ?) OR ([StudentAddressCountry] IS NULL AND ? IS NULL)) AND (([StudentAddressAreaCode] = ?) OR ([StudentAddressAreaCode] IS NULL AND ? IS NULL)) AND (([DateOfBirth] = ?) OR ([DateOfBirth] IS NULL AND ? IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_SN" Type="Int32" />
                    <asp:Parameter Name="original_StudentID" Type="Single" />
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
                    <asp:Parameter Name="SN" Type="Int32" />
                    <asp:Parameter Name="StudentID" Type="Single" />
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
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="StudentID" Type="Single" />
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
                    <asp:Parameter Name="original_StudentID" Type="Single" />
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SN" DataSourceID="SqlManageStudent" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"
                                OnClientClick="return confirm('Are you sure you want to delete this student?');" /></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="StudentID" HeaderText="Student ID" SortExpression="StudentID" />
                    <asp:BoundField DataField="StudentFName" HeaderText="First Name" SortExpression="StudentFName" />
                    <asp:BoundField DataField="StudentLName" HeaderText="Last name" SortExpression="StudentLName" />
                    <asp:BoundField DataField="StudentEmail" HeaderText="Email" SortExpression="StudentEmail" />
                    <asp:BoundField DataField="StudentHomePhone_Local" HeaderText="Home Phone" SortExpression="StudentHomePhone_Local" />
                    <asp:BoundField DataField="StudentMobilePhone_Local" HeaderText="Mobile Phone" SortExpression="StudentMobilePhone_Local" />
                    <asp:BoundField DataField="StudentAddressLine1_Local" HeaderText="Address Line 1" SortExpression="StudentAddressLine1_Local" />
                    <asp:BoundField DataField="StudentAddressLine2_Local" HeaderText="Address Line 2" SortExpression="StudentAddressLine2_Local" />
                    <asp:BoundField DataField="StudentState_Local" HeaderText="State" SortExpression="StudentState_Local" />
                    <asp:BoundField DataField="StudentPostCode_Local" HeaderText="Post Code" SortExpression="StudentPostCode_Local" />
                    <asp:BoundField DataField="StudentHomePhone_Home" HeaderText="Overseas Home Phone" SortExpression="StudentHomePhone_Home" />
                    <asp:BoundField DataField="StudentMobilePhone_Home" HeaderText="Home Mobile Phone" SortExpression="StudentMobilePhone_Home" />
                    <asp:BoundField DataField="StudentAddressLine1_Home" HeaderText="Home Address" SortExpression="StudentAddressLine1_Home" />
                    <asp:BoundField DataField="StudentAddressLine2_Home" HeaderText="Home Address 2" SortExpression="StudentAddressLine2_Home" />
                    <asp:BoundField DataField="StudentAddressLine3_Home" HeaderText="Home Address 3" SortExpression="StudentAddressLine3_Home" />
                    <asp:BoundField DataField="StudentAddressCity_Home" HeaderText="Home City" SortExpression="StudentAddressCity_Home" />
                    <asp:BoundField DataField="StudentAddressCountry" HeaderText="Home Country" SortExpression="StudentAddressCountry" />
                    <asp:BoundField DataField="StudentAddressAreaCode" HeaderText="Home Area Code" SortExpression="StudentAddressAreaCode" />
                    <asp:BoundField DataField="DateOfBirth" HeaderText="Date of Birth (mm-dd-yyyy)" SortExpression="DateOfBirth" />
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
        </p>
        <asp:Button ID="ButtonAddStudent" runat="server" Text="Add Student" />
        <br />
    </form>
</body>

</html>
