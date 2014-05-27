<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        emp id
        <asp:TextBox ID="txt_empid" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txt_empid" ErrorMessage="mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; emp name
        <asp:TextBox ID="txt_empname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txt_empname" ErrorMessage="mandatory" ForeColor="Red" 
            ValidationGroup="a"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp; emp mobile no.
        <asp:TextBox ID="txt_empmob" runat="server" 
            ontextchanged="txt_empmob_TextChanged" ValidationGroup="a"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="txt_empmob" ErrorMessage="10 numeric digits only" ForeColor="Red" 
            ValidationExpression="\d{10}" ValidationGroup="a"></asp:RegularExpressionValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; emp address
        <asp:TextBox ID="txt_empadr" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; emp DOB
        <asp:TextBox ID="txt_empdob" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txt_empdob" ErrorMessage="mandatory" ForeColor="Red" 
            ValidationGroup="a"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; emp email&nbsp;
        <asp:TextBox ID="txt_empemail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txt_empemail" ErrorMessage="invalid email id" 
            ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ValidationGroup="a"></asp:RegularExpressionValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Insert" 
            ValidationGroup="a" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Delete" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label1" runat="server" ForeColor="#0066FF"></asp:Label>
&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
        <asp:UpdatePanel ID="up" runat="server">
        <ContentTemplate>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="emp_id" DataSourceID="SqlDataSource1" Width="175px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="emp_id" HeaderText="emp_id" ReadOnly="True" 
                    SortExpression="emp_id" />
                <asp:BoundField DataField="emp_name" HeaderText="emp_name" 
                    SortExpression="emp_name" />
                <asp:BoundField DataField="emp_mob" HeaderText="emp_mob" 
                    SortExpression="emp_mob" />
                <asp:BoundField DataField="emp_adr" HeaderText="emp_adr" 
                    SortExpression="emp_adr" />
                <asp:BoundField DataField="emp_dob" HeaderText="emp_dob" 
                    SortExpression="emp_dob" />
                <asp:BoundField DataField="emp_email" HeaderText="emp_email" 
                    SortExpression="emp_email" />
                <asp:ButtonField Text="edit" ButtonType="Link" />
                <asp:ButtonField Text="delete" />
            </Columns>
        </asp:GridView>
        </ContentTemplate>
        </asp:UpdatePanel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:emp12ConnectionString %>" 
            SelectCommand="SELECT [emp_id], [emp_name], [emp_mob], [emp_adr], [emp_dob], [emp_email] FROM [emp12t]">
        </asp:SqlDataSource>
        
        <br />
    
    </div>
    </form>
</body>
</html>
