using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=VIPZ7VVV;Initial Catalog=Cryptography;Integrated Security=True"); //Sql Connection String
    SqlCommand cmd = new SqlCommand(); // Sql Object
    string name, p; // Variables
    static string fn; // Variables

    protected void Page_Load(object sender, EventArgs e)
    {
        Label8.Visible = false; // At Page Load We Set label8 to visible false
        Image1.Visible = false;// At Page Load We Set Image1 to visible false
        Image2.Visible = false;// At Page Load We Set Image2 to visible false
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Session For Captcha textbox which user enters

        //string name, p, fn;
        if ((TextBox1.Text == "") || (TextBox2.Text == "" )) //We Check Username or Password is null or not
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username or Password')</script>"); //Display Message If the condition is true
        }
        else // If the condition is false
        {
            name = TextBox1.Text; //Assign Value to a variable-Username
            p = TextBox2.Text; //Assign Value to a variable-Password
            con.Open(); // Open the sql connection to execute sql queries
            cmd = new SqlCommand("select uname, pwd, fname from newuser where uname='" + name + "' and pwd='" + p + "' and fname='" + fn + "'", con); //Query to check the username and password is same or not in the database (Table name - New User)
            SqlDataAdapter da = new SqlDataAdapter(cmd); //Execute The Query
            DataTable dt = new DataTable(); //Create A data table
            da.Fill(dt); //Fill the data table with value 
            if (dt.Rows.Count > 0) // Check whether there are rows in the data table with values
            { //If True
                Session["username"] = name.ToString(); //Create a session for that partcular username who has logged in
                Response.Redirect("~/table.aspx"); // And redirect him to the actual website in this case it is user details we are displaying

            }
            else //If False
            {
                Response.Redirect("~/emptypage.aspx?Page_Name=emptypage" + ""); //Redirect him to the error page because he is not the actual user 
                //ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password or Invalid Captcha Image')</script>");
            }
        }
    }
  




    
    protected void LinkButton1_Click(object sender, EventArgs e) //Show Image Link Function
    {
        fn = Path.GetFileName(FileUpload1.PostedFile.FileName); //Create a dynamic path to upload the captcha file
        if (FileUpload1.HasFile) //Check whether the user has uploaded the file
        {
            //FileUpload1.SaveAs(Server.MapPath("~/savedImages/") + FileUpload1.FileName);
            Image1.Visible = true; //if uploaded image1 Set visibility to true which was set to false on onload
            Image2.Visible = true; //if uploaded image2 Set visibility to true which was set to false on onload
            Image2.ImageUrl = "~/Docs/" + FileUpload1.FileName; //Image 2 Url should be with the image name that has been uploaded
        }
    }
}
