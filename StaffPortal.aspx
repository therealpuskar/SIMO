<%@ Page Language="VB" AutoEventWireup="false" CodeFile="StaffPortal.aspx.vb" Inherits="StaffPortal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 90%;
        }
        .auto-style2 {
            width: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Staff Portal</h1>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Add Student:</td>
                <td>
                    <asp:Button ID="Button1" runat="server" PostBackUrl="~/AddStudent.aspx" Text="Add" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Manage Student:</td>
                <td>
                    <asp:Button ID="Button2" runat="server" PostBackUrl="~/ManageStudent.aspx" Text="Manage" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Add Unit</td>
                <td>
                    <asp:Button ID="Button17" runat="server" PostBackUrl="~/Add Unit.aspx" Text="Add" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Manage Unit</td>
                <td>
                    <asp:Button ID="Button18" runat="server" PostBackUrl="~/ManageUnit.aspx" Text="Manage" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Add Staff:</td>
                <td>
                    <asp:Button ID="Button3" runat="server" PostBackUrl="~/AddStaff.aspx" Text="Add" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Manage Staff:</td>
                <td>
                    <asp:Button ID="Button4" runat="server" PostBackUrl="~/ManageStaff.aspx" Text="Manage" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Add Course</td>
                <td>
                    <asp:Button ID="Button11" runat="server" PostBackUrl="~/AddCourse.aspx" Text="Add" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Manage Course</td>
                <td>
                    <asp:Button ID="Button14" runat="server" PostBackUrl="~/ManageCourse.aspx" Text="Manage" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Add UnitEnrolment:</td>
                <td>
                    <asp:Button ID="Button12" runat="server" PostBackUrl="~/AddUnitEnrolment.aspx" Text="Add" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Manage UnitEnrolment:</td>
                <td>
                    <asp:Button ID="Button15" runat="server" PostBackUrl="~/ManageUnitEnrolment.aspx" Text="Manage" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Add CourseEnrolment:</td>
                <td>
                    <asp:Button ID="Button13" runat="server" PostBackUrl="~/AddCourseEnrolment.aspx" Text="Add" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Manage CourseEnrolment</td>
                <td>
                    <asp:Button ID="Button16" runat="server" PostBackUrl="~/ManageCourseEnrolment.aspx" Text="Manage" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
