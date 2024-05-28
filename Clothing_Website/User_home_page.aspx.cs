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
    public partial class User_home_page : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string str = "select * from Category_Table";
                DataSet ds = obj.Fn_ExeAdapter(str);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            Session["Id"] = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("View_Products.aspx");


        }

        
    }
}