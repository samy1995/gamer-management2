using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gamer_management2
{
    public partial class Welcome_Host : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = " Welcome \t" + Session["name"].ToString() + " " + Session["Lname"].ToString();
        }

        protected void logoutbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
            Session.Abandon();
            Session.Clear();
            Session.Contents.RemoveAll();
            Response.Redirect("Login.aspx", true);
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
    }
}