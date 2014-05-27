using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Drawing;

public partial class Default2 : System.Web.UI.Page
{
    Class1 d = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s;
        s="insert into emp12t values("+ txt_empid.Text +",'"+ txt_empname.Text+"',"+ txt_empmob.Text+",'"+txt_empadr.Text+"','"+txt_empdob.Text+"','"+ txt_empemail.Text +"')";
        d.setdata(s);
        Label1.Text = " data inserted successfully";
        
        txt_empadr.Text = "";
        txt_empdob.Text = "";
        txt_empemail.Text = "";
        txt_empid.Text = "";
        txt_empmob.Text = "";
        txt_empname.Text = "";
      //  s = "select * from emp12t where emp_id=" + txt_empid.Text;
        //DataSet ds = new DataSet();
       // ds = d.getdata(s);
    //    GridView1.DataSource = ds.Tables[0];
       // GridView1.DataBind();
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string s;
        s = "delete from emp12t where emp_id=" + txt_empid.Text;
        d.setdata(s);
        Label1.Text = "data deleted successfully";
    }
    protected void txt_empmob_TextChanged(object sender, EventArgs e)
    {
        if (txt_empmob.Text.Length >= 10)
        {
            txt_empadr.Focus();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
          
    }
   
     
     }