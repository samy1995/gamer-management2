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
    public partial class User_Admin : System.Web.UI.Page
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
                string str = "Select * from user_profile where first_name like '%' + @first_name + '%'";
                SqlCommand cmd = new SqlCommand(str, con);
                cmd.CommandText = str;
                cmd.Connection = con;
                da.SelectCommand = cmd;
                cmd.Parameters.AddWithValue("first_name", TextBox1.Text);
                dt = new DataTable();
                da.Fill(dt);
                
                GridView1.DataBind();
                cmd.ExecuteNonQuery();
            }


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome Admin.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("User profile admin.aspx");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Users.aspx");
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            Response.Redirect("Access Request.aspx");
        }
    }

}