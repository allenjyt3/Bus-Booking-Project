using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingSystem
{
    public partial class BusRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                cal_DateandTime.Visible = false;

        }

        protected void imgbtn_calender_Click(object sender, ImageClickEventArgs e)
        {
            cal_DateandTime.Visible = !cal_DateandTime.Visible;
        }

        protected void cal_DateandTime_SelectionChanged(object sender, EventArgs e)
        {
            if (cal_DateandTime.SelectedDate > DateTime.Now)
            {
                txt_DateTime.Text = cal_DateandTime.SelectedDate.ToString("MM/dd/yy") + " " + DateTime.Now.ToString("HH:mm tt");
            }
            //else if (CalDate.SelectedDate < DateTime.Now)
            //{
            //txtDate.Text = CalDate.SelectedDate.ToString("MM/dd/yy");
            //}
            else
            {
                cal_DateandTime.Visible = false;
            }
        }

        protected void btn_BusRegister_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=SUYPC214;Initial Catalog=Project1;Integrated Security=true");


            SqlCommand commands = new SqlCommand("insert into tbl_busregist(BusType,BusNumber,NumberOfSeats,Route,DateTime) values(@busType, @busNumber, @numberOfSeats, @route, @dateAndTime)", con);

            con.Open();
            commands.Parameters.AddWithValue("@busType",txt_BusType.Text);
            commands.Parameters.AddWithValue("@busNumber",txt_BusNumber.Text);
            commands.Parameters.AddWithValue("@numberOfSeats", txt_NoOfSeats.Text);
            commands.Parameters.AddWithValue("@route", txt_BusRoute.Text);
            commands.Parameters.AddWithValue("@dateAndTime", txt_DateTime.Text);

            commands.ExecuteNonQuery();

            con.Close();
        }

        protected void btn_show_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchBus.aspx");
        }

      
    }
}