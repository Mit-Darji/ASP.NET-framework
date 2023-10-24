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
    public partial class Student_index : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["student_username"] == null)
            {
                Response.Redirect("Student_login.aspx");
            }
            Gettotaltutors();
        }
        public void Gettotaltutors()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("select count(tutor_id) from tutor_signup", con);
                con.Open();
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                lbltotaltutors.Text = i.ToString();

            }
        }
    }
}