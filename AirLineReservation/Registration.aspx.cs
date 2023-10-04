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
    public partial class Registration : System.Web.UI.Page
    {
        String constring = ConfigurationManager.ConnectionStrings["conn"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "insert into Reg(Name,Address,Emailid,username,password) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Label.Visible = true;
                Label.Text = "Registration Successfully.";
                Response.Redirect("Home.aspx");
            }

            else
            {
                Label.Visible = true;
                Label.Text = "Registration Failed.";

            }
            con.Close();
        }
    }
}