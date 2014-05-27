<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employee.aspx.cs" Inherits="employee" %>

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
                    EMPLOYEE&nbsp; NAME</td>
                <td>
                    <asp:TextBox ID="txtename" runat="server"></asp:TextBox>
&nbsp;
                    <asp:Label ID="Label" runat="server" Text="*"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    EMPLOYEE ADRESS</td>
                <td>
                    <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    EMPLOYEE CONTECTNO</td>
                <td>
                    <asp:TextBox ID="txtcno" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    E-MAIL</td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
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
                    <asp:Button ID="btninsert" runat="server" onclick="btninsert_Click" 
                        Text="INSERT" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                        Text="UPDATE" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btndel" runat="server" onclick="btndel_Click" Text="DELETE" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="ID" DataSourceID="SqlDataSource1" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Address" HeaderText="Address" 
                                SortExpression="Address" />
                            <asp:BoundField DataField="Contect_no" HeaderText="Contect_no" 
                                SortExpression="Contect_no" />
                            <asp:BoundField DataField="E-mail" HeaderText="E-mail" 
                                SortExpression="E-mail" />
                            <asp:TemplateField HeaderText="EDIT"></asp:TemplateField>
                            <asp:TemplateField HeaderText="DELETE"></asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [emp]"></asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
