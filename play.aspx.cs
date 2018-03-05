using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class play : System.Web.UI.Page
{

    //1.接收查询字符串url的参数id
    public string mname = "";//电影名称
    public string murl = "";//电影地址
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)//回传页，初始化页面
        {       //2.根据id查询详细内容
            string id = Request.QueryString["id"];//获取请求页传过来的值id
            if (id==null||id.Equals(""))
            {
                Response.Redirect("index.aspx");
                return;
            }
            string sql = "SELECT  [id],[mname],url FROM [movies].[dbo].[movielist]  where [id]=" + id; //查询跟请求页id相同的id和name
            DataSet ds = DBHelper.getDataSet(sql);//执行查询语句返回数据集
            int cnt = ds.Tables[0].Rows.Count;//数据行数 
            if (0 == cnt)
            {
                Response.Redirect("index.aspx");   //没有数据的话重定向页面
            }
            else         //3.取出内容，显示到页面上
            {
                //5.修改index和sort的影片图片和名称的超链接，给出id参数
                
                    mname = ds.Tables[0].Rows[0]["mname"].ToString();//否则的话取出mname赋到页面上
                    murl = ds.Tables[0].Rows[0]["url"].ToString();//取出url
                    ptAdd(id);         //并且增加一次点击量
            }
        }
    }

     //4.播放次数+1
    //当点击一次增加播放量
    private void ptAdd(string id) //传进参数id
    {
        string sql = "update [dbo].[movielist] set [playtimes] = [playtimes] +1 where id=" +id; //添加语句
        DBHelper.nonSql(sql); //执行增加语句  返回受影响的行数
    }
   
}
