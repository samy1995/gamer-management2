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
    public partial class User_profile_req : System.Web.UI.Page
    {
        public string cnstring = "Data Source=DESKTOP-BQ12MSI;Initial Catalog=Gamer-Management;Integrated Security=True";
        private readonly object Pending;
        int n=0;
        protected void Page_Load(object sender, EventArgs e)
        {


            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(cnstring);
            String s, p;
            String temp = null;

            var sb = new System.Text.StringBuilder();
            con.Open();


            if (!this.IsPostBack)
            {

                //string str = "SELECT Signup.email_address, Signup.password, Signup.first_name, Signup.last_name, Signup.date_of_birth/*, User_profile.access_type, User_profile.phone_number, User_profile.department, User_profile.address*/ FROM Signup /*INNER JOIN User_profile ON Signup.User_id = User_profile.User_id */ where email_address='" + Session["email_address"] + "'";

                String str = "SELECT * from User_profile WHERE email_address='" + Session["email_address"] + "'";
                SqlCommand cmd = new SqlCommand(str, con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataSet ds = new DataSet();

                da.Fill(ds);

               
                    email.Text = ds.Tables[0].Rows[0]["email_address"].ToString();

                    s = ds.Tables[0].Rows[0]["password"].ToString();


                    for (int i = 0; i < s.Length; i++)
                    {
                        temp = s.Replace(s[i], '*');
                        sb.Append(temp[i].ToString());
                    }
                    password.Text = sb.ToString();
                    fntxt.Text = ds.Tables[0].Rows[0]["first_name"].ToString();

                    lntxt.Text = ds.Tables[0].Rows[0]["last_name"].ToString();

                    dobtxt.Text = ds.Tables[0].Rows[0]["date_of_birth"].ToString();
                    DropDownList1.Text = ds.Tables[0].Rows[0]["access_type"].ToString();

                    phntxt.Text = ds.Tables[0].Rows[0]["phone_number"].ToString();

                    DropDownList2.Text = ds.Tables[0].Rows[0]["department"].ToString();

                    adrstxt.Text = ds.Tables[0].Rows[0]["address"].ToString();
                    adrstxt0.Text = ds.Tables[0].Rows[0]["postal_code"].ToString();


                }
           
        }

        protected void logoutbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Welcome Gamer.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("User profile req.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                String str = "INSERT INTO Request (Request_Status,email_address,User_id) VALUES ('Pending', '" + email.Text.ToString() + "','"+ n +"')";
                SqlCommand cmd = new SqlCommand(str, con);

                cmd.ExecuteNonQuery();
                Button3.Visible = false;
                Txt_Msg.Visible = true;
                Txt_Msg.Text = "Request Submitted Successfully and Waiting for Approval...!!";
            }
            else
            {
                Button3.Visible = true;
                Txt_Msg.Visible = false;
                
            }
        }

        protected void ebtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string str = "UPDATE User_profile SET email_address =  '" + email.Text.ToString() + "', password = '" + password.Text.ToString() + "', first_name = '" + fntxt.Text.ToString() + "', last_name = '" + lntxt.Text.ToString() + "', date_of_birth = '" + dobtxt.Text.ToString() + "', access_type = '" + DropDownList1.Text.ToString() + "', phone_number = '" + phntxt.Text.ToString() + "', department = '" + DropDownList2.Text.ToString() + "', address= '" + adrstxt.Text.ToString() + "', postal_code='" + adrstxt0.Text.ToString() + "' WHERE email_address = '" + Session["email_address"] + "'";

                /*ON DUPLICATE email_address Update access_type='" + DropDownList1.Text.ToString() + "', phone_number='" + phntxt.Text.ToString() + "', department='" + DropDownList2.Text.ToString() + "', address = '" + adrstxt.Text.ToString() + "',postal_code = '" + adrstxt0.Text.ToString() + "'*/
                //string str = "begin tran if exists(select * from User_profile with (updlock, serializable) where User_id LIKE '%' + @USER_ID + '%') begin update User_profile set email_address =  email.Text.ToString(), password = password.Text.ToString(), first_name = fntxt.Text.ToString(), last_name = lntxt.Text.ToString(), date_of_birth = dobtxt.Text.ToString(), access_type =DropDownList1.Text.ToString(), phone_number = phntxt.Text.ToString(), department = DropDownList2.Text.ToString(), address = adrstxt.Text.ToStrinng() where email_address = LIKE '%' + @email_address + '%' end else begin insert into User_profile (email_address, password, first_name, last_name, date_of_birth, access_type, phone_number, department, address, postal_code)values('" + email.Text.ToString() + "','" + password.Text.ToString() + "','" + fntxt.Text.ToString() + "','" + lntxt.Text.ToString() + "','" + dobtxt.Text.ToString() + "','" + DropDownList1.Text.ToString() + "','" + phntxt.Text.ToString() + "','" + DropDownList2.Text.ToString() + "','" + adrstxt.Text.ToString() + "','" + adrstxt0.Text.ToString() + "') end commit tran";
                //string str = "IF EXISTS (SELECT email_address FROM User_profile WHERE email_address ='" +email.Text.ToString()+"') THEN UPDATE User_profile SET email_address =  '" + email.Text.ToString() + "', password = '" + password.Text.ToString() + "', first_name = '" + fntxt.Text.ToString() + "', last_name = '" + lntxt.Text.ToString() + "', date_of_birth = '" + dobtxt.Text.ToString() + "', access_type = '" + DropDownList1.Text.ToString() + "', phone_number = '" + phntxt.Text.ToString() + "', department = '" + DropDownList2.Text.ToString() + "', address= '" + adrstxt.Text.ToString() + "', postal_code='" + adrstxt0.Text.ToString() + "' WHERE email_address = '" + Session["email_address"] +"'";
                SqlCommand cmd = new SqlCommand(str, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();

                da.Fill(ds);


            }
            else
            {
                string str = "insert into User_profile (email_address, password, first_name, last_name, date_of_birth, access_type, phone_number, department, address, postal_code)values('" + email.Text.ToString() + "','" + password.Text.ToString() + "','" + fntxt.Text.ToString() + "','" + lntxt.Text.ToString() + "','" + dobtxt.Text.ToString() + "','" + DropDownList1.Text.ToString() + "','" + phntxt.Text.ToString() + "','" + DropDownList2.Text.ToString() + "','" + adrstxt.Text.ToString() + "','" + adrstxt0.Text.ToString() + "')";

                Label1.Text = "Profile Updated Successfully...!!";
                Response.Redirect("User profile.aspx");

            }
        }
    }
}




//try
//{
//    String Status = "";
//    String str = "SELECT * from Request WHERE User_id='" + n + "'";
//    SqlCommand cmd = new SqlCommand(str, con);

//    SqlDataAdapter da = new SqlDataAdapter(cmd);

//    DataSet ds = new DataSet();

//    da.Fill(ds);
//    Status = ds.Tables[0].Rows[0]["Request_Status"].ToString();

//    if (Status == "Approved")
//    {
//        Button3.Visible = false;
//        Txt_Msg.Visible = false;

//    }

//    if (Status == "pending")
//    {
//        Button3.Visible = false;
//        Txt_Msg.Visible = true;
//        Txt_Msg.Text = "Request Pending";
//    }


//    if (Status == "Declined")
//    {
//        Button3.Visible = true;
//        Txt_Msg.Visible = false;

//    }


//}
//catch
//{

//}