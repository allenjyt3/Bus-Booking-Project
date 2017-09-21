using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=SUYPC214;Initial Catalog=Project1;Integrated Security=true");
            SqlCommand command = new SqlCommand("select * from RegisteredUsers where UserName=@username and Password=@password", con);
            con.Open();
            command.Parameters.AddWithValue("@username", txt_username.Text);
            command.Parameters.AddWithValue("@password", txt_password.Text);
            using (var reader = command.ExecuteReader())
            {
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Response.Redirect("BusRegistration.aspx");
                    }

                    return;
                }
                else
                {
                    lbl_invalid.Text = "InvalidUser";
                }
            }


        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            txt_username.Text = " ";
            txt_password.Text = " ";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("Register.aspx");
        }
    }
}