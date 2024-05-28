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
    public partial class Edit_Category : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            gridbind();

        }

        public void gridbind()
        {
            string sel = "select * from Category_Table";
            DataSet ds = obj.Fn_ExeAdapter(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Path = "~/Photo/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(Path));

            string selupdate = "update Category_Table set Category_photo='" + Path + "'" +
                ",Category_description='" + TextBox1.Text + "' where Category_Id='" + Session["Id"] + "'";
            int i = obj.Fn_ExeNonQuery(selupdate);
            if (i == 1)
            {
                Label3.Visible = true;
                Label3.Text = "updated";
                gridbind();
            }
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            Panel1.Visible = true;
            Session["Id"] = Convert.ToInt32(e.CommandArgument);
            string sel1 = "select * from Category_Table where Category_Id=" + Session["Id"] + "";
            SqlDataReader dr = obj.Fn_ExeReader(sel1);
            while(dr.Read())
            {
                TextBox1.Text = dr["Category_description"].ToString();
            }
        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string sel2 = "select Category_status from Category_Table where Category_Id='" + id + "'";
            string a = obj.Fn_Scalar(sel2);
            if (a == "available")
            {
                string updatestatus = "update  Category_Table set Category_status='unavailable' where Category_Id='" + id + "'";
                int u = obj.Fn_ExeNonQuery(updatestatus);
                gridbind();
            }
            else if (a == "Unavailable")
            {
                string upstat = "update Category_Table set Category_status='available' where Category_Id='" + id + "'";
                int h = obj.Fn_ExeNonQuery(upstat);
                gridbind();
            }

        }

        protected void LinkButton3_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string d = "delete from Category_Table where Category_Id='" + id + "'";
            int g = obj.Fn_ExeNonQuery(d);
            if (g == 1)
            {
                gridbind();
            }
        }
    }
}