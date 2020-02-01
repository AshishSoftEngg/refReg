using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class RegistrationForm : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataSet ds;
    SqlCommand cmd;

    string conStr = ConfigurationManager.ConnectionStrings["Con1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {

        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(conStr);
            con.Open();
            cmd = new SqlCommand("insert into EmpRegtration (Name,DOB,Address,State,Mobile,Email) values(@Name,@DOB,@Address,@State,@Mobile,@Email)", con);
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@DOB", txtDOB.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@State", txtState.Text);
            cmd.Parameters.AddWithValue("@Mobile", txtMobileNo.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Record Save Succesfully";
            //ImageData();
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
}