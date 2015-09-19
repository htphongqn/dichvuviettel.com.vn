<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="top_main.ascx.cs" Inherits="THVDev.UIs.top_main" %>

<section class="marg_b10" id="top_main">
    <!--Slide News-->
    <div class="eleven columns" id="slide_news">
      <marquee width="100%" height="auto" direction="left" scrolldelay="1" scrollamount="2" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);">      
      <asp:Repeater ID="rptNews" runat="server">
            <ItemTemplate>  
            <a class="top_news_title" href='<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>'><%# Eval("NEWS_TITLE") %></a>                       
            </ItemTemplate>
        </asp:Repeater>
      </marquee>
    </div>
    <!--end Slide News-->
    <!--Search Area-->
    <div class="dpop_search five columns">
      <div class="search_box form_submit fr">
        <div class="input_bar">
          <input type="text" onblur="javscript:if (this.value == '') this.value = 'Nhập từ khóa tìm kiếm…';" onfocus="javascript:if (this.value == 'Nhập từ khóa tìm kiếm…') this.value = '';" value="Nhập từ khóa tìm kiếm…" name="keyword" id="q" runat="server" class="inputSearch" />
        </div>
        <div class="search_icon_wrapper">
          <asp:Button ID="Lbsearch" runat="server" CssClass="submitSearch" OnClick="Lbsearch_Click"></asp:Button>
        </div>
      </div>
    </div>
    <!--end Search Area-->
  </section>