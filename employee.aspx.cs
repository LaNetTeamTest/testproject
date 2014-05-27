using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class employee : System.Web.UI.Page
{


    public void reset()
    {
        SortedList s = new SortedList();
        s.Add("@mode", "delete");
        txtename.Text = "";
        txtadd.Text="";
        txtcno.Text="";
        txtemail.Text = "";
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SortedList s= new SortedList();
            s.add("@mode",s);
            GridView1.DataSource=erp.GetDataReader("select1",s);


        }
    }
    protected void btninsert_Click(object sender, EventArgs e)
    {
        SortedList s = new SortedList();
        s.Add("@mode","Insert");
        s.Add("txtename",Name);
        s.Add("txtadd", Address);
        s.Add("txtcno", Contect_no);
        s.Add("txtemail", Email);


        SortedList s1 = new SortedList();
        s.add("@mode", s);
        GridView1.DataSource = erp.GetDataReader("select1", s);
    }
    protected void btndel_Click(object sender, EventArgs e)
    {
        reset();
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        SortedList sl = new SortedList();
        sl.Add("@mode", "update");
        sl.Add("txtename", Name);
        sl.Add("txtadd", Address);
        sl.Add("txtcno", Contect_no);
        sl.Add("txtemail", Email);

        SortedList s1 = new SortedList();
        s.add("@mode", s);
        GridView1.DataSource = erp.GetDataReader("select1", s);
    }
}