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
    
    public partial class Add_Product : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string str = "select * from Category_Table";
                DataSet ds = obj.Fn_ExeAdapter(str);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "Category_name";
                DropDownList1.DataValueField = "Category_Id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0,"--select--");
                   

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path = "~/Photo/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(path));

            string strins = "insert into Product_Tab values('"+DropDownList1.SelectedItem.Value+"'" +
                ",'"+TextBox1.Text+ "','" + TextBox2.Text + "','" + path+"',"+TextBox3.Text+"," +
                ""+TextBox4.Text+",'available')";
            int i = obj.Fn_ExeNonQuery(strins);
            if(i!=0)
            {
                Label7.Visible = true;
                Label7.Text = "Product Added";
            }
        }
    }
}