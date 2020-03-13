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
    public partial class Access_Request : System.Web.UI.Page
    {
        public string cnstring = "Data Source=DESKTOP-BQ12MSI;Initial Catalog=Gamer-Management;Integrated Security=True";
       
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    SqlDataAdapter da = new SqlDataAdapter();
            //    DataTable dt = new DataTable();
            //    SqlDataSource1.DataBind();
            //    GridView1.DataSource = SqlDataSource1;

            //}

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void btn_Welcome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome Admin");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("user profile admin.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("User Admin.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Access Request.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox status = (row.Cells[3].FindControl("CheckBox1") as CheckBox);
                int Request_id = Convert.ToInt32(row.Cells[1].Text);
                if (status.Checked)
                {
                    updaterow(Request_id, "Approved");
                }
                else
                {
                    updaterow(Request_id, "pending");

                }
            }
            Label5.Text = "Applications Has Been Approved Successfully";
            GridView1.DataBind();
        }
        private void updaterow(int User_id, String approved)
        {
            String updatedata = "Update Request set Request_Status='" + approved + "' where User_id='" + User_id +"'";
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox status = (row.Cells[3].FindControl("CheckBox1") as CheckBox);
                int Request_id = Convert.ToInt32(row.Cells[1].Text);
                if (status.Checked)
                {
                    updaterow1(Request_id, "Declined");
                }
                else
                {
                    updaterow1(Request_id, "pending");

                }
            }
            Label5.Text = "Applications Has Been Declined Successfully";
            GridView1.DataBind();
        }
        private void updaterow1(int User_id, String declined)
        {
            String updatedata = "Update Request set Request_Status='" + declined + "' where User_id='" + User_id + "'";
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }
    }
 }


//foreach (GridViewRow row in GridView1.Rows)
//{
//    CheckBox chck = (CheckBox)row.FindControl("chck");
//    SqlConnection con = new SqlConnection(cnstring);
//    con.Open();
//    //Check if the checkbox is checked.
//    //value in the HtmlInputCheckBox's Value property is set as the //value of the delete command's parameter.
//    if (chck.Checked)
//    {
//        string str = "UPDATE User_profile SET access_type = 'Host' WHERE User_id = @User_id ";
//        SqlCommand cmd = new SqlCommand(str, con);
//        cmd.CommandText = str;
//        cmd.Connection = con;
//        da.SelectCommand = cmd;
//        ///Retreive the Employee ID
//        int user_id = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);
//        // Pass the value of the selected Employye ID to the Delete //command.
//        //SqlDataSource1.DeleteParameters["user_id"].DefaultValue = user_id.ToString();
//        //SqlDataSource1.Delete();
//    }
//}