<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SearchUnits.aspx.vb" Inherits="SearchUnits" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1><strong>Search/Browse&nbsp; units:</strong></h1>
        <p>
            <asp:TextBox ID="TextBoxSearch" runat="server"></asp:TextBox>
            <asp:Button ID="ButtonSearch" runat="server" Height="26px" PostBackUrl="~/SearchUnits.aspx" Text="Search" />
        </p>
        &nbsp;<br />
        <asp:SqlDataSource ID="SqlUnitSearch" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Unit] WHERE ([UnitCode] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBoxSearch" Name="UnitCode" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
        <asp:GridView ID="GridViewUnits" runat="server" AutoGenerateColumns="False" DataKeyNames="UnitID" DataSourceID="SqlUnitSearch" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
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
    </form>
</body>
</html>
