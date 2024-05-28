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
    public partial class Add_Category : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path = "~/Photo/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(path));
            string strinsrt = "insert into Category_Table values('" + TextBox1.Text + "'," +
                "'" + path + "','" + TextBox2.Text + "','available')";
            int i=obj.Fn_ExeNonQuery(strinsrt);
            if(i!=0)
            {
                Label4.Visible = true;
                Label4.Text = "Inserted Successfully";
            }
        }
    }
}