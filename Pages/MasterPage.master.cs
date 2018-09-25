using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //theme switching
        if (Session["theme"] == null)
        {
            Session["theme"] = "light";
        }
        if (Session["theme"].ToString() == "light")
        {
            theme.Attributes.Remove("href");
            theme.Attributes.Add("href", "../Styles/LightTheme.css");
        }
        if (Session["theme"].ToString() == "dark")
        {
            theme.Attributes.Remove("href");
            theme.Attributes.Add("href", "../Styles/DarkTheme.css");
        }


    }

    protected void LogOut(object sender, EventArgs e)
    {
        Session.Abandon();
    }

    public void setLight(object sender, EventArgs e)
    {
        Session["theme"] = "light";
        Response.Redirect(HttpContext.Current.Request.Url.AbsoluteUri.ToString());
    }

    public void setDark(object sender, EventArgs e)
    {
        Session["theme"] = "dark";
        Response.Redirect(HttpContext.Current.Request.Url.AbsoluteUri.ToString());
    }
}