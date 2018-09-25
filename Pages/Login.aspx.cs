using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Pages_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void tb_li_PWord_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FasthostsTLDShopConnectionString"].ConnectionString))
        {
            if (rfv_li_UserName.IsValid && rfv_li_PWord.IsValid)
            { //conection open
                cn.Open();
                
                string Sel = "SELECT * FROM [User] WHERE Username = @Username AND Password = @Password";
                SqlCommand Cmd = new SqlCommand(Sel, cn);
                Cmd.Parameters.AddWithValue("@Username", tb_li_UserName.Text.Trim());
                Cmd.Parameters.AddWithValue("@Password", tb_li_PWord.Text.Trim());

                int i = Convert.ToInt32(Cmd.ExecuteScalar());

                if (i >= 1)
                {
                    SqlDataReader read = Cmd.ExecuteReader();
                    while (read.Read())
                    {   
                        //the getstring / getint32 statements relate to the column in the SQL database, (arrays start at 0), then once logged in it redirects
                        Session["User"] = read.GetString(3);
                        Session["LoggedInUserID"] = read.GetInt32(0);
                        Session["UserRealName"] = read.GetString(1) + " " +  read.GetString(2);
                        Session["LoggedIn"] = true;
                        Response.Redirect("Home.aspx");

                        
                    }
                }
                else
                {
                    Response.Write("Username/Password is incorrect");
                }
            }
        }
    }
}


