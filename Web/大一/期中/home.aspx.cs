using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("picter.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("dupan.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Software.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("friendLink.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("zhanZhang.aspx");
    }
}