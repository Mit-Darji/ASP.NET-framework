using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project
{
    
    public partial class Admin_log : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from admin_login where username = @username  and password = @password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", UsernameTxt.Text);
            cmd.Parameters.AddWithValue("@password", PasswordTxt.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                Session["admin_username"] = UsernameTxt.Text;
                Response.Redirect("Admin_index.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "popup", "Swal.fire('Failure','Username or Password is incorrect','error')", true);
            }
            con.Close();
        }
    }
}