using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection sc = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        sc.Open(); //Connection open
        SqlCommand scm = new SqlCommand("select * from Admin_Login where adminID='" +useridtxt.Text+ "' and passAd='" +passtxt.Text+ "'", sc); //fetching login details of Admin
        SqlDataAdapter da = new SqlDataAdapter(scm);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0) //Validate entered credentials
        {
            Session["Admin"] = useridtxt.Text;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "key1", "alert('Login  Sucessfully');window.location='A_Add_Category.aspx';", true); //login successfull
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "key1", "alert('Login  Failed');window.location='A_Login.aspx';", true); //login failed
        }
        sc.Close(); //Connection close

    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        Response.Redirect("A_Login.aspx"); //Stay on same page with all fields blank when reset button clicked
    }
}