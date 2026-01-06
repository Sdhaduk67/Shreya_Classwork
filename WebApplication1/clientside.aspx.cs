using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class clientside : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_hidden_Click(object sender, EventArgs e)
        {
            HiddenField1.Value = "123456";
            lblhidden.Text="Hidden Field Value:"+ HiddenField1.Value;
        }

        protected void txtViewState_TextChanged(object sender, EventArgs e)
        {
            //if (ViewState["username"]!=null)
            //    lblviewstate.Text =ViewState["username"];
            int counte = 0;

            if (ViewState["clicks"] != null)
                counte = (int)ViewState["clicks"];

            counte++;

            ViewState["clicks"] = counte;
            lblviewstate.Text = "TEXTBOX clicked" + counte;
        }

        protected void btn_create_Click(object sender, EventArgs e)
        {
            Response.Cookies["mycookie"].Value = txtCookie.Text;
            Response.Cookies["mycookie"].Expires = DateTime.Now.AddMinutes(1);
            lblcookie.Text = "cookie created!!";

        }

        protected void btn_read_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["myCookies"] != null)
            {
                lblcookie.Text = "Cookie Value:" + Request.Cookies["myCookies"].Value;
            }
            else
            {
                lblcookie.Text = "Cookie Not Found!";
            }
        }

        protected void btn_query_Click(object sender, EventArgs e)
        {
            Response.Redirect("/clientside.aspx?data=" + txtquery.Text);
        }
    }
}