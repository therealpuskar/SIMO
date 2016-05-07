<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ManageUnit.aspx.vb" Inherits="ManageUnit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Manage Unit</h1>
        <p>
            &nbsp;</p>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UnitID" DataSourceID="SqlManageUnit" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"
                            
                            OnClientClick="return confirm('Are you sure you want to delete this unit from database?');" /></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="UnitCode" HeaderText="UnitCode" SortExpression="UnitCode" />
                <asp:BoundField DataField="UnitTitle" HeaderText="UnitTitle" SortExpression="UnitTitle" />
                <asp:TemplateField HeaderText="UnitType" SortExpression="UnitType">
                    <EditItemTemplate>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [UnitTypes]"></asp:SqlDataSource>
                        <asp:DropDownList ID="DropDownUnitType" runat="server" DataSourceID="SqlDataSource1" DataTextField="UnitType" DataValueField="UnitTypeID" SelectedValue='<%# Bind("UnitType") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="UType" runat="server" Text='<%# Bind("UnitType") %>' Visible="False"></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSourceUnitType" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [UnitTypes] WHERE ([UnitTypeID] = ?)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="UType" Name="UnitTypeID" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Repeater ID="ShowUnitType" runat="server" DataSourceID="SqlDataSourceUnitType">
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "UnitType") %>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:SqlDataSource ID="SqlManageUnit" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Unit] WHERE [UnitID] = ? AND (([UnitCode] = ?) OR ([UnitCode] IS NULL AND ? IS NULL)) AND (([UnitTitle] = ?) OR ([UnitTitle] IS NULL AND ? IS NULL)) AND (([UnitType] = ?) OR ([UnitType] IS NULL AND ? IS NULL)) AND (([CreditPoints] = ?) OR ([CreditPoints] IS NULL AND ? IS NULL)) AND (([Coordinator] = ?) OR ([Coordinator] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Unit] ([UnitID], [UnitCode], [UnitTitle], [UnitType], [CreditPoints], [Coordinator]) VALUES (?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Unit]" UpdateCommand="UPDATE [Unit] SET [UnitCode] = ?, [UnitTitle] = ?, [UnitType] = ?, [CreditPoints] = ?, [Coordinator] = ? WHERE [UnitID] = ? AND (([UnitCode] = ?) OR ([UnitCode] IS NULL AND ? IS NULL)) AND (([UnitTitle] = ?) OR ([UnitTitle] IS NULL AND ? IS NULL)) AND (([UnitType] = ?) OR ([UnitType] IS NULL AND ? IS NULL)) AND (([CreditPoints] = ?) OR ([CreditPoints] IS NULL AND ? IS NULL)) AND (([Coordinator] = ?) OR ([Coordinator] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_UnitID" Type="Int32" />
                <asp:Parameter Name="original_UnitCode" Type="String" />
                <asp:Parameter Name="original_UnitCode" Type="String" />
                <asp:Parameter Name="original_UnitTitle" Type="String" />
                <asp:Parameter Name="original_UnitTitle" Type="String" />
                <asp:Parameter Name="original_UnitType" Type="Int32" />
                <asp:Parameter Name="original_UnitType" Type="Int32" />
                <asp:Parameter Name="original_CreditPoints" Type="Int32" />
                <asp:Parameter Name="original_CreditPoints" Type="Int32" />
                <asp:Parameter Name="original_Coordinator" Type="String" />
                <asp:Parameter Name="original_Coordinator" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UnitID" Type="Int32" />
                <asp:Parameter Name="UnitCode" Type="String" />
                <asp:Parameter Name="UnitTitle" Type="String" />
                <asp:Parameter Name="UnitType" Type="Int32" />
                <asp:Parameter Name="CreditPoints" Type="Int32" />
                <asp:Parameter Name="Coordinator" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UnitCode" Type="String" />
                <asp:Parameter Name="UnitTitle" Type="String" />
                <asp:Parameter Name="UnitType" Type="Int32" />
                <asp:Parameter Name="CreditPoints" Type="Int32" />
                <asp:Parameter Name="Coordinator" Type="String" />
                <asp:Parameter Name="original_UnitID" Type="Int32" />
                <asp:Parameter Name="original_UnitCode" Type="String" />
                <asp:Parameter Name="original_UnitCode" Type="String" />
                <asp:Parameter Name="original_UnitTitle" Type="String" />
                <asp:Parameter Name="original_UnitTitle" Type="String" />
                <asp:Parameter Name="original_UnitType" Type="Int32" />
                <asp:Parameter Name="original_UnitType" Type="Int32" />
                <asp:Parameter Name="original_CreditPoints" Type="Int32" />
                <asp:Parameter Name="original_CreditPoints" Type="Int32" />
                <asp:Parameter Name="original_Coordinator" Type="String" />
                <asp:Parameter Name="original_Coordinator" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="ButtonAdUnit" runat="server" Text="Want To Add any Unit??" />
        <br />
    </form>
</body>
</html>
