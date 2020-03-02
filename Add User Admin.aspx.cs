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
    public partial class Add_User_Admin : System.Web.UI.Page
    {
        public string cnstring = "Data Source=DESKTOP-BQ12MSI;Initial Catalog=Gamer-Management;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add User Admin.aspx");

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Welcome Admin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("User profile admin.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Users.aspx");
        }

        protected void logoutbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string str = "insert into User_profile (email_address, password, first_name, last_name, date_of_birth, access_type, phone_number, department, address,postal_code)values('" + email.Text.ToString() + "','" + password.Text.ToString() + "','" + fntxt.Text.ToString() + "','" + lntxt.Text.ToString() + "','" + dobtxt.Text.ToString() + "','" + DropDownList1.Text.ToString() + "','" + phntxt.Text.ToString() + "','" + DropDownList2.Text.ToString() + "','" + adrstxt.Text.ToString() + "','" + adrstxt0.Text.ToString() + "')";
                SqlCommand cmd = new SqlCommand(str, con);

                cmd.ExecuteNonQuery();
                Response.Redirect("Add User Admin.aspx");
            }
        }
    }
}