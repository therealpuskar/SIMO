<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ManageCourseEnrolment.aspx.vb" Inherits="ManageCourseEnrolment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Manage Course Enrolment</h1>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CourseEnrolmentID" DataSourceID="SqlManageCE" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
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
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
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
        </p>
    
    </div>
        <asp:SqlDataSource ID="SqlManageCE" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CourseEnrolment] WHERE [CourseEnrolmentID] = ? AND (([StudentID] = ?) OR ([StudentID] IS NULL AND ? IS NULL)) AND (([CourseCode] = ?) OR ([CourseCode] IS NULL AND ? IS NULL)) AND (([EnrolmentType] = ?) OR ([EnrolmentType] IS NULL AND ? IS NULL)) AND (([CourseStatus] = ?) OR ([CourseStatus] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [CourseEnrolment] ([CourseEnrolmentID], [StudentID], [CourseCode], [EnrolmentType], [CourseStatus]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [CourseEnrolment]" UpdateCommand="UPDATE [CourseEnrolment] SET [StudentID] = ?, [CourseCode] = ?, [EnrolmentType] = ?, [CourseStatus] = ? WHERE [CourseEnrolmentID] = ? AND (([StudentID] = ?) OR ([StudentID] IS NULL AND ? IS NULL)) AND (([CourseCode] = ?) OR ([CourseCode] IS NULL AND ? IS NULL)) AND (([EnrolmentType] = ?) OR ([EnrolmentType] IS NULL AND ? IS NULL)) AND (([CourseStatus] = ?) OR ([CourseStatus] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_CourseEnrolmentID" Type="Int32" />
                <asp:Parameter Name="original_StudentID" Type="Double" />
                <asp:Parameter Name="original_StudentID" Type="Double" />
                <asp:Parameter Name="original_CourseCode" Type="String" />
                <asp:Parameter Name="original_CourseCode" Type="String" />
                <asp:Parameter Name="original_EnrolmentType" Type="String" />
                <asp:Parameter Name="original_EnrolmentType" Type="String" />
                <asp:Parameter Name="original_CourseStatus" Type="String" />
                <asp:Parameter Name="original_CourseStatus" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CourseEnrolmentID" Type="Int32" />
                <asp:Parameter Name="StudentID" Type="Double" />
                <asp:Parameter Name="CourseCode" Type="String" />
                <asp:Parameter Name="EnrolmentType" Type="String" />
                <asp:Parameter Name="CourseStatus" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="StudentID" Type="Double" />
                <asp:Parameter Name="CourseCode" Type="String" />
                <asp:Parameter Name="EnrolmentType" Type="String" />
                <asp:Parameter Name="CourseStatus" Type="String" />
                <asp:Parameter Name="original_CourseEnrolmentID" Type="Int32" />
                <asp:Parameter Name="original_StudentID" Type="Double" />
                <asp:Parameter Name="original_StudentID" Type="Double" />
                <asp:Parameter Name="original_CourseCode" Type="String" />
                <asp:Parameter Name="original_CourseCode" Type="String" />
                <asp:Parameter Name="original_EnrolmentType" Type="String" />
                <asp:Parameter Name="original_EnrolmentType" Type="String" />
                <asp:Parameter Name="original_CourseStatus" Type="String" />
                <asp:Parameter Name="original_CourseStatus" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
