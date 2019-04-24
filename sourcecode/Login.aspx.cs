using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YellowMotors
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserName"] != null)
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void Login(object sender, EventArgs e)
        {
            Users user = new Users();
            string userID = Uid.Text;
            string pwd = Pwd.Text;
            string name = user.login(userID, pwd);
            if (name != null)
            {
                HttpCookie aCookie = new HttpCookie("UserName");
                aCookie.Values["UserName"] = name;
                aCookie.Expires.AddDays(3);
                Response.Cookies.Add(aCookie);
                Response.Redirect("Home.aspx");
            } else
            {
                LoginMsg.Text = "Incorrect userID or password";
            }
        }
    }
}