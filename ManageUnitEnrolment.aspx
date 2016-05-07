<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ManageUnitEnrolment.aspx.vb" Inherits="ManageUnitEnrolment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Manage Unit Enrolment</h1>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [UnitEnrolment] WHERE [ENrolmentID] = ? AND (([StudentID] = ?) OR ([StudentID] IS NULL AND ? IS NULL)) AND (([UnitCode] = ?) OR ([UnitCode] IS NULL AND ? IS NULL)) AND (([CreditPoints] = ?) OR ([CreditPoints] IS NULL AND ? IS NULL)) AND (([EnrolmentYS] = ?) OR ([EnrolmentYS] IS NULL AND ? IS NULL)) AND (([UnitMarks] = ?) OR ([UnitMarks] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [UnitEnrolment] ([ENrolmentID], [StudentID], [UnitCode], [CreditPoints], [EnrolmentYS], [UnitMarks]) VALUES (?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [UnitEnrolment]" UpdateCommand="UPDATE [UnitEnrolment] SET [StudentID] = ?, [UnitCode] = ?, [CreditPoints] = ?, [EnrolmentYS] = ?, [UnitMarks] = ? WHERE [ENrolmentID] = ? AND (([StudentID] = ?) OR ([StudentID] IS NULL AND ? IS NULL)) AND (([UnitCode] = ?) OR ([UnitCode] IS NULL AND ? IS NULL)) AND (([CreditPoints] = ?) OR ([CreditPoints] IS NULL AND ? IS NULL)) AND (([EnrolmentYS] = ?) OR ([EnrolmentYS] IS NULL AND ? IS NULL)) AND (([UnitMarks] = ?) OR ([UnitMarks] IS NULL AND ? IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ENrolmentID" Type="Int32" />
                    <asp:Parameter Name="original_StudentID" Type="Double" />
                    <asp:Parameter Name="original_StudentID" Type="Double" />
                    <asp:Parameter Name="original_UnitCode" Type="String" />
                    <asp:Parameter Name="original_UnitCode" Type="String" />
                    <asp:Parameter Name="original_CreditPoints" Type="Double" />
                    <asp:Parameter Name="original_CreditPoints" Type="Double" />
                    <asp:Parameter Name="original_EnrolmentYS" Type="Int32" />
                    <asp:Parameter Name="original_EnrolmentYS" Type="Int32" />
                    <asp:Parameter Name="original_UnitMarks" Type="Double" />
                    <asp:Parameter Name="original_UnitMarks" Type="Double" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ENrolmentID" Type="Int32" />
                    <asp:Parameter Name="StudentID" Type="Double" />
                    <asp:Parameter Name="UnitCode" Type="String" />
                    <asp:Parameter Name="CreditPoints" Type="Double" />
                    <asp:Parameter Name="EnrolmentYS" Type="Int32" />
                    <asp:Parameter Name="UnitMarks" Type="Double" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="StudentID" Type="Double" />
                    <asp:Parameter Name="UnitCode" Type="String" />
                    <asp:Parameter Name="CreditPoints" Type="Double" />
                    <asp:Parameter Name="EnrolmentYS" Type="Int32" />
                    <asp:Parameter Name="UnitMarks" Type="Double" />
                    <asp:Parameter Name="original_ENrolmentID" Type="Int32" />
                    <asp:Parameter Name="original_StudentID" Type="Double" />
                    <asp:Parameter Name="original_StudentID" Type="Double" />
                    <asp:Parameter Name="original_UnitCode" Type="String" />
                    <asp:Parameter Name="original_UnitCode" Type="String" />
                    <asp:Parameter Name="original_CreditPoints" Type="Double" />
                    <asp:Parameter Name="original_CreditPoints" Type="Double" />
                    <asp:Parameter Name="original_EnrolmentYS" Type="Int32" />
                    <asp:Parameter Name="original_EnrolmentYS" Type="Int32" />
                    <asp:Parameter Name="original_UnitMarks" Type="Double" />
                    <asp:Parameter Name="original_UnitMarks" Type="Double" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ENrolmentID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
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
        </p>
        :</div>
    </form>
</body>
</html>
