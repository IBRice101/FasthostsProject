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

    protected void btn_Submit_Clicked(object sender, EventArgs e)
    {
        List<string> selectedTlds = new List<string>();

        foreach (GridViewRow row in GridView1.Rows)
        {
            //sets a CheckBox to have the name selRow and searches row 0 in the SQL database (the TLDID row) for something with the specified ID perameter, "interestSelect"
            CheckBox selRow = (row.Cells[0].FindControl("interestSelect") as CheckBox);
            if (selRow.Checked)
            {
                //sets the string variable tldName to be equal to the text in a specified data field in row 1
                string tldName = row.Cells[1].Text;

                //defines and opens connection string to database
                using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FasthostsTLDShopConnectionString"].ConnectionString))
                {
                    cn.Open();

                    //declares a sql command, to select a TLDID from the table TLD where TLD name has what the user has typed in in any position
                    using (SqlCommand cmd = new SqlCommand("SELECT TLDID FROM TLD WHERE TLDName LIKE '%' + @TldName + '%'", cn))
                    {
                        cmd.Parameters.AddWithValue("@TldName", tldName);
                        cmd.Connection = cn;

                        selectedTlds.Add(cmd.ExecuteScalar().ToString());
                    }
                }
            }
        }

        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FasthostsTLDShopConnectionString"].ConnectionString))
        {
            cn.Open();


            foreach (var item in selectedTlds)
            {
                SqlCommand chk = new SqlCommand("SELECT * FROM Interest WHERE UserID = @userID AND TLDID = @selTld", cn);
                chk.Parameters.AddWithValue("@userID", int.Parse(Session["LoggedInUserID"].ToString()));
                chk.Parameters.AddWithValue("@selTld", item);

                if (chk.ExecuteScalar() == null)
                {
                    SqlCommand add = new SqlCommand("INSERT INTO Interest (UserID, TLDID) VALUES (@ID, @TLD)", cn);
                    add.Parameters.AddWithValue("@ID", Session["LoggedInUserID"]);
                    add.Parameters.AddWithValue("@TLD", item);

                    add.ExecuteScalar();
                }

                chk.Dispose();
            }
        }
}

    protected void searchboxText_Changed(object sender, EventArgs e)
    {
        string query = tldSearchBox.Text;
        if (!query.Contains("."))
        {
            query = "." + query;
        }

        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["FasthostsTLDShopConnectionString"].ConnectionString))
        {
            cn.Open();

            using (SqlCommand cmd = new SqlCommand("SELECT * FROM TLD WHERE TLDName LIKE N'" + query + "%'"))
            {
                SearchData.SelectCommand = cmd.CommandText.ToString();
                SearchData.DataBind();
            }
        }
    }
}