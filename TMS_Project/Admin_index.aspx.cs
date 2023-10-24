using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TMS_Project
{
    public partial class Admin_index : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["admin_username"] == null)
            {
                Response.Redirect("Admin_login.aspx");
            }
            gettotalstudents();
            gettotaltutors();
            gettotalcontactdetails();
        }

        public void gettotalstudents()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("select count(student_id) from student_signup", con);
                    con.Open();
                    int i = Convert.ToInt32(cmd.ExecuteScalar());
                    lbltotalstudents.Text = i.ToString();
         
            }
        }
        public void gettotaltutors()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("select count(tutor_id) from tutor_signup", con);
                con.Open();
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                lbltotaltutors.Text = i.ToString();

            }
        }
        public void gettotalcontactdetails()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("select count(Id) from contact_tbl", con);
                con.Open();
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                lbltotalcontactdetails.Text = i.ToString();

            }
        }

    }
}