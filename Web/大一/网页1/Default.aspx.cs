using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //在Default页面中输出一个二维字符数组、浏览器类型和客户端主机名，在Default2页面后台实现跳转到Default页面。
        char[,] a= { { 't', 'h', 'e', 'M', 'a', 'i', 'n' }, { '算', '了', ',', '英', '语', '太', '差' } };
        for (int i = 0; i < a.GetLength(0); i++)
        { for (int j = 0; j< a.GetLength(1); j++)
            { Response.Write(a[i, j]); } }
        Response.Write("<hr>"+Request.Browser["Browser"].ToString()+"<hr>");
        Response.Write(Request.ServerVariables["REMOTE_HOST"].ToString()+"<hr>");

    }
}