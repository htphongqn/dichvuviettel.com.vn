<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="top_page.ascx.cs" Inherits="THVDev.UIs.top_page" %>
<script type="text/javascript">
    if (document.all || document.getElementById)
        setInterval("getthedate()", 1000);

    function getthedate() {
        var dayarray = new Array("Chủ nhật", "Thứ Hai", "Thứ Ba", "Thứ Tư", "Thứ Năm", "Thứ Sáu", "Thứ Bảy");
        var montharray = new Array("01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12");
        var mydate = new Date();
        var year = mydate.getYear();
        if (year < 1000)
            year += 1900;
        var day = mydate.getDay();
        var month = mydate.getMonth();
        var daym = mydate.getDate();
        if (daym < 10)
            daym = "0" + daym;
        var hours = mydate.getHours();
        var minutes = mydate.getMinutes();
        var seconds = mydate.getSeconds();
        var dn = "AM";
        if (hours >= 12)
            dn = "PM";
//        if (hours > 12) {
//            hours = hours - 12;
//        }
        if (hours == 0)
            hours = 12;
        if (minutes <= 9)
            minutes = "0" + minutes;
        if (seconds <= 9)
            seconds = "0" + seconds;
        //change font size here
        var cdate = dayarray[day] + ", " + daym + "/" + montharray[month] + "/" + year + " | " + hours + ":" + minutes + " GMT+7";
        if (document.all)
            document.all.clock.innerHTML = cdate;
        else if (document.getElementById)
            document.getElementById("clock").innerHTML = cdate;
    }
</script>

<section id="top_page">
  <div class="container"> 
  <span class="time_date fl"><span id="clock"></span></span> 
    <span class="head_hotline fl"><i class="ico icon_hotline"></i>Đường dây nóng: 
    <asp:Repeater ID="Rphotline" runat="server">
        <ItemTemplate>
            <b><%# Eval("ONLINE_NICKNAME")%></b>
        </ItemTemplate>
    </asp:Repeater>
    </span>
    <!--Social-->
    <span class="social_network fr">
        <asp:HyperLink ID="hplFace" runat="server" title="Facebook"><i class="ico icon_facebook"></i></asp:HyperLink>
            <asp:HyperLink ID="hplGoogle" runat="server" title="Google+"><i class="ico icon_gplus"></i></asp:HyperLink>
            <asp:HyperLink ID="hplYoutube" runat="server" title="Youtube"><i class="ico icon_youtube"></i></asp:HyperLink>
            <asp:HyperLink ID="hplTwiter" runat="server" title="Twitter"><i class="ico icon_twitter"></i></asp:HyperLink>
            <asp:HyperLink ID="hplZingme" runat="server" title="Zing Me"><i class="ico icon_zing"></i></asp:HyperLink>
    </span>
    <!--end Social Network-->
    <span class="link_home fr"><a href="" title="Đặt làm trang chủ">Đặt làm trang chủ</a></span> </div>
</section>