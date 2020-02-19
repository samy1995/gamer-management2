using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace gamer_management2
{
    public partial class signup : System.Web.UI.Page
    {
        public string cnstring = "Data Source=DESKTOP-BQ12MSI;Initial Catalog=Gamer-Management;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
            
        {
            Random ra = new Random();
            int noc = ra.Next(6,6);
            string cap = "";
            int tot = 0;
            do
            {
                int ch = ra.Next(48, 123);
                if ((ch >= 48 && ch <= 57) || (ch >= 65 && ch <= 90) || (ch >= 97 && ch <= 122))
                {
                    cap = cap + (Char)ch;
                    tot++;
                    if (tot == noc)
                        break;
                }

            }
            while (true);
            Label9.Text = cap;

                

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open) 
            {
                string str = "insert into signup (email_address, password, confirm_password, first_name, last_name, date_of_birth, Captcha)values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + TextBox6.Text.ToString() + "','" + TextBox7.Text.ToString() + "')";
                SqlCommand cmd = new SqlCommand(str, con);

                cmd.ExecuteNonQuery();
                

                Response.Redirect("Login.aspx");
            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {

                Response.Redirect("Login.aspx");
            }
        }
}