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
    public partial class ViewBill : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select t1.*,t2.* from Product_Tab t1 join Order_Tab t2 on t1.Product_Id=t2.Product_Id " +
                    "where Cart_Status='available' and Reg_Id= '" + Session["userid"] + "'";
                DataSet ds = obj.Fn_ExeAdapter(s);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                string g = "select * from Bill_Tab where Reg_Id= '"+Session["userid"]+"' and Bill_Status='Nill'";
                SqlDataReader dr = obj.Fn_ExeReader(g);
                while (dr.Read())
                {
                    Label2.Text = dr["Bill_Id"].ToString();
                    Label3.Text = dr["Bill_Date"].ToString();
                    Label6.Text = dr["Grand_Total"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string j = "select Grand_Total from Bill_Tab where Reg_Id= '" + Session["userid"] + "'";
            string y = obj.Fn_Scalar(j).ToString();
            int d = Convert.ToInt32(y);

            check_bal.ServiceClient ob = new check_bal.ServiceClient();
            string bal = ob.balancecheck(TextBox1.Text);
            int w = Convert.ToInt32(bal);
            //Label9.Visible = true;
            //Label9.Text = w;


            if (w > d)
            {
                string a = "select max(Order_Id) from Order_Tab where Reg_Id= '" + Session["userid"] + "'";
                string b = obj.Fn_Scalar(a);
                int count = Convert.ToInt32(b);
                if (count != 0)
                {
                    int pro_id = 0;
                    for (int ab = 1; ab <= count; ab++)
                    {
                        int pro_qty = 0, cart_qty = 0, qty = 0;
                        string stup = "select t1.*,t2.* from Product_Tab t1 join Order_Tab t2 on t1.Product_Id= t2.Product_Id " +
                            "where Reg_Id= '" + Session["userid"] + "'";
                        SqlDataReader dr = obj.Fn_ExeReader(stup);
                        while (dr.Read())
                        {
                            pro_qty = Convert.ToInt32(dr["Product_stock"]);
                            cart_qty = Convert.ToInt32(dr["Cart_quantity"]);
                            pro_id = Convert.ToInt32(dr["Product_Id"]);
                            break;
                        }
                        qty = pro_qty - cart_qty;
                        string sup = "update Product_Tab set Product_stock = " + qty + " where Product_Id=" + pro_id + "";
                        int up = obj.Fn_ExeNonQuery(sup);

                    }
                }
                string f = "update Order_Tab set Order_Status='Payed'";
                int q = obj.Fn_ExeNonQuery(f);

                string t = "update Bill_Tab set Bill_Status='Payed'";
                int r = obj.Fn_ExeNonQuery(t);

                string u = "update Account_Tab set Balance_Amount='" + (w - d) + "' where Reg_Id= '" + Session["userid"] + "'";
                int x = obj.Fn_ExeNonQuery(u);

                string ty = "update Order_Tab set Cart_Status='Unavailable'";
                int fg = obj.Fn_ExeNonQuery(ty);
                Label7.Text = "Payed";
                


            }
        }       
    }
}