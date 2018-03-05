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

public partial class sort : System.Web.UI.Page
{
    public string sortMovies = "";//分类电影输出
    public string tName = "";//类别名称
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)//回传，判断页面是不是第一次打开，初始化页面
        {
            string tid = Request.QueryString["tid"];//获取请求页传过来的值这里是tid
            string sql;
            if (tid == null)//判断传过来的值是否为空，如果为空执行sql语句查询全部电影
            {
                //没有参数,即查询全部电影
                sql = "select m.id,mname,img,playtimes,tname from movielist m inner join types t on m.tid=t.id ";
                //select from inner join on  sql联结查询 m 、t为取得两张表名、  join on内连接 后面跟条件
                //此处查询出来是电影id,mname,img,playtimes,tname
            }
            else
            {
                //有参数，有参数还分3种情况：1.有类别有数据，2.有此类别但无数据，3.没有此类别无数据。2种情况没有数据
                sql = "select m.id,mname,img,playtimes,tname from movielist m inner join types t on m.tid=t.id where tid=" + tid;
                //此处查询where附加条件查询表中id和传过来的id相等的数据
            }
            DataSet ds = DBHelper.getDataSet(sql);//执行查询语句
            int cnt = ds.Tables[0].Rows.Count;//获取表行数
            if (cnt == 0 && tid!=null)//判断数据库中是否有数据，如果行数为0表明没有数据      //排除数据库查询时，一条语句都没有的情况。tid==null的情况
            {
                //没有数据
                sql = "select id,tname from types where id=" + tid;//没有数据的情况下查询
                DataSet dsTypes = DBHelper.getDataSet(sql);//执行语句
                int cntTypes = dsTypes.Tables[0].Rows.Count;//获取类别行数
                if (cntTypes == 0)//判断类别行数是否为0
                {
                    //没有类别
                    Response.Write("<script>alert('没有此类别');<script>");//弹出没有此类别
                    Response.Redirect("~/sort.aspx");//重定向页面
                }
                else //否则是有类别的情况 
                {
                    //有类别
                    tName = ">>" + dsTypes.Tables[0].Rows[0]["tname"].ToString(); //获取类别名称
                }
                return;//返回   
            }
            //有类别显示类别，遍历表行数
            for (int i = 0; i < cnt; i++)
            {
                 //获取表中的数据
                string id = ds.Tables[0].Rows[i]["id"].ToString();
                string img = ds.Tables[0].Rows[i]["img"].ToString();
                string mname = ds.Tables[0].Rows[i]["mname"].ToString();
                string playtimes = ds.Tables[0].Rows[i]["playtimes"].ToString();
                tName = ">>" + ds.Tables[0].Rows[i]["tname"].ToString();
                //向页面输出
                sortMovies += "<div class=\"movie left\"><a href=\"play.aspx?id="+id+"\"><img src=\"" + img + "\" width=\"170\" height=\"130\"/></a><br/><a herf=\"play.aspx?id="+id+"\">" + mname + "</a><span class=\"right\" style=\"margin-right:20px; color: #F63\">7.7</span><br><img src=\"images/list_good.png\">20<span style=\"margin-top:10px; margin-left:10px; font-size:15px;\">播放次数<small style=\"color:red\"> " + playtimes + "</small></span></div>"; ;

            }
            //如果参数为空，即全部电影
            if (tid == null)
            {
                tName = "";
            }
        }
    }
}
