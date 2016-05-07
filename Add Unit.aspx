<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Add Unit.aspx.vb" Inherits="Add_Unit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Add Unit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
        <p>
            <asp:Label ID="lblAddUnitConfirm" runat="server" ForeColor="#0066FF" Text="Unit Successfully Added!!" Visible="False"></asp:Label>
        </p>
        <p>
            Unit Code: <asp:TextBox ID="TextBoxUnitCode" runat="server"></asp:TextBox>
        &nbsp;<asp:RegularExpressionValidator ID="unitCodeValidator" runat="server" ControlToValidate="TextBoxUnitCode" ErrorMessage="Please Enter correct format" ValidationExpression="^[A-Z]{3}\d{4}" ForeColor="#FF3300"></asp:RegularExpressionValidator>
            <asp:Label ID="warningLabel" runat="server" BackColor="#FF0066" Text="Warning!! Unit code already exists in database" Visible="False"></asp:Label>
            <asp:RequiredFieldValidator ID="unitTitleValidator1" runat="server" ControlToValidate="TextBoxUnitCode" ErrorMessage="Field cannot be left blank" ForeColor="Blue"></asp:RequiredFieldValidator>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Unit Title: <asp:TextBox ID="TextBoxUnitTitle" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="unitTitleValidator" runat="server" ControlToValidate="TextBoxUnitTitle" ErrorMessage="Unit Title cannot be left blank" ForeColor="Blue"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxUnitTitle" ErrorMessage="Unit Title needs to be at least 5 characters" ValidationExpression="(\s|.){5,50}"></asp:RegularExpressionValidator>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Unit Type:
            <asp:DropDownList ID="DropUnitType" runat="server">
                <asp:ListItem Value="1">Undergraduate</asp:ListItem>
                <asp:ListItem Value="2" Selected="True">PostGraduate</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            &nbsp;</p>
        <p style="height: 26px">
            Credit Points:&nbsp;
            <asp:TextBox ID="TextBoxCreditPoints" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxCreditPoints" ErrorMessage="Credit Points cannot be left blank" ForeColor="#0066FF"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxCreditPoints" ErrorMessage="Only 15, 20 or 60 are allowed as credit points" ValidationExpression="^(15|20|60)$"></asp:RegularExpressionValidator>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Unit Coordinator:
            <asp:TextBox ID="TextBoxUnitCoordin" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="unitTitleValidator0" runat="server" ControlToValidate="TextBoxUnitCoordin" ErrorMessage="Field cannot be left blank" ForeColor="Blue"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="ButtonAddUnit" runat="server" Text="Add Unit" />
        </p>
        <p>
            <asp:SqlDataSource ID="SqlAddUnit" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Unit] WHERE [UnitID] = ? AND (([UnitCode] = ?) OR ([UnitCode] IS NULL AND ? IS NULL)) AND (([UnitTitle] = ?) OR ([UnitTitle] IS NULL AND ? IS NULL)) AND (([UnitType] = ?) OR ([UnitType] IS NULL AND ? IS NULL)) AND (([CreditPoints] = ?) OR ([CreditPoints] IS NULL AND ? IS NULL)) AND (([Coordinator] = ?) OR ([Coordinator] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Unit] ([UnitCode], [UnitTitle], [UnitType], [CreditPoints], [Coordinator]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Unit]" UpdateCommand="UPDATE [Unit] SET [UnitCode] = ?, [UnitTitle] = ?, [UnitType] = ?, [CreditPoints] = ?, [Coordinator] = ? WHERE [UnitID] = ? AND (([UnitCode] = ?) OR ([UnitCode] IS NULL AND ? IS NULL)) AND (([UnitTitle] = ?) OR ([UnitTitle] IS NULL AND ? IS NULL)) AND (([UnitType] = ?) OR ([UnitType] IS NULL AND ? IS NULL)) AND (([CreditPoints] = ?) OR ([CreditPoints] IS NULL AND ? IS NULL)) AND (([Coordinator] = ?) OR ([Coordinator] IS NULL AND ? IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_UnitID" Type="Int32" />
                    <asp:Parameter Name="original_UnitCode" Type="String" />
                    <asp:Parameter Name="original_UnitCode" Type="String" />
                    <asp:Parameter Name="original_UnitTitle" Type="String" />
                    <asp:Parameter Name="original_UnitTitle" Type="String" />
                    <asp:Parameter Name="original_UnitType" Type="String" />
                    <asp:Parameter Name="original_UnitType" Type="String" />
                    <asp:Parameter Name="original_CreditPoints" Type="Int32" />
                    <asp:Parameter Name="original_CreditPoints" Type="Int32" />
                    <asp:Parameter Name="original_Coordinator" Type="String" />
                    <asp:Parameter Name="original_Coordinator" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBoxUnitCode" Name="UnitCode" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxUnitTitle" Name="UnitTitle" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="DropUnitType" Name="UnitType" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="TextBoxCreditPoints" Name="CreditPoints" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBoxUnitCoordin" Name="Coordinator" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UnitCode" Type="String" />
                    <asp:Parameter Name="UnitTitle" Type="String" />
                    <asp:Parameter Name="UnitType" Type="String" />
                    <asp:Parameter Name="CreditPoints" Type="Int32" />
                    <asp:Parameter Name="Coordinator" Type="String" />
                    <asp:Parameter Name="original_UnitID" Type="Int32" />
                    <asp:Parameter Name="original_UnitCode" Type="String" />
                    <asp:Parameter Name="original_UnitCode" Type="String" />
                    <asp:Parameter Name="original_UnitTitle" Type="String" />
                    <asp:Parameter Name="original_UnitTitle" Type="String" />
                    <asp:Parameter Name="original_UnitType" Type="String" />
                    <asp:Parameter Name="original_UnitType" Type="String" />
                    <asp:Parameter Name="original_CreditPoints" Type="Int32" />
                    <asp:Parameter Name="original_CreditPoints" Type="Int32" />
                    <asp:Parameter Name="original_Coordinator" Type="String" />
                    <asp:Parameter Name="original_Coordinator" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlchkDuplID" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [UnitCode] FROM [Unit] WHERE ([UnitCode] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBoxUnitCode" Name="UnitCode" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="gvCheckUnitid" runat="server" Visible="False" DataSourceID="SqlchkDuplID">
            </asp:GridView>
        </p>
    
    </div>
    </form>
</body>
</html>
