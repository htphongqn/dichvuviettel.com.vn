<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="sidebar.ascx.cs" Inherits="THVDev.UIs.sidebar" %>
    <aside class="five columns sidebar">
      <div class="inner_col">
        <!--Ads Sidebar 1-->        
          <asp:Repeater ID="rptAds2" runat="server">
            <ItemTemplate>                 
                 <div class="box marg_b10 ads_side1"><%# GetImageAd(Eval("AD_ITEM_ID"), Eval("AD_ITEM_FILENAME"), Eval("AD_ITEM_TARGET"), Eval("AD_ITEM_URL"), Eval("Ad_Item_Desc"))%></div>
            </ItemTemplate>
        </asp:Repeater>        
        <!--end Ads Sidebar 1-->
        <!--News Sidebar-->
        <div class="box marg_b10">
          <div class="box_Tab">Tin thời đại</div>
          <div class="box_ct bor padd10">            
            <asp:Repeater ID="rptTinthoidai" runat="server">
                <ItemTemplate>  
                <article class="item_news"><a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>" title="<%# Eval("NEWS_TITLE") %>" class="img_news fl"><img alt="<%# Eval("NEWS_TITLE") %>" src="<%# GetImageT(Eval("NEWS_ID"),Eval("NEWS_IMAGE3")) %>" /></a>
                  <h3 class="news_title"><a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>" title="<%# Eval("NEWS_TITLE") %>"><%# Eval("NEWS_TITLE") %></a></h3>
                </article>                           
                </ItemTemplate>
            </asp:Repeater>
          </div>
        </div>
        <!--end News Sidebar-->
        <!--Ads Sidebar 2-->
        <asp:Repeater ID="rptAds3" runat="server">
            <ItemTemplate>                 
                 <div class="box ads_side2"><%# GetImageAd(Eval("AD_ITEM_ID"), Eval("AD_ITEM_FILENAME"), Eval("AD_ITEM_TARGET"), Eval("AD_ITEM_URL"), Eval("Ad_Item_Desc"))%></div>
            </ItemTemplate>
        </asp:Repeater>
        <!--end Ads Sidebar 2-->
        <!--News Sidebar-->
        <div class="box">
          <div class="box_Tab">Tin đọc nhiều nhất</div>
          <div class="box_ct bor padd10">            
            <asp:Repeater ID="rptTindocnhieu" runat="server">
                <ItemTemplate>  
                <article class="item_news">
              <h3 class="news_title"><a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>" title="<%# Eval("NEWS_TITLE") %>"><%# Eval("NEWS_TITLE") %></a></h3>
              <span class="date_post"><%# getDate(Eval("NEWS_PUBLISHDATE"))%></span> </article>
                </ItemTemplate>
            </asp:Repeater>
          </div>
        </div>
        <!--end News Sidebar-->
        <!--Ads Sidebar 3-->
        <asp:Repeater ID="rptAds4" runat="server">
            <ItemTemplate>                 
                <div class="box ads_side3"> <%# GetImageAd(Eval("AD_ITEM_ID"), Eval("AD_ITEM_FILENAME"), Eval("AD_ITEM_TARGET"), Eval("AD_ITEM_URL"), Eval("Ad_Item_Desc"))%></div>
            </ItemTemplate>
        </asp:Repeater>
        <!--end Ads Sidebar 3-->
      </div>
    </aside>