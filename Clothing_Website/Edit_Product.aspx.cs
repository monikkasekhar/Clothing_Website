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
    public partial class Edit_Product : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridbind();
            }
        }

        public void gridbind()
        {
            string sel = "select * from Product_Tab";
            DataSet ds = obj.Fn_ExeAdapter(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();


        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {

            Panel1.Visible = true;
            Session["Id"] = Convert.ToInt32(e.CommandArgument);
            string sel1 = "select * from Product_Tab where Product_Id='" + Session["Id"] + "'";
            SqlDataReader dr = obj.Fn_ExeReader(sel1);
            while (dr.Read())
            {
                Label6.Text = dr["Product_name"].ToString();
                TextBox1.Text= dr["Product_details"].ToString();
                TextBox2.Text = dr["Product_price"].ToString();
                TextBox3.Text = dr["Product_stock"].ToString();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Path = "~/Photo/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(Path));

            string selupdate = "update Product_Tab set Product_details='" + TextBox1.Text + "',Product_photo='" + Path+ "'," +
                "Product_price='"+TextBox2.Text+ "',Product_stock='"+TextBox3.Text+ "'  where Product_Id='" + Session["Id"] + "'";
            int i = obj.Fn_ExeNonQuery(selupdate);
            if (i == 1)
            {
                Label7.Visible = true;
                Label3.Text = "updated";
                gridbind();
            }

        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string sel2 = "select Product_status from Product_Tab where Product_Id='" + id + "'";
            string a = obj.Fn_Scalar(sel2);
            int i1 = obj.Fn_ExeNonQuery(sel2);
            if (a == "available")
            {
                string updatestatus = "update  Product_Tab set Product_status='Unavailable' where Product_Id='" + id + "'";
                int i = obj.Fn_ExeNonQuery(updatestatus);
                gridbind();
            }
            else if (a == "Unavailable")
            {
                string upstat = "update Product_Tab set Product_status='Available' where Product_Id='" + id + "'";
                int h = obj.Fn_ExeNonQuery(upstat);
                gridbind();
            }
        }

        protected void LinkButton3_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string d = "delete from Product_Tab where Product_Id='" + id + "'";
            int g = obj.Fn_ExeNonQuery(d);
            if (g == 1)
            {
                gridbind();
            }
        }
    }
}