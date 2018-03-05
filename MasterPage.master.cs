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

public partial class MasterPage : System.Web.UI.MasterPage
{

    public string typeList = "";//成员变量:在类的内部，在方法的外面
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {            //ispostback回传 相当于初始化页面， 判断页面是不是第一次打开，第一次调用页面
            //数据库查询出类别信息
            string sql = "select id,tname from types";
            //SqlConnection conn=new DBHelper().getConn();//如果getConn()是非静态方法，则必须先实例化对象new
            SqlConnection conn = DBHelper.getConn();  //静态方法调用:直接 类名.方法名,第一次调用时生成对象
            SqlDataAdapter sda = new SqlDataAdapter(sql, conn);//DataAdapter数据适配器
            DataSet ds = new DataSet();//创建dataset实例
            sda.Fill(ds);//表
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++) {
                string id = ds.Tables[0].Rows[i]["id"].ToString();//类别id
                string tname = ds.Tables[0].Rows[i]["tname"].ToString();//电影名称
                typeList += "<li><a href=\"sort.aspx?tid=" + id + "\">" + tname + "</a></li>"; //电影分类
            
            }
        }
    }
}
