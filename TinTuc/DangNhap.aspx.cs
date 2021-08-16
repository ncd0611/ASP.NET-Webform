using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TinTuc
{
    public partial class DangNhap1 : System.Web.UI.Page
    {
        DataDataContext dt = new DataDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var dl = dt.DangNhap_Search(txtUserName.Text, txtPassWord.Text);
            int kt = dl.Count();
            if (kt > 0)
            {
                Session["admin"] = true;
                Response.Redirect("TrangChu.aspx");
            } 
            else
            {
                lblThongBao.Text = "Đăng nhập thất bại. Mời thử lại !";
                txtUserName.Text = "";
                txtPassWord.Text = "";
                txtUserName.Focus();
            }    
        }
    }
}