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
    public partial class Login : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select count(Reg_Id) from Login_Tab where Username='" + TextBox1.Text + "' " +
                "and Password='" + TextBox2.Text + "'";
            string cid = obj.Fn_Scalar(str);
            int cid1 = Convert.ToInt32(cid);
            if (cid1 == 1)
            {
                string str1 = "select Reg_Id from Login_Tab where Username='" + TextBox1.Text + "'" +
                    "and Password='" + TextBox2.Text + "' ";
                string regid = obj.Fn_Scalar(str1);
                Session["userid"] = regid;
                String str2 = "select Log_Type from Login_Tab where Username='" + TextBox1.Text + "'" +
                    " and Password='" + TextBox2.Text + "' ";
                string logtype = obj.Fn_Scalar(str2);
                if (logtype == "Admin")
                {
                    Response.Redirect("Admin_home_page.aspx");

                }
                else if (logtype == "User")
                {
                    Response.Redirect("User_home_page.aspx");
                }
            
            }

        }


    }
}
