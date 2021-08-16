using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TinTuc
{
    public partial class BanTin1 : System.Web.UI.Page
    {
        DataDataContext dt = new DataDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            rpIDBanTin.DataSource = dt.BanTin_SelectID(Convert.ToInt32(Request["IDBantin"]));
            rpIDBanTin.DataBind();
            rpChiTiet.DataSource = dt.ChiTiet_SelectBanTin(Convert.ToInt32(Request["IDBanTin"]));
            rpChiTiet.DataBind();
            rpChiTiet2.DataSource = dt.ChiTiet_Selec8();
            rpChiTiet2.DataBind();
        }
    }
}