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
    public partial class User_Reg_Form : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string str = "select * from State_Tab";
                DataSet ds = obj.Fn_ExeAdapter(str);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "State_Na";
                DropDownList1.DataValueField = "State_Id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "--select--");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
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
            string insadmin = "insert into User_Registration_Tab values(" + reg_id + ",'" + TextBox1.Text + "'," +
                "" + TextBox2.Text + "," +
                "'" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "'," +
                "'" + DropDownList1.SelectedItem.Value + "','" + DropDownList2.SelectedItem.Value + "'," + TextBox6.Text + ")";
            int i = obj.Fn_ExeNonQuery(insadmin);
            if (i != 0)
            {
                string inslogin = "insert into Login_Tab values(" + reg_id + ",'" + TextBox7.Text + "','" + TextBox8.Text + "'," +
                    "'User','Active')";
                int i1 = obj.Fn_ExeNonQuery(inslogin);
                if (i1 == 1)
                {
                    Label13.Visible = true;
                    Label13.Text = "Registration Done Successfully";
                }
            }
        }

        protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {
            string j = "select * from District_Tab where State_Id='" + DropDownList1.SelectedItem.Value + "'";
            DataSet ds = obj.Fn_ExeAdapter(j);
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "Dist_Na";
            DropDownList2.DataValueField = "Dist_Id";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "--select--");
        }


    }
    
}