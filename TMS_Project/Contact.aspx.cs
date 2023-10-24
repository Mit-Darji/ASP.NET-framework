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
    public partial class Contact : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void ResetContact()
        {
            NameTextBox.Text = string.Empty;
            EmailTextBox.Text = string.Empty;
            SubjectDropDownList.ClearSelection();
            MessageTextBox.Text = string.Empty;
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string sp = "insert into contact_tbl values (@name,@email,@subject,@message)";

            SqlCommand cmd = new SqlCommand(sp, con);
            cmd.Parameters.AddWithValue("@name",NameTextBox.Text);
            cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
            cmd.Parameters.AddWithValue("@subject",SubjectDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@message", MessageTextBox.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if(a > 0)
            {
                //Response.Write("<script>SuccessContact();</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "popup", "SuccessContact();", true);
                ResetContact();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "popup", "ErrorContact();", true);
            }
            con.Close();
        }
    }
}