using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW_G15
{
    public partial class XoaGopY : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var lstGopY = Application[Global.DANHSACHGOPY] as List<GopY>;

        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            var lstGopY = Application[Global.DANHSACHGOPY] as List<YKien>;
            string a = Request.Form["txtComment"];
            

            // Tạo một danh sách tạm để lưu các phần tử cần xóa
            List<YKien> itemsToRemove = new List<YKien>();

            foreach (YKien gopY in lstGopY)
            {
                if (gopY.message.Equals(a))
                {
                    itemsToRemove.Add(gopY);
                }
            }

            // Xóa các phần tử cần xóa từ danh sách
            foreach (YKien gopYToRemove in itemsToRemove)
            {
                lstGopY.Remove(gopYToRemove);
            }

            Application[Global.DANHSACHGOPY] = lstGopY;

        }
    }
}