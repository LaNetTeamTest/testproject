using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;

	public Class1()
	{
        con = new SqlConnection(@"Data Source=LA24;Initial Catalog=emp12;Integrated Security=True");
        con.Open();
	}

    public void setdata(string s)
    {
        cmd = new SqlCommand(s, con);
        cmd.ExecuteNonQuery();
    }

    public DataSet getdata(string s)
    {
        DataSet ds = new DataSet();
        da = new SqlDataAdapter(s, con);
        da.Fill(ds);
        return ds;
    }
    
}