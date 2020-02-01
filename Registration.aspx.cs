using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection cn=new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\LENOVO\Documents\Visual Studio 2010\WebSites\CTS\App_Data\ASPNETDB.MDF;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.Connection = cn;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("Image") + "/" + FileUpload1.FileName);
        Label1.Text = "Image" + "/" + FileUpload1.FileName;
        cn.Open();
        cmd.CommandText = "insert into Registration values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + (RadioButton1.Checked ? "MALE" : "FEMALE") + "','" + TextBox4.Text + "'," + TextBox5.Text + ",'" + TextBox6.Text + "','" + RadioButtonList1.SelectedValue + "','" + TextBox7.Text + "','" + DropDownList1.SelectedValue + "'," + TextBox8.Text + "," + TextBox9.Text + ",'" + TextBox10.Text + "','" + TextBox11.Text + "','" + FileUpload1.FileName + "','"+TextBox12.Text+"')";
        cmd.ExecuteNonQuery();
        cmd.CommandText = "insert into Lo values('" + TextBox1.Text.Replace("'", "''") + "','" + TextBox2.Text.Replace("'", "''") + "','Registration')";
        cmd.ExecuteNonQuery();
        Response.Redirect("Login.aspx");
        cn.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ClearInputs(Page.Controls);
    }
    void ClearInputs(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;
            ClearInputs(ctrl.Controls);
        }
    }
}