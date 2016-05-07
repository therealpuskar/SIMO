<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ManageStaff.aspx.vb" Inherits="ManageStaff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Manage Staff:</h1>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SN" DataSourceID="SqlManageStaff" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"
                                OnClientClick="return confirm('Are you sure you want to delete this staff??');" />
                                </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="StaffID" HeaderText="Staff ID" SortExpression="StaffID" />
                    <asp:BoundField DataField="StaffFName" HeaderText="First Name" SortExpression="StaffFName" />
                    <asp:BoundField DataField="StaffLName" HeaderText="Last Name" SortExpression="StaffLName" />
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
        <asp:SqlDataSource ID="SqlManageStaff" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Staff] WHERE [SN] = ? AND [StaffID] = ? AND [StaffFName] = ? AND (([StaffLName] = ?) OR ([StaffLName] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Staff] ([SN], [StaffID], [StaffFName], [StaffLName]) VALUES (?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Staff]" UpdateCommand="UPDATE [Staff] SET [StaffID] = ?, [StaffFName] = ?, [StaffLName] = ? WHERE [SN] = ? AND [StaffID] = ? AND [StaffFName] = ? AND (([StaffLName] = ?) OR ([StaffLName] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_SN" Type="Int32" />
                <asp:Parameter Name="original_StaffID" Type="Int32" />
                <asp:Parameter Name="original_StaffFName" Type="String" />
                <asp:Parameter Name="original_StaffLName" Type="String" />
                <asp:Parameter Name="original_StaffLName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SN" Type="Int32" />
                <asp:Parameter Name="StaffID" Type="Int32" />
                <asp:Parameter Name="StaffFName" Type="String" />
                <asp:Parameter Name="StaffLName" Type="String" />
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
        <br />
        <asp:Button ID="ButtonAddStaff" runat="server" Text="Add New Staff" />
    </form>
</body>
</html>
