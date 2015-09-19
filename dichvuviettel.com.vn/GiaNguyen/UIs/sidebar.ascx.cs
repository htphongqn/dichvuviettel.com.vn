using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Controller;
using vpro.functions;

namespace THVDev.UIs
{
    public partial class sidebar : System.Web.UI.UserControl
    {
        Config cf = new Config();
        Function fun = new Function();
        Propertity per = new Propertity();
        Home index = new Home();
        int _Catid = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            _Catid = Utils.CIntDef(Session["Cat_id"]);
            if (!IsPostBack)
            {
                Load_ads();
                Load_news();
            }
        }
        public void Load_ads()
        {
            try
            {
                var list2 = per.Load_slider(_Catid, 2, 5, 1);
                rptAds2.DataSource = list2;
                rptAds2.DataBind();

                var list3 = per.Load_slider(_Catid, 3, 5, 1);
                rptAds3.DataSource = list3;
                rptAds3.DataBind();

                var list4 = per.Load_slider(_Catid, 4, 5, 1);
                rptAds4.DataSource = list4;
                rptAds4.DataBind();
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
            }
        }
        public string GetImageAd(object Ad_Id, object Ad_Image1, object Ad_Target, object Ad_Url, object Ad_Item_Desc)
        {
            try
            {
                string temp;
                temp = fun.GetImageAd(Ad_Id, Ad_Image1, Ad_Target, Ad_Url, Ad_Item_Desc);
                return temp;
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
                return null;
            }

        }
        public void Load_news()
        {
            try
            {
                var list = index.Loadindex(0, 3, 1, 5);
                rptTinthoidai.DataSource = list;
                rptTinthoidai.DataBind();

                var list1 = index.Loadindex(0, 4, 1, 5);
                rptTindocnhieu.DataSource = list1;
                rptTindocnhieu.DataBind();
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
            }
        }
        #region function
        public string Getimages_Cat(object cat_id, object cat_img)
        {
            return fun.Getimages_Cat(cat_id, cat_img);
        }
        public string Getlink_Cat(object Cat_Url, object Cat_Seo_Url)
        {
            try
            {
                return fun.Getlink_Cat(Cat_Url, Cat_Seo_Url);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public string GetLink(object News_Url, object News_Seo_Url, object cat_seo)
        {
            try
            {
                return fun.Getlink_News(News_Url, News_Seo_Url, cat_seo);
            }
            catch (Exception ex)
            {
                vpro.functions.clsVproErrorHandler.HandlerError(ex);
                return null;
            }
        }
        public string GetImageT(object News_Id, object News_Image1)
        {
            try
            {
                return fun.GetImageT_News(News_Id, News_Image1);
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
                return null;
            }
        }
        public string getDate(object News_PublishDate)
        {
            return fun.getDate(News_PublishDate);
        }
        public string Getprice(object price)
        {
            return fun.Getprice(price);
        }
        #endregion
    }
}