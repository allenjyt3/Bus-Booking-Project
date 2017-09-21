using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingSystem
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_register_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=SUYPC214;Initial Catalog=Project1;Integrated Security=true");


            SqlCommand cmd = new SqlCommand("insert into RegisteredUsers(UserName,Password) values(@username, @password)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@username", txt_usernamereg.Text);
            cmd.Parameters.AddWithValue("@password", txt_passwordreg.Text);

            cmd.ExecuteNonQuery();

            con.Close();
        }

        protected void btn_cancel2_Click(object sender, EventArgs e)
        {
            txt_usernamereg.Text = " ";
            txt_passwordreg.Text = " ";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}