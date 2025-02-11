using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentLockingSystem
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //we need textfeild value as today date as page get load 
            txtDate.Text = (string)DateTime.Now.ToString("dd/MM/yyyy");
        }


        protected void btnUpload_Click(object sender, EventArgs e)
        {
            try
            {
                //setting image inside student folder
                btnBrowseImage.SaveAs(Server.MapPath("~") + "//student-image//" + btnBrowseImage.FileName);
                //creating session and assigning value of image file 
                Session["ImageName"] = btnBrowseImage.FileName;
            }
            catch (Exception)
            {
                //tere might be unknown error so well display error as upload pic again
                Response.Write("<script language='JavaScript'> alert('Upload Picture properly');</script>");
            }
        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {

            try
            {
                
                //check that nnothing will be kept empty before redirecting to login page 
                if (txtName.Text != null && txtEmail.Text != null && txtMobile.Text != null && txtPassword.Text != null && txtDate.Text != null && Session["ImageName"].ToString() !=null )
                {
                    //creating session and asigning user input for further checks and use   
                    //its wrong approach to set password value before hashing but it will workin demo project
                    Session["name"] = txtName.Text;
                    Session["moile"] = txtMobile.Text;
                    Session["email"] = txtEmail.Text;
                    Session["password"] = txtPassword.Text;
                    Session["date"] = txtDate.Text;
                 
                }
                else
                {
                    Response.Write("<script language='JavaScript'> alert('Enter information Properly');</script>");
                }
            }
            catch(Exception)
            {
                Response.Write($"<script language='JavaScript'> alert('Enter information Properly ');</script>");
            }
            finally
            {
                //if all condition are good then redirecting to login page
                Response.Redirect("LogInPage.aspx");
            }
            

        }
    }
}