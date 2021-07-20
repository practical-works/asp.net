using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApplication1
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            string path = Server.MapPath("~/sessions.txt");
            using (System.IO.StreamWriter file = System.IO.File.AppendText(path))
            {
                file.WriteLine("Start Session ID : " + Session.SessionID);
                file.WriteLine("Start Session Opening Date : " + DateTime.Now.ToString());
                file.WriteLine("==============================================");
            }
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            string path = Server.MapPath("~/sessions.txt");
            using (System.IO.StreamWriter file = System.IO.File.AppendText(path))
            {
                file.WriteLine("End Session ID : " + Session.SessionID);
                file.WriteLine("End Session Opening Date : " + DateTime.Now.ToString());
                file.WriteLine("==============================================");
            }
        }

        protected void Application_End(object sender, EventArgs e)
        {
            
        }
    }
}