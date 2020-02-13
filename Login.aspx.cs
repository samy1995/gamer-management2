using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace gamer_management2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string cnstring = "Data Source=DESKTOP-BQ12MSI;Initial Catalog=Gamer-Management;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String name = TextBox1.Text;
            String pass = TextBox2.Text;
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open && TextBox1.Text!=null && TextBox2.Text!=null)
            {
                //SqlCommand cmd1 = new SqlCommand("select email_address from Signup where email_address=name and password=pass",con);
                //SqlDataReader rdr
                string str = "insert into Login (Username, Password)values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "')";
                SqlCommand cmd = new SqlCommand(str, con);

                cmd.ExecuteNonQuery();


                Response.Redirect("Welcome Gamer.aspx");
            }



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("signup.aspx");
        }
    }
}