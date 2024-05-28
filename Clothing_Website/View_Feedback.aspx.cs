using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

namespace Clothing_Website
{
    public partial class View_Feedback : System.Web.UI.Page
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
            string s = "select * from Feedback where Status ='pending'";
            DataSet ds = obj.Fn_ExeAdapter(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            SendEmail2("Monikka", "s.monikkasekhar@gmail.com", "lmhb kktg szoq tbfa", "'" + Label2.Text + "'",
                "" + Label7.Text + "", "feedback Reply", "'" + TextBox1.Text + "'");
            string s = "update Feedback set Feedback_Replay='" + TextBox1.Text + "',Status='Sent'" +
                " where Feedback_Id='" + Session["fid"] + "'";
            int u = obj.Fn_ExeNonQuery(s);
            if (u == 1)
            {
                gridbind();
                Panel1.Visible = false;
              

            }
        }


        
        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            Panel1.Visible = true;
            int i = Convert.ToInt32(e.CommandArgument);
            Session["fid"] = i;
            string f = "select t1.*,t2.* from Feedback t1 join User_Registration_Tab t2 on t1.User_Id = t2.User_Id" +
                " where Feedback_Id='" + i + "'";
            SqlDataReader dr = obj.Fn_ExeReader(f);
            while (dr.Read())
            {
                Label2.Text = dr["User_Name"].ToString();
                Label7.Text = dr["User_Email"].ToString();
            }
        }

        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword,
            string toName, string toEmail, string subject, string body)
        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }


        }
    }
}