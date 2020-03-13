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
        //public int User_id { get; set; }
        //public string first_name { get; set; }
        //public string last_name { get; set; }
        //public string department { get; set; }
        //public string access_type { get; set; }

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

        protected void Button9_Click1(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox status = (row.Cells[3].FindControl("CheckBox1") as CheckBox);
                int User_id = Convert.ToInt32(row.Cells[1].Text);
                if (status.Checked)
                {
                    updaterow1(User_id);
                }
                
            }
            Label5.Text = "Applications Has Been Deleted Successfully";
            GridView1.DataBind();
        }
        private void updaterow1(int User_id)
        {
            String updatedata = "delete from User_profile where User_id='" + User_id + "'";
            String updatedata1 = "delete from Signup where User_id='" + User_id + "'";
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = updatedata1;
            cmd1.Connection = con;
            cmd1.ExecuteNonQuery();
        }
    }
 }



//foreach (GridViewRow item in GridView1.Rows)
//{
//    if (bool.Parse(item.Cells[0].ToString()))
//    {
//        Label5.Text = "Rows Selected : " + item.Cells[0].Text.ToString();
//    }
//}

//foreach (GridViewRow row in GridView1.Rows)
//{
//    CheckBox chck = (CheckBox)row.FindControl("chck");
//    SqlConnection con = new SqlConnection(cnstring);
//    con.Open();
//    //Check if the checkbox is checked.
//    //value in the HtmlInputCheckBox's Value property is set as the //value of the delete command's parameter.
//    if (chck.Checked)
//    {
//        string str = "delete from User_profile where User_id = @User_id";
//        SqlCommand cmd = new SqlCommand(str, con);
//        cmd.CommandText = str;
//        cmd.Connection = con;
//        da.SelectCommand = cmd;
//        ///Retreive the Employee ID
//        int user_id = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);
//        //// Pass the value of the selected Employye ID to the Delete //command.
//        SqlDataSource1.DeleteParameters["user_id"].DefaultValue = user_id.ToString();
//        //SqlDataSource1.Delete();
//    }
//}


//SqlConnection con = new SqlConnection(cnstring);
//con.Open();
//SqlDataAdapter da = new SqlDataAdapter();
//DataTable dt = new DataTable();

//dt = new DataTable();
//da.Fill(dt);

//GridView1.DataBind();
//foreach (GridViewRow grow in GridView1.Rows)
//{
//    //Searching CheckBox("chkDel") in an individual row of Grid  
//    CheckBox chck = (CheckBox)grow.FindControl("chck");
//    //If CheckBox is checked than delete the record with particular empid  
//    if (chck.Checked)
//    {
//        string str = "delete from User_profile where first_name = @first_name";
//        SqlCommand cmd = new SqlCommand(str, con);
//        cmd.CommandText = str;
//        cmd.Connection = con;
//        da.SelectCommand = cmd;
//        cmd.Parameters.AddWithValue("first_name", TextBox1.Text);
//        dt = new DataTable();
//        da.Fill(dt);

//        GridView1.DataBind();
//        cmd.ExecuteNonQuery();
//    }
//}
////Displaying the Data in GridView  

//dt = new DataTable();
//da.Fill(dt);


//protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
//{
//    if (e.CommandName == "Delete Row")
//    {
//        int crow;
//        crow = Convert.ToInt32(e.CommandArgument.ToString());
//        string User_id = GridView1.Rows[crow].Cells[0].Text;
//        deleterowdata(User_id);
//    }
//}
