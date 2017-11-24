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

public partial class table : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string nameuser = Session["username"].ToString(); //Session created for the user
        Session["uname"] = nameuser; //Username is stored for the session 
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}
