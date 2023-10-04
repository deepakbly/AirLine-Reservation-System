using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirLineReservation.Clients
{
    public partial class Ticket_Booking : System.Web.UI.Page
    {
        int a;
        String constring = ConfigurationManager.ConnectionStrings["conn"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public int Autonumber()
        {
            SqlConnection con = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "select pid from pid";
            SqlDataAdapter da = new SqlDataAdapter();
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            da.SelectCommand = cmd;
            da.Fill(dt);
            a = Convert.ToInt32(dt.Rows[0][0].ToString()) + 1;
            con.Close();
            return a;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "select flightid from schedule where flightid='" + DropDownList1.Text + "' and Flightname='" + DropDownList2.Text + "' and Fromstation='" + DropDownList3.Text + "' and Tostation='" + DropDownList4.Text + "' and dateandtimings='" + DropDownList6.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "emp");
            if (ds.Tables["emp"].Rows.Count > 0)
            {

                cmd.CommandText = "insert into Plist(Pid,passengername,flightid,Flightname,Fromstation,Tostation,category,Dateandtimings) values('" + Autonumber() + "','" + TextBox1.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + DropDownList4.Text + "','" + DropDownList5.Text + "','" + DropDownList6.Text + "')";
                int i = cmd.ExecuteNonQuery();
                cmd.CommandText = "update pid set pid='" + Autonumber() + "'";
                int k = cmd.ExecuteNonQuery();
                if (DropDownList5.Text == "Firstclass")
                {
                    cmd.CommandText = "update schedule set Firstclass=Firstclass-1 where flightid='" + DropDownList1.SelectedValue + "'";
                    int j = cmd.ExecuteNonQuery();
                }
                else if (DropDownList5.Text == "Bussinessclass")
                {
                    cmd.CommandText = "update schedule set Bussinessclass=Bussinessclass-1 where flightid='" + DropDownList1.SelectedValue + "'";
                    int j = cmd.ExecuteNonQuery();


                }
                else
                {
                    cmd.CommandText = "update schedule set Economicclass=Economicclass-1 where flightid='" + DropDownList1.SelectedValue + "'";
                    int j = cmd.ExecuteNonQuery();
                }
                if (i > 0)
                {
                    Label.Visible = true;
                    Label.Text = "success";
                }

                else
                {
                    Label.Visible = true;
                    Label.Text = "error";
                }

                Label16.Visible = true;
                Label16.Text = "Your Ticket ID is " + a;
                con.Close();
            }
            else
            {
                Label16.Visible = true;
                Label16.Text = "There is no flight with these details so please check flight schedule and submit your request";
            }
        }
    }
}