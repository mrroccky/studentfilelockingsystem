using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentLockingSystem
{
    public partial class DoccDawnload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //on page load assigning values t respective lbles and images from session stored data
                iiImage.ImageUrl = "~/student-image/" + Session["ImageName"].ToString();
                lblName.Text = Session["name"].ToString();
                lblEmail.Text = Session["email"].ToString();
                lblResumeName.Text = Session["resume-fileName"].ToString();
                lblDegreeName.Text = Session["degree-fileName"].ToString();
                
            }
            catch (Exception ecxec)
            {
                Response.Write($"<script language='JavaScript'> alert('Error: {ecxec}');</script>");
            }


        }

     

        protected void btnResumePassCheckPage_Click(object sender, EventArgs e)
        {
            //checking password with stored password so user able to dawnload proper resume
            try {
                if (txtPassResume.Text == Session["resume-pass"].ToString())
                {
                    linkDawnloadResume.NavigateUrl = "~/resum-file/" + Session["resume-fileName"].ToString();
                    linkDawnloadResume.Text = "Dawnload Resume";
                }
                else
                {
                    Response.Write($"<script language='JavaScript'> alert('Wrong password');</script>");
                }
            }
            catch (Exception)
            {
                Response.Write($"<script language='JavaScript'> alert('Error: try diffrent Password');</script>");
            }


           

        }
        protected void btnDegreePassCheckPage_Click(object sender, EventArgs e)
        {
            //checking password with stored password so user able to dawnload proper degree
            try
            {
                if (txtPassDegree.Text == Session["degree-pass"].ToString())
                {
                    linkDawnloadDegree.NavigateUrl = "~/degree-image/" + Session["degree-fileName"].ToString();
                    linkDawnloadDegree.Text = "Dawnload Degree";
                }
                else
                {
                    Response.Write($"<script language='JavaScript'> alert('Wrong password');</script>");
                }
            }
            catch (Exception)
            {
                Response.Write($"<script language='JavaScript'> alert('Error: try diffrent Password');</script>");
            }
            
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            //clearing all session we are created throught out the application
            //and redirecting user on  registration page
            Session.Clear();
            Response.Redirect("default.aspx");
        }
    }
}