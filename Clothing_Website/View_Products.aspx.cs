using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Clothing_Website
{
    public partial class View_Products : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string str = "select * from Product_Tab where Category_Id=" + Session["Id"] + "";
                DataSet ds = obj.Fn_ExeAdapter(str);
                DataList1.DataSource = ds;
                DataList1.DataBind();
                    
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            Session["id"] = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("View_Single_Product.aspx");
        }
    }
}