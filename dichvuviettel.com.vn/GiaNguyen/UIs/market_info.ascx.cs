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
    public partial class market_info : System.Web.UI.UserControl
    {
        Config cf = new Config();
        Function fun = new Function();
        Propertity per = new Propertity();
        Home index = new Home();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Load_news();
            }
        }
        public void Load_news()
        {
            try
            {
                string s = "";
                var list = index.Loadindex(0, 5, 1, 50);
                for (int i = 0; i < list.Count; i++)
                {
                    if (i % 2 == 0)
                        s += "<div class='item'>";
                    s += getItem(list[i]);
                    if (i % 2 != 0 || i == list.Count)
                        s += "</div>";

                }
                lbTinthitruong.Text = s;
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
            }
        }
        private string getItem(Model.Pro_details_entity item)
        {
            string s = "";
            s += "<article class='item_news'>";
            s += "<a href='" + GetLink(item.NEWS_URL, item.NEWS_SEO_URL, item.CAT_SEO_URL) + "' title='" + item.NEWS_TITLE + "' class='img_news fl'>";
            s += "<img src='" + GetImageT(item.NEWS_ID, item.NEWS_IMAGE3) + "' alt='" + item.NEWS_TITLE + "' /></a>";
            s += "<h4 class='news_title'><a href='" + GetLink(item.NEWS_URL, item.NEWS_SEO_URL, item.CAT_SEO_URL) + "' title='" + item.NEWS_TITLE + "'>" + item.NEWS_TITLE + "</a></h4>";
            s += "</article>";
            return s;
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