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
    public partial class View_Single_Product : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = "select * from Product_Tab where Product_Id=" + Session["id"] + "";
            SqlDataReader dr = obj.Fn_ExeReader(str);
            while(dr.Read())
            {
                Label1.Text = dr["Product_name"].ToString();
                Label2.Text = dr["Product_details"].ToString();
                Label3.Text = dr["Product_price"].ToString();
                Image1.ImageUrl = dr["Product_photo"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select max(Cart_Id) from  Cart_Tab";
            string cartid = obj.Fn_Scalar(str);
            int cart_id = 0;
            if(cartid=="")
            {
                cart_id = 1;
            }
            else
            {
                int cart = Convert.ToInt32(cartid);
                cart_id = cart + 1;
            }

            string str1 = "select Product_price from Product_Tab where Product_Id='" + Session["id"] + "' ";
            string s = obj.Fn_Scalar(str1);
            int i = Convert.ToInt32(TextBox1.Text);
            int i1 = Convert.ToInt32(s);
            int total_price = i * i1;
            string strinsert = "insert into Cart_Tab values("+ cart_id + ","+ Session["id"] + ","+ Session["userid"] + "," +
                "'"+TextBox1.Text+"','"+total_price+"','available')";
            int j = obj.Fn_ExeNonQuery(strinsert);
            if(j==1)
            {
                Label4.Visible = true;
                Label4.Text = "Added to cart";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_home_page.aspx");
        }
    }
}