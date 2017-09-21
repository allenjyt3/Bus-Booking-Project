using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingSystem
{
    public partial class SearchBus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgbtn_calendarsearch_Click(object sender, ImageClickEventArgs e)
        {
            cal_date.Visible = !cal_date.Visible;
        }

        protected void cal_date_SelectionChanged(object sender, EventArgs e)
        {
            txt_date.Text = cal_date.SelectedDate.ToString("MM/dd/yy");
            cal_date.Visible = false;
        }


        protected void gridview_searchBus_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}