using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YellowMotors
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Signup(object sender, EventArgs e)
        {
            string uid = Suid.Text;
            string pwd = Cspwd.Text;
            string name = Sname.Text;
            string email = Semail.Text;
            Users user = new Users();
            user.saveUser(uid, email, name, pwd);
            signupMsg.Text = "Signup Successfully";
            Response.Redirect("Login.aspx");
        }
    }
}