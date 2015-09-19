<%@ Page Title="" Language="C#" MasterPageFile="~/Master/SiteVI.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="THVDev.Contact" %>
<%@ Register src="~/UIs/Path.ascx" tagname="Path" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <asp:Literal ID="ltrFavicon" runat="server" EnableViewState="false"></asp:Literal>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRight" runat="server">

    <div class="eleven columns" id="main_content">
      <!--Breadcrumbs-->
      <ul class="breadcrumbs">
        <li class="home"><a href="/trang-chu.html">Trang chủ</a></li>
        <li class="current">Liên hệ</li>
      </ul>
      <!--end Breadcrumbs-->
      <!--Contact-->
      <h1 class="page_title">Liên hệ tòa soạn</h1>
      <!--Info Contact-->
      <div id="info_contact">
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
      </div>
      <!--End Info Contact-->
      <!--Form Contact-->
      <div class="form_web" id="contactus">
        <div class="row_account">
          <label class="item_title">Họ tên:<span class="required">*</span></label>
          <input type="text" class="inputbox" id="Txtname" placeholder="Họ tên" runat="server">
                            <asp:RequiredFieldValidator ID="rfvHoVaTen" runat="server" ErrorMessage="Chưa nhập họ tên!"
                                    ControlToValidate="Txtname" Display="None" ForeColor="Red" ValidationGroup="G40">*</asp:RequiredFieldValidator>
          </div>
        <div class="row_account">
          <label class="item_title">Email:<span class="required">*</span></label>
          <input type="text" class="inputbox" id="txtEmail" runat="server" placeholder="Email">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Chưa nhập email!"
                                    ControlToValidate="txtEmail" Display="None" ForeColor="Red" ValidationGroup="G40">*</asp:RequiredFieldValidator>
          </div>
        <div class="row_account">
          <label class="item_title">Tiêu đề:<span class="required">*</span></label>
          <input type="text" class="inputbox" id="txttitle" runat="server" placeholder="Tiêu đề">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Chưa nhập tiêu đề"
                                    ControlToValidate="txttitle" Display="None" ForeColor="Red" ValidationGroup="G40">*</asp:RequiredFieldValidator>
          </div>
        <div class="row_account">
          <label class="item_title">Nội dung liên hệ:<span class="required">*</span></label>
          <textarea cols="45" rows="8" id="txtContent" runat="server" class="inputbox" placeholder="Vui lòng nhập nội dung liên hệ"></textarea>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Chưa nhập nội dung"
                                    ControlToValidate="txtContent" Display="None" ForeColor="Red" ValidationGroup="G40">*</asp:RequiredFieldValidator>
          </div>
        <div class="row_account">
          <label class="item_title">Mã an toàn:<span class="required">*</span></label>
          <input type="text" class="inputbox" id="txtCapcha" runat="server" style="width: 150px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Chưa nhập mã bảo vệ"
                                    ControlToValidate="txtCapcha" Display="None" ForeColor="Red" ValidationGroup="G40">*</asp:RequiredFieldValidator>
                  <span style="background-color: White;margin-top: 10px"> 
                    <script type="text/javascript"  language="Javascript">
                        function Catpc() {
                            var img = document.getElementById("icp");
                            img.src = "/vi-vn/captchr.ashx?query=" + Math.random();
                        }
                    </script>                    
                    <img id="icp" align="absmiddle" src='/vi-vn/captchr.ashx?query=<%= querys() %>' alt="Mã  an toàn" />
                    <a href="javascript:void(0)" onclick="javascript:Catpc();">
                        <img title="Refresh" style="vertical-align: middle;border-width:0px" src="/vi-vn/images/reloadpaf.png" /></a>
                  </span> 
          
          </div>
        <div class="row_contact"> Phần có gắn (<span class="required">*</span>) là thông tin bắt buộc nhập.</div>
        <div class="row_account">
        <asp:Button ID="Lbthanhtoan" runat="server" OnClick="Lbthanhtoan_Click"
                                ValidationGroup="G40" Text="Gửi" CssClass="btn_web send_button" /> 
        </div>
      </div>
      <!--End Form Contact-->
    </div>


        <div style="text-align: center">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True"
                ShowSummary="False" ValidationGroup="G40" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Email định dạng chưa đúng!" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"
                ForeColor="Red" ValidationGroup="G40"></asp:RegularExpressionValidator>
            <br />            
            <asp:Label ID="lblresult" runat="server" ForeColor="Red"></asp:Label>
        </div>
</asp:Content>
