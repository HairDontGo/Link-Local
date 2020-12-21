<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>
<script runat="server">

</script>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server"><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>我也不知道是什么网站的网站</title>
        <style type="text/css">
             .logo{ width:10%;
                    height:100%;
            }

            #table1 {
                height: 655px;
                width: 1045px;
            }

            .style6 {
                height: 250px;
                width: 290px;
            }
            .to {
                    font-size: xx-large;
                     font-weight: bolder;
                     font-family: 华文行楷;
                     color: #FFFFFF;
            }

        </style>
        <link href="homeStyle.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
    <form id="form1" runat="server">
    <div style="background-color:#D0C8C5" id="div1" aria-readonly="True">
     <a href="home.aspx" target="_self"> 
        <img src="image/(1).gif" id="logo" alt="logo" class="logo" dir="ltr" /></a>&nbsp
        <asp:Button ID="Button1" runat="server" Text="图片" OnClick="Button1_Click" 
            BackColor="#00FFCC" BorderColor="#9AE7FF" BorderStyle="Outset" Font-Bold="True" Font-Size="X-Large" Height="65" Width="15%" />&nbsp
        <asp:Button ID="Button2" runat="server" Text="度盘" OnClick="Button2_Click"
            BackColor="#00FFCC" BorderColor="#9AE7FF" BorderStyle="Outset" Font-Bold="True" Font-Size="X-Large" Height="65" Width="15%"  />&nbsp
        <asp:Button ID="Button3" runat="server" Text="软件" OnClick="Button3_Click" 
            BackColor="#00FFCC" BorderColor="#9AE7FF" BorderStyle="Outset" Font-Bold="True" Font-Size="X-Large" Height="65" Width="15%" />&nbsp
        <asp:Button ID="Button4" runat="server" Text="友链" OnClick="Button4_Click"
            BackColor="#00FFCC" BorderColor="#9AE7FF" BorderStyle="Outset" Font-Bold="True" Font-Size="X-Large" Height="65" Width="15%"  />&nbsp
        <asp:Button ID="Button5" runat="server" Text="站长介绍" OnClick="Button5_Click" 
            BackColor="#00FFCC" BorderColor="#9AE7FF" BorderStyle="Outset" Font-Bold="True" Font-Size="X-Large" Height="65" Width="15%" />&nbsp
    </div>
         <br /><br />
        <div id="div2">
            <img src="image/wallpaper/(1).png" id="banner" alt="banner" class="banner" width="960" height="450" />
     </div>
        <br /><br />
        <div id="div3">
            <table id="table1">
                <tr id="tr1">
                    <td width:30%><a href="picter.aspx" class="to">&nbsp 图 片 &nbsp</a></td>
                    <td width:30%><a href="dupan.html" class="to">&nbsp 度 盘 &nbsp</a></td>
                    <td width:20%><a href="Software.aspx" class="to">&nbsp 软 件 &nbsp</a></td>
                </tr>
                <tr>
                    <td class="style6" rowspan="2"> 
                       <a href="picter.aspx#头像"> <img src="image/portrait/(248).jpg" alt="head" style="height: 240px; width: 240px" title="头像"/></a>
                    </td>
                    <td  > 
                        <a href="dupan.html#D1" target="_blank">权力的游戏前5季<br /></a>
                    </td>
                    <td  > 
                        <a href="Software.aspx#R1" target="_blank">AIDA64<br /></a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="dupan.html#D2" target="_blank">仙剑奇侠传一<br /></a>
                    </td>
                    <td>
                        <a href="Software.aspx#R2" target="_blank">DiskGenius<br /></a>
                    </td>
                </tr>
                <tr>
                    <td  class="style6" rowspan="2"> 
                        <a href="picter.aspx#壁纸"><img src="image/wallpaper/(9).jpg" alt="head" style="height: 180px; width: 280px" title="壁纸"/> </a>
                    </td>
                    <td> 
                        <a href="dupan.html#D3" target="_blank">使命召唤:二战[COD14]<br /></a
                    </td>
                    <td> 
                        <a href="Software.aspx#R3" target="_blank">editPlus5.0<br /></a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="dupan.html#D4" target="_blank">巫师三:狂猎<br /></a>
                    </td>
                    <td>
                        <a href="Software.aspx#R4 " target="_blank">X-mind思维导图工具<br /></a> 
                    </td>
                </tr>
                <tr>
                    <td  class="style6" rowspan="2"> 
                        <a href="picter.aspx#图片"><img src="image/print/(22).jpg" alt="head" style="height: 180px; width: 280px" title="图片"/> </a>
                    </td>
                    <td> 
                        <a href="dupan.html#D5" target="_blank">无人知晓<br /></a>
                    </td>
                    <td> 
                        <a href="Software.aspx#R5 " target="_blank">手机PanDownload<br /></a> 
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="dupan.html#D6" target="_blank"> Love, Death & Robots<br /></a>
                    </td>
                    <td>
                        <a href="Software.aspx#R6" target="_blank"> 吾爱破解工具包<br /></a> 
                    </td>
                </tr>
            </table><br />
        </div>
       
            <img src="image/123.gif" width="100%" height="500" alt="模糊的GIF图" title="模糊的GIF图"/>
        
    </form>
         </body>
</html>
