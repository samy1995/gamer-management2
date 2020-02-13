using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gamer_management2
{
    public partial class User_profile_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logoutbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void welcome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome Admin.aspx");
        }

        protected void mpbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("User profile admin.aspx");
        }

        protected void ebtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Edit User Admin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Users.aspx");
        }
    }
}