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
            HttpCookie loginStatusCookie = Request.Cookies["login_status"];
            if (loginStatusCookie != null && loginStatusCookie.Value == "1")
            {
                //User did not log out explicitly.
                //Display timeout message.
                Response.Write("Login Successfull..!!");
            }
            else
            {
                //User either logged out or it is his/her first visit.
                //Display usual greeting.
                //Response.Write("Logout Successfull..!!");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String name = TextBox1.Text;
            String pass = TextBox2.Text;
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open && TextBox1.Text!=null && TextBox2.Text!=null)
            {
                //SqlCommand cmd1 = new SqlCommand("select email_address from Signup where email_address=name and password=pass",con);
                //SqlDataReader rdr
               // string str = "insert into Login (Username, Password)values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "')";
                
                //cmd.CommandText 
                string str = "SELECT email_address,password,First_name,last_name FROM Signup where email_address='" + name + "' and password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(str, con);
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session.Add("email_address", dt.Rows[0][0].ToString());
                    Session.Add("password", dt.Rows[0][1].ToString());
                    
                    Session["Name"] = dt.Rows[0][2].ToString();
                    Session["Lname"] = dt.Rows[0][3].ToString();
                    
                    Response.Redirect("~/Welcome Gamer.aspx", false);
                }
                else
                {
                    Label5.Text = "Invalid username or password";
                }
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