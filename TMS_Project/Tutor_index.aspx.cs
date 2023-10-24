using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace TMS_Project
{
    public partial class Tutor_index : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tutor_username"] == null)
            {
                Response.Redirect("Tutor_login.aspx");
            }
            Gettotalstudents();
        }
        public void Gettotalstudents()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("select count(student_id) from student_signup", con);
                con.Open();
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                lbltotalstudents.Text = i.ToString();

            }
        }
    }
}