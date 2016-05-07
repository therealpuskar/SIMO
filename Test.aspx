<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Test.aspx.vb" Inherits="Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Search for Student Results:</h1>
        <br />
        <br />
        <br />
        <br />
        1. By Student ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" />
        <br />
        <br />
        <br />
        <br />
        2. By Student Surname:
        <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Submit" />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
