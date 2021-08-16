using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TinTuc
{
    public partial class ChiTiet1 : System.Web.UI.Page
    {
        DataDataContext dt = new DataDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            int? so = null;
            int id = Convert.ToInt32(Request["ID"]);
            int idbantin = Convert.ToInt32(Request["IDBanTin"]);

            //lấy dl 
            dt.ChiTiet_LanXem(id, ref so);
            if(so == null)
            {
                so = 0;
            }
            int gt = Convert.ToInt32(so) + 1;

            //đếm lượt xem
            dt.ChiTiet_SLX(gt, id);
            rpBanTin.DataSource = dt.BanTin_SelectID(idbantin);
            rpBanTin.DataBind();
            rpChiTiet.DataSource = dt.ChiTiet_SelectID(id);
            rpChiTiet.DataBind();
            rpRanDom.DataSource = dt.ChiTiet_RanDom(idbantin);
            rpRanDom.DataBind();
            rpRanDom2.DataSource = dt.ChiTiet_RanDom(idbantin);
            rpRanDom2.DataBind();
        }
    }
}