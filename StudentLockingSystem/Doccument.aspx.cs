using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentLockingSystem
{
    public partial class Doccument : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //catching session values whenewer screen gets load 
            try {
                lblName.Text = Session["name"].ToString();
                lblEmail.Text = Session["email"].ToString();
                iiImage.ImageUrl = "~/student-image/" + Session["ImageName"].ToString();
            } catch(Exception)
            {
                //in case we dont have value in session so simplay redirecting user to registration page (default page)
                Response.Redirect("default.aspx");
            }
           
        }

        protected void btnGoToDawnloadFormPage_Click(object sender, EventArgs e)
        {
            //creating chech so user cant navigate furter before uploading data 
            try
            {
                if (Session["resume-fileName"].ToString() != null && Session["degree-fileName"].ToString() != null)
                {
                    //precheck for password so the user enter proper password and we create sessions before navigating user
                    if(txtPassProtectResume.Text  !=null && txtPassProtectDegree.Text != null)
                    {
                        Session["resume-pass"] = txtPassProtectResume.Text;
                        Session["degree-pass"] = txtPassProtectDegree.Text;
                        Response.Redirect("DoccDawnload.aspx");
                    }
                    else
                    {
                        Response.Write($"<script language='JavaScript'> alert('Protect files with password');</script>");
                    }
                    
                }
                else
                {
                    Response.Write($"<script language='JavaScript'> alert('Please Upload Files Properly');</script>");
                }
            }
            catch (Exception)
            {
                //keeping user informed
                Response.Write($"<script language='JavaScript'> alert('Files not found !');</script>");
            }
          
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            //onclick of this buton setting user inside resum-file location
            //and creating session 
            try
            {
                btnFileBrows.SaveAs(Server.MapPath("~") + "//resum-file//" + btnFileBrows.FileName);
                
                Session["resume-fileName"] = btnFileBrows.FileName;
            }
            catch (Exception)
            {
                Response.Write($"<script language='JavaScript'> alert('error while uploading file retray uploading!');</script>");
            }
            
           
        }

        protected void btnUpload2_Click(object sender, EventArgs e)
        {
            //onclick of this buton setting user inside degree-image location
            //and creating session 
            try
            {
                btnFileBrows2.SaveAs(Server.MapPath("~") + "//degree-image//" + btnFileBrows2.FileName);
                Session["degree-fileName"] = btnFileBrows2.FileName;
            }
            catch (Exception)
            {
                Response.Write($"<script language='JavaScript'> alert('error while uploading file retray uploading!');</script>");
            }
            
           
        }
    }
}