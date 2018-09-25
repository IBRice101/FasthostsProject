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

    protected void btn_Clear_Click(object sender, EventArgs e)
    {

    }

    protected void btn_Clear_Click1(object sender, EventArgs e)
    {

    }

    protected void btn_Submit_Clicked(object sender, EventArgs e)
    {
        //declares variables and sets them equal to the value of their respecive text boxes
        string username = tb_Username.Text;
        string firstName = tb_FirstName.Text;
        string surname = tb_Surname.Text;
        string email = tb_Email.Text;
        string password = tb_PWord.Text;

        //opens connection string to FasthostsTLDShop
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FasthostsTLDShopConnectionString"].ConnectionString);
        cn.Open();

        //declares a sql command that inserts a data field into the User table
        SqlCommand cmd = new SqlCommand("INSERT INTO [User] (FirstName, Surname, Username, Email, Password) VALUES (@firstname, @surname, @username, @email, @password)", cn);
        cmd.Parameters.Add(new SqlParameter("@firstname", firstName));
        cmd.Parameters.Add(new SqlParameter("@surname", surname));
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@email", email));
        cmd.Parameters.Add(new SqlParameter("@password", password));

        //a try catch method that redirects the user to the homepage if the input is successful and returns an error message if not
        try
        {
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Pages/Home.aspx?src=");
        }
        catch (Exception b)
        {
            Response.Write("Couldn't add the user to the databse");
        }
    }
}
