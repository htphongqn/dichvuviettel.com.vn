using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Controller;
using vpro.functions;
using System.IO;

namespace THVDev.UIs
{
    public partial class top_page : System.Web.UI.UserControl
    {
        #region Declare
        private Propertity per = new Propertity();
        private Function fun = new Function();
        private Config cf = new Config();
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Loadhotline();
                LoadSocial();
            }
        }
        public void LoadSocial()
        {
            try
            {
                var listf = per.Load_facebook();
                var listg = per.Load_google();
                var listy = per.Load_youtube();
                var listt = per.Load_Twitter();
                var listzing = per.Load_Zing();
                if (listf != null && listf.Count > 0)
                    hplFace.NavigateUrl = listf.Count > 0 ? listf[0].ONLINE_NICKNAME : "";
                if (listg != null && listg.Count > 0)
                    hplGoogle.NavigateUrl = listg.Count > 0 ? listg[0].ONLINE_NICKNAME : "";
                if (listy != null && listy.Count > 0)
                    hplYoutube.NavigateUrl = listy.Count > 0 ? listy[0].ONLINE_NICKNAME : "";
                if (listt != null && listt.Count > 0)
                    hplTwiter.NavigateUrl = listt.Count > 0 ? listt[0].ONLINE_NICKNAME : "";
                if (listzing != null && listzing.Count > 0)
                    hplZingme.NavigateUrl = listzing.Count > 0 ? listzing[0].ONLINE_NICKNAME : "";
            }
            catch
            {

            }
        }
        public void Loadhotline()
        {
            var list = per.Load_hotline().Take(1).ToList();
            if (list.Count > 0)
            {
                Rphotline.DataSource = list;
                Rphotline.DataBind();
            }
        }
    }
}