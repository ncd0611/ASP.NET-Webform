using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TinTuc
{
    public partial class DangKi : System.Web.UI.Page
    {
        DataDataContext dt = new DataDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(txtUserName.Text == "" || txtPassWord.Text == "")
            {
                lblThongBao.Text = "Mời nhập đầy đủ thông tin !";
                txtUserName.Text = "";
                txtPassWord.Text = "";
                txtUserName.Focus();
            }
            else
            {
                dt.DangNhap_Insert(txtUserName.Text, txtPassWord.Text);
                Response.Redirect("TrangChu.aspx");
            }    
        }
    }
}