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
using System.Data.SqlClient;

public partial class content : System.Web.UI.Page
{
    public string hotList = "";
    /// <summary>
    /// 影院热播列表
    /// </summary>
    public string recommmedList = "";
    /// <summary>
    /// 精彩连轴看
    /// </summary>
    public string newList = "";
    /// <summary>
    /// 最新上线
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql1 = "select top 4 id,mname,img,brief,onlinetime from movielist order by playtimes desc";
        hotList = outPutlist(sql1);
        string sql2 = "select top 4 id,mname,img,brief,onlinetime from movielist where isrecommend=1";
        recommmedList = outPutlist(sql2);
        string sql3 = "select top 4 id,mname,img,brief,onlinetime from movielist order by onlinetime desc";
        newList = outPutlist(sql3);



        //if(!IsPostBack)
        //{
        //    HotList(); //影院热播
        //    RecommmedList();//精彩连轴看
        //    NewList();//最新上线
        //}


    }
    private string outPutlist(string sql)
    {
        string outputlist = "";
        DataSet ds = DBHelper.getDataSet(sql);
        int count = ds.Tables[0].Rows.Count;
        for (int i = 0; i < count; i++)
        {
            //拿到数据id、mame、img、onlientime、brief
            string id = ds.Tables[0].Rows[i]["id"].ToString();
            string mname = ds.Tables[0].Rows[i]["mname"].ToString();
            string img = ds.Tables[0].Rows[i]["img"].ToString();
            string brief = ds.Tables[0].Rows[i]["brief"].ToString();
           //字数限制
            if (brief.Length > 50) {
                brief = brief.Substring(0, 48)+"...";
            }
            //日期格式转化
            string onlinetime = ds.Tables[0].Rows[i]["onlinetime"].ToString();
            onlinetime=DateTime.Parse(onlinetime).ToString("yyyy-MM-dd HH:mm:ss");
            string month=onlinetime.Substring(5,2);
            //month = new DateUtil(int.Parse(month));
            //month = month.Substring(0, 3);
            string day=onlinetime.Substring(8,3);

            switch (month)
            {
                case "01":
                    month = "Jan";
                    break;
                case "02":
                    month = "Feb";
                    break;
                case "03":
                    month = "Mar";
                    break;
                case "04":
                    month = "Apr";
                    break;
                case "05":
                    month = "May";
                    break;
                case "06":
                    month = "June";
                    break;
                case "07":
                    month = "july";
                    break;
                case "08":
                    month = "Augb";
                    break;
                case "09":
                    month = "Sept";
                    break;
                case "10":
                    month = "Sept";
                    break;
                case "11":
                    month = "Sept";
                    break;
                case "12":
                    month = "Sept";
                    break;
            }
             
            //}
            
            //日期格式
            outputlist += "<div class=\"span3\"><article><a href=\"play.aspx?id=" + id + "\"><img src=\"" + img + "\" alt=\"\" class=\"imgOpa\"></a><div class=\"date\"><span class=\"day\">" + day + "</span> <span class=\"month\">" + month + "</span></div><h4><a href=\"play.aspx?id=" + id + "\">" + mname + "</a></h4> <a href=\"play.aspx?id=" + id + "\"<p>" + brief + "<a href=\"bloghome.html\" class=\"read-more\">read more <i class=\"icon-angle-right\"></i></a></p></a></article></div>";
        }
        //返回
        return outputlist;
    }
    /// <summary>
    /// 影院热播
    /// </summary>
    //   private void HotList()
    //{
    //    ///查询语句
    //    string sql = "select top 4 id,mname,img,brief,onlinetime from movielist order by playtimes desc";
    //    //连接数据库
    //    DataSet ds = DBHelper.getDataSet(sql);
    //    //SqlConnection conn = DBHelper.getConn();
    //    //SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
    //    //DataSet ds = new DataSet();
    //    //sda.Fill(ds);
    //     //数据库行数
    //    int count = ds.Tables[0].Rows.Count;
    //    for (int i = 0; i < count; i++)
    //    {
    //        //获取id、manme、ima、onlinetime、brief数据
    //        string id = ds.Tables[0].Rows[i]["id"].ToString();
    //        string mname = ds.Tables[0].Rows[i]["mname"].ToString();
    //        string img = ds.Tables[0].Rows[i]["img"].ToString();
    //        string onlinetime = ds.Tables[0].Rows[i]["onlinetime"].ToString();
    //        string brief = ds.Tables[0].Rows[i]["brief"].ToString();
    //        //添加到页面中
    //        hotList += "<div class=\"span3\"><article><img src=\"" + img + "\" alt=\"\" class=\"imgOpa\"><div class=\"date\"><span class=\"day\">15</span> <span class=\"month\">Jan</span></div><h4><a href=\"bloghome.html\">" + mname + "</a></h4> <p>" + brief + "<a href=\"bloghome.html\" class=\"read-more\">read more <i class=\"icon-angle-right\"></i></a></p></article></div>";
    //    }

    //}    
    ///// <summary>
    ///// 精彩连轴看
    ///// </summary>

    //private void RecommmedList()
    //{
    //    //查询语句
    //    string sql = "select top 4 id,mname,img,brief,onlinetime from movielist where isrecommend=1";
    //    //连接数据库
    //    DataSet ds = DBHelper.getDataSet(sql);
    //    //SqlConnection conn = DBHelper.getConn();
    //    //SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
    //    //DataSet ds = new DataSet();
    //    //sda.Fill(ds);
    //    //获取行数
    //    int count = ds.Tables[0].Rows.Count;
    //    for (int i = 0; i < count; i++)
    //    {
    //        //获取id、manme、ima、onlinetime、brief数据
    //        string id = ds.Tables[0].Rows[i]["id"].ToString();
    //        string mname = ds.Tables[0].Rows[i]["mname"].ToString();
    //        string img = ds.Tables[0].Rows[i]["img"].ToString();
    //        string onlinetime = ds.Tables[0].Rows[i]["onlinetime"].ToString();
    //        string brief = ds.Tables[0].Rows[i]["brief"].ToString();
    //        //添加到页面中
    //        recommmedList += "<div class=\"span3\"><article><img src=\"" + img + "\" alt=\"\" class=\"imgOpa\"><div class=\"date\"><span class=\"day\">15</span> <span class=\"month\">Jan</span></div><h4><a href=\"bloghome.html\">" + mname + "</a></h4> <p>" + brief + "<a href=\"bloghome.html\" class=\"read-more\">read more <i class=\"icon-angle-right\"></i></a></p></article></div>";
    //    }
    //}         
    ///// <summary>
    ///// 最新上线
    ///// </summary>

    //private void NewList()
    //{
    //    //查询语句
    //    string sql = "select top 4 id,mname,img,brief,onlinetime from movielist order by onlinetime desc";
    //    DataSet ds = DBHelper.getDataSet(sql);
    //    //SqlConnection conn = DBHelper.getConn();
    //    //SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
    //    //DataSet ds = new DataSet();
    //    //sda.Fill(ds);
    //    int count = ds.Tables[0].Rows.Count;
    //    for (int i = 0; i < count; i++)
    //    {
    //        string id = ds.Tables[0].Rows[i]["id"].ToString();
    //        string mname = ds.Tables[0].Rows[i]["mname"].ToString();
    //        string img = ds.Tables[0].Rows[i]["img"].ToString();
    //        string onlinetime = ds.Tables[0].Rows[i]["onlinetime"].ToString();
    //        string brief = ds.Tables[0].Rows[i]["brief"].ToString();
    //        newList += "<div class=\"span3\"><article><img src=\"" + img + "\" alt=\"\" class=\"imgOpa\"><div class=\"date\"><span class=\"day\">15</span> <span class=\"month\">Jan</span></div><h4><a href=\"bloghome.html\">" + mname + "</a></h4> <p>" + brief + "<a href=\"bloghome.html\" class=\"read-more\">read more <i class=\"icon-angle-right\"></i></a></p></article></div>";
    //    }
    //}

    //定义一个公共方法getlist
}



