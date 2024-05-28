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
    public partial class ViewCart : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();

        int Cid;
        int cquantity;
        int ctotal;
        string cstatus;
        int usid;
        int productid;
        int gtotal = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            gridbind();
        }
        public void gridbind()
        {
            string s = "select t1.*,t2.* from Cart_Tab t1 join Product_Tab t2 on t1.Product_Id=t2.Product_Id " +
                "where Reg_Id= '"+ Session["userid"]+ "'";
            DataSet ds = obj.Fn_ExeAdapter(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            Panel1.Visible = true;
            Session["cart_id"] = Convert.ToInt32(e.CommandArgument);
        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e)
        {
            int i = Convert.ToInt32(e.CommandArgument);
            string d = "delete from Cart_Tab where Cart_Id='"+i+"'";
            int g = obj.Fn_ExeNonQuery(d);
            gridbind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string max = "select max(Cart_Id) from Cart_Tab";
            string j = obj.Fn_Scalar(max);
            int u = Convert.ToInt32(j);
            for (int i = 1; i <= u; i++)
            {
                string h = "select Reg_Id from Cart_Tab where Cart_Id=" + i + "";
                string st = obj.Fn_Scalar(h);
                int ju = Convert.ToInt32(st);
                int id = Convert.ToInt32(Session["userid"]);
                if (id == ju)
                {
                    string ca = "select * from Cart_Tab where Cart_Id=" + i + "";
                    SqlDataReader dr = obj.Fn_ExeReader(ca);

                    while (dr.Read())
                    {
                        Cid = Convert.ToInt32(dr["Cart_Id"].ToString());
                        cquantity = Convert.ToInt32(dr["Cart_quantity"].ToString());
                        ctotal = Convert.ToInt32(dr["Cart_total"].ToString());
                        cstatus = dr["Cart_status"].ToString();
                        usid = Convert.ToInt32(dr["Reg_Id"].ToString());
                        productid = Convert.ToInt32(dr["Product_Id"].ToString());

                    }
                    gtotal = gtotal + ctotal;
                    string ins = "insert into Order_Tab values('Not Payed'," + Cid + "," + cquantity + "," + ctotal + "," +
                        "'" + cstatus + "'," + usid + "," + productid + ")";
                    int y = obj.Fn_ExeNonQuery(ins);
                }

            }
            string bill = "insert into Bill_Tab values('" + DateTime.Now.ToString("yyyy-MM-dd") + "','Nill'," + usid + "," + gtotal + ")";
            int g = obj.Fn_ExeNonQuery(bill);
            if (g != 0)
            {
                string del = "delete from Cart_Tab where Reg_Id= '" + Session["userid"] + "'";
                int gh = obj.Fn_ExeNonQuery(del);

            }
            Response.Redirect("ViewBill.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            string t = "select t2.Product_price from Product_Tab t2 join Cart_Tab t1 on t1.Product_Id=t2.Product_Id" +
                " where t1.Cart_Id='"+ Session["cart_id"] + "'";
            string f = obj.Fn_Scalar(t);
            int q = Convert.ToInt32(TextBox1.Text);
            int p = Convert.ToInt32(f);
            int t_price = q * p;
            string update = "update Cart_Tab set Cart_quantity='"+TextBox1.Text+ "',Cart_total='"+ t_price + "' " +
                "where Cart_Id='" + Session["cart_id"] + "' ";
            int i = obj.Fn_ExeNonQuery(update);
            if(i==1)
            {
                gridbind();
                Label2.Visible = true;
                Label2.Text = "Success";
            }

        }
    }
}
