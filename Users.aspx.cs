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
   
    public partial class Users : System.Web.UI.Page
    {
        public string cnstring = "Data Source=DESKTOP-BQ12MSI;Initial Catalog=Gamer-Management;Integrated Security=True";
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string str = "Select  * from User_profile where first_name like '%' + @first_name + '%' AND department like '%' + @department + '%'";
                SqlCommand cmd = new SqlCommand(str, con);
                cmd.CommandText = str;
                cmd.Connection = con;
                da.SelectCommand = cmd;
                cmd.Parameters.AddWithValue("first_name", TextBox1.Text);
                cmd.Parameters.AddWithValue("department", DropDownList1.Text);
                dt = new DataTable();
                da.Fill(dt);
                
                GridView1.DataBind();
                cmd.ExecuteNonQuery();
            }
            con.Close();
            
                
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome Host.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("User profile.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Users.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }
    }

}