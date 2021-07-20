using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Timeout = 1;
            Session["name"] = "Hello World!";

            //============================================
            Initialize();
            //============================================

            if (Session["name"] == null)
                Response.Redirect("http://example.com");
        }

        string infos = "";
        private void Initialize()
        {
            // Insert date & time in footer
            Label_datetime.Text = DateTime.Now.ToString();

            // Get application related infos
            AddInfos(Session.Timeout, "Session Timeout (Minutes)");
            AddInfos(Session.SessionID, "Session ID");
            AddInfos(Session["name"], "My session value (name)");

            // Show application related infos
            Label_infos.Text = infos;
        }

        private void AddInfos(object value, string caption)
        {
            string valueString = (value != null) ? value.ToString() : "NULL";
            infos += caption + " : " + valueString + "<br>";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
        }
    }
}