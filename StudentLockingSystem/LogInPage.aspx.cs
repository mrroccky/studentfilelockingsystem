using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentLockingSystem
{
    public partial class LogInPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtEmailCheck_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtPassCheck_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            //creating logic for login 
            try
            {
                //checkig  name and pass des match with session or not  
                    if (Session["email"].ToString()== txtEmailCheck.Text && txtPassCheck.Text == Session["password"].ToString())
                    {
                        //credentials are match 
                        lblError.Text = "Correct login Credentrials";
                        Response.Redirect("Doccument.aspx");
                    }
                    else
                    {
                    //setting lable text as wrong password
                        lblError.Text = "Wrong Password Not match";
                    }
                 
            }
            catch (Exception err)
            {
                //catching unknown errors
                lblError.Text = "Error: Wrong login Credentrials"+err;
            }
            
        }
    }
}