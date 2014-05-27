<%@ Page Language="C#" AutoEventWireup="true" CodeFile="emp.aspx.cs" Inherits="emp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellspacing="0" class="style1">
            <tr>
                <td class="style2">
                    Employee Name</td>
                <td>
                    <asp:TextBox ID="txtename" runat="server"></asp:TextBox>
&nbsp;
                    <asp:Label runat="server" Text="*"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Employee Address</td>
                <td>
                    <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Employee Contectno</td>
                <td>
                    <asp:TextBox ID="txtcno" runat="server"></asp:TextBox>
&nbsp;<asp:Label runat="server" Text="*"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Email</td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
&nbsp;<asp:Label runat="server" Text="*"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:Button ID="btninsert" runat="server" Text="INSERT" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnupdate" runat="server" Text="UPDATE" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btndelete" runat="server" Text="DELETE" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        DeleteCommand="DELETE FROM emp_details WHERE (ID = @ID)" 
                        InsertCommand="INSERT INTO emp_details(Name, Address, Contect, Email) VALUES (@Name, @Address, @Contect, @Email)" 
                        SelectCommand="SELECT ID, Name, Address, Contect, Email FROM emp_details" 
                        UpdateCommand="UPDATE emp_details SET Name = @Name, Address = @Address, Contect = @Contect, Email = @Email WHERE (ID = @ID)">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="ID" 
                                PropertyName="SelectedValue" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="txtename" Name="Name" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txtadd" Name="Address" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txtcno" Name="Contect" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txtemail" Name="Email" PropertyName="Text" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="txtename" Name="Name" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txtadd" Name="Address" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txtcno" Name="Contect" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txtemail" Name="Email" PropertyName="Text" />
                            <asp:Parameter Name="ID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:GridView ID="GridView1" runat="server">
                        <Columns>
                            <asp:TemplateField HeaderText="Edit"></asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete"></asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
