using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TinTuc
{
    public partial class chitietAdd : System.Web.UI.Page
    {
        DataDataContext dt = new DataDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                drBanTin.DataTextField = "noiDung";
                drBanTin.DataValueField = "IDBanTin";
                drBanTin.DataSource = dt.BanTin_SelectAll();
                drBanTin.DataBind();
            }    
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            if (txtTieuDe.Text == "" || txtNoiDung.Text == "")
            {
                lblThongBao.Text = "Mời nhập đầy đủ thông tin !";
                txtTieuDe.Text = "";
                txtNoiDung.Text = "";
                txtTieuDe.Focus();
            }
            else
            {
                dt.ChiTiet_Insert(txtTieuDe.Text, txtNoiDung.Text,
                DateTime.Now, Convert.ToInt32(drBanTin.SelectedValue));
                Response.Redirect("TrangChu.aspx");
            }
            
        }
    }
}