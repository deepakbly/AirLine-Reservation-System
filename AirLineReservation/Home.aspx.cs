using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirLineReservation
{
    public partial class We1 : System.Web.UI.Page
    {
        String constring = ConfigurationManager.ConnectionStrings["conn"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadminlogin_Click(object sender, EventArgs e)
        {
            if (txtstaffuname.Text=="admin" && txtstaffpass.Text=="123456")
            {
                Response.Redirect("~/Admin/Airline_Schedule.aspx");
            }
            else
            {
                lblstafferror.Visible = true;
                lblstafferror.Text = "Login Info is incorrect.";
            }
        }

        protected void btnUserlogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "select username from Reg where username='" + txtstuuname.Text + "' and password='" + txtstupass.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "emp");
            if (ds.Tables["emp"].Rows.Count > 0)
            {
                
                Response.Redirect("~/Clients/AirlineSchedule.aspx");
            }
            else
            {
                lblstuerror.Visible = true;
                lblstuerror.Text = "Invalid username or password";
            }


            con.Close();

        }

       
    }
}