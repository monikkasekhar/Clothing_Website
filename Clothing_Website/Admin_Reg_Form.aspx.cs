using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clothing_Website
{
    public partial class Admin_Reg_Form : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sel = "select max(Reg_Id) from Login_Tab";
            string regid = obj.Fn_Scalar(sel);
            int reg_id = 0;
            if (regid == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(regid);
                reg_id = newregid + 1;
            }
            string insadmin = "insert into AdminReg_Tab values(" + reg_id + ",'" + TextBox1.Text + "'," +
                "'" + TextBox2.Text + "','" + TextBox3.Text + "')";
            int i = obj.Fn_ExeNonQuery(insadmin);
            if (i != 0)
            {
                string inslogin = "insert into Login_Tab values(" + reg_id + ",'" + TextBox4.Text + "'," +
                    "'" + TextBox5.Text + "','Admin','Active')";
                int i1 = obj.Fn_ExeNonQuery(inslogin);
                if (11 != 0)
                {
                    Label7.Visible = true;
                    Label7.Text = "Registration done successfully";
                }
            }

        }
    }
}