<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ManageCourse.aspx.vb" Inherits="ManageCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Manage Course<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Course] WHERE [CourseID] = ? AND (([CourseCode] = ?) OR ([CourseCode] IS NULL AND ? IS NULL)) AND (([CourseTitle] = ?) OR ([CourseTitle] IS NULL AND ? IS NULL)) AND (([CourseType] = ?) OR ([CourseType] IS NULL AND ? IS NULL)) AND (([CourseCreditPoints] = ?) OR ([CourseCreditPoints] IS NULL AND ? IS NULL)) AND (([CourseCoordinator] = ?) OR ([CourseCoordinator] IS NULL AND ? IS NULL)) AND (([CourseDutation] = ?) OR ([CourseDutation] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Course] ( [CourseCode], [CourseTitle], [CourseType], [CourseCreditPoints], [CourseCoordinator], [CourseDutation]) VALUES (?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Course]" UpdateCommand="UPDATE [Course] SET [CourseCode] = ?, [CourseTitle] = ?, [CourseType] = ?, [CourseCreditPoints] = ?, [CourseCoordinator] = ?, [CourseDutation] = ? WHERE [CourseID] = ? AND (([CourseCode] = ?) OR ([CourseCode] IS NULL AND ? IS NULL)) AND (([CourseTitle] = ?) OR ([CourseTitle] IS NULL AND ? IS NULL)) AND (([CourseType] = ?) OR ([CourseType] IS NULL AND ? IS NULL)) AND (([CourseCreditPoints] = ?) OR ([CourseCreditPoints] IS NULL AND ? IS NULL)) AND (([CourseCoordinator] = ?) OR ([CourseCoordinator] IS NULL AND ? IS NULL)) AND (([CourseDutation] = ?) OR ([CourseDutation] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_CourseID" Type="Int32" />
                <asp:Parameter Name="original_CourseCode" Type="String" />
                <asp:Parameter Name="original_CourseCode" Type="String" />
                <asp:Parameter Name="original_CourseTitle" Type="String" />
                <asp:Parameter Name="original_CourseTitle" Type="String" />
                <asp:Parameter Name="original_CourseType" Type="String" />
                <asp:Parameter Name="original_CourseType" Type="String" />
                <asp:Parameter Name="original_CourseCreditPoints" Type="String" />
                <asp:Parameter Name="original_CourseCreditPoints" Type="String" />
                <asp:Parameter Name="original_CourseCoordinator" Type="String" />
                <asp:Parameter Name="original_CourseCoordinator" Type="String" />
                <asp:Parameter Name="original_CourseDutation" Type="String" />
                <asp:Parameter Name="original_CourseDutation" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CourseCode" Type="String" />
                <asp:Parameter Name="CourseTitle" Type="String" />
                <asp:Parameter Name="CourseType" Type="String" />
                <asp:Parameter Name="CourseCreditPoints" Type="String" />
                <asp:Parameter Name="CourseCoordinator" Type="String" />
                <asp:Parameter Name="CourseDutation" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CourseCode" Type="String" />
                <asp:Parameter Name="CourseTitle" Type="String" />
                <asp:Parameter Name="CourseType" Type="String" />
                <asp:Parameter Name="CourseCreditPoints" Type="String" />
                <asp:Parameter Name="CourseCoordinator" Type="String" />
                <asp:Parameter Name="CourseDutation" Type="String" />
                <asp:Parameter Name="original_CourseID" Type="Int32" />
                <asp:Parameter Name="original_CourseCode" Type="String" />
                <asp:Parameter Name="original_CourseCode" Type="String" />
                <asp:Parameter Name="original_CourseTitle" Type="String" />
                <asp:Parameter Name="original_CourseTitle" Type="String" />
                <asp:Parameter Name="original_CourseType" Type="String" />
                <asp:Parameter Name="original_CourseType" Type="String" />
                <asp:Parameter Name="original_CourseCreditPoints" Type="String" />
                <asp:Parameter Name="original_CourseCreditPoints" Type="String" />
                <asp:Parameter Name="original_CourseCoordinator" Type="String" />
                <asp:Parameter Name="original_CourseCoordinator" Type="String" />
                <asp:Parameter Name="original_CourseDutation" Type="String" />
                <asp:Parameter Name="original_CourseDutation" Type="String" />
            </UpdateParameters>
            </asp:SqlDataSource>
        </h1>
        <p>
            &nbsp;</p>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CourseID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"
                            OnClientClick="return confirm('Are you sure you want to delete this course ??');" />
                            </asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="CourseCode" HeaderText="CourseCode" SortExpression="CourseCode" />
                <asp:BoundField DataField="CourseTitle" HeaderText="CourseTitle" SortExpression="CourseTitle" />
                <asp:TemplateField HeaderText="CourseType" SortExpression="CourseType">
                    <EditItemTemplate>
                        <asp:SqlDataSource ID="SqlDataSourceCouselist" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [CourseTypes]"></asp:SqlDataSource>
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceCouselist" DataTextField="CourseType" DataValueField="CourseTypeID" SelectedValue='<%# Bind("CourseType") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="CType" runat="server" Text='<%# Bind("CourseType") %>' Visible="False"></asp:Label>
                        <asp:SqlDataSource ID="CourseType" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [CourseTypes] WHERE ([CourseTypeID] = ?)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="CType" Name="CourseTypeID" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <asp:Repeater ID="ShowCourseTypename" runat="server" DataSourceID="CourseType">
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "CourseType")%>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="CourseCreditPoints" HeaderText="CourseCreditPoints" SortExpression="CourseCreditPoints" />
                <asp:BoundField DataField="CourseCoordinator" HeaderText="CourseCoordinator" SortExpression="CourseCoordinator" />
                <asp:BoundField DataField="CourseDutation" HeaderText="CourseDutation" SortExpression="CourseDutation" />
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
        <asp:Button ID="ButtonAddCourse" runat="server" Text="Add Course" />
    </form>
</body>
</html>
