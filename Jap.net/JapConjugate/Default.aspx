<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="v" runat="server" Height="18px" Width="206px">食べる</asp:TextBox>
        <asp:DropDownList ID="g" runat="server">
            <asp:ListItem Value="1">إيتشيدان</asp:ListItem>
            <asp:ListItem Value="5">غودان</asp:ListItem>
            <asp:ListItem Value="2">شاذ</asp:ListItem>
            <asp:ListItem Value="47">فعل zuru</asp:ListItem>
            <asp:ListItem Value="48">فعل kuru</asp:ListItem>
            <asp:ListItem Value="68">فعل suru</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="d" runat="server" Text="صرف الفعل" Width="119px" /><br />
        <table style="width: 724px; height: 525px" id="tb" border="2" bordercolor="#000000" cellpadding="0">
            <tr>
                <td style="width: 617px; text-align: center; height: 13px;">
                    سالب</td>
                <td style="width: 774px; text-align: center; height: 13px;" dir="rtl">
                    موجب</td>
                <td colspan="2" style="height: 13px">
                </td>
                
            </tr>
            <tr>
                <td colspan="2" style="text-align: center; height: 12px;">
                    <asp:Label ID="l01" runat="server" Height="12px" Text=" " Width="353px"></asp:Label></td>
                <td colspan="2" style="text-align: center; height: 12px;">
                    الفعل</td>
            </tr>
            <tr>
                <td style="width: 617px; height: 12px; text-align: center;">
                    <asp:Label ID="l03" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 774px; height: 12px; text-align: center;">
                    <asp:Label ID="l02" runat="server" Height="12px" TabIndex="1" Text=" " Width="143px"></asp:Label></td>
                <td colspan="2" style="height: 12px; text-align: center">
                    صيغة المصدر</td>
            </tr>
            <tr>
                <td style="width: 617px; height: 12px; text-align: center;">
                    <asp:Label ID="l05" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 774px; height: 12px; text-align: center;">
                    <asp:Label ID="l04" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 356px; text-align: center; height: 12px;">
                    مهذب</td>
                <td style="width: 356px; text-align: center;" rowspan="2">
                    المضارع</td>
            </tr>
            <tr>
                <td style="width: 617px; text-align: center; height: 14px;">
                    <asp:Label ID="l07" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 774px; text-align: center; height: 14px;">
                    <asp:Label ID="l06" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 356px; text-align: center; height: 14px;">
                    عامي</td>
            </tr>
            <tr>
                <td style="width: 617px; text-align: center; height: 12px;">
                    <asp:Label ID="l09" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 774px; text-align: center; height: 12px;">
                    <asp:Label ID="l08" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 356px; text-align: center; height: 12px;">
                    مهذب</td>
                <td style="width: 356px; text-align: center;" rowspan="2">
                    الماضي</td>
            </tr>
            <tr>
                <td style="width: 617px; text-align: center; height: 12px;">
                    <asp:Label ID="l11" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 774px; text-align: center; height: 12px;">
                    <asp:Label ID="l10" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 356px; text-align: center; height: 12px;">
                    عامي</td>
            </tr>
            <tr>
                <td style="width: 617px; height: 12px; text-align: center">
                    <asp:Label ID="l23" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 774px; height: 12px; text-align: center">
                    <asp:Label ID="l22" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 356px; height: 12px; text-align: center">
                    مهذب</td>
                <td rowspan="2" style="width: 356px; text-align: center">
                    الشرط</td>
            </tr>
            <tr>
                <td style="width: 617px; text-align: center; height: 12px;">
                    <asp:Label ID="l13" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 774px; text-align: center; height: 12px;">
                    <asp:Label ID="l12" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 356px; height: 12px; text-align: center;">
                    عامي</td>
            </tr>
            <tr>
                <td style="width: 617px; text-align: center; height: 12px;">
                    <asp:Label ID="l15" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 774px; text-align: center; height: 12px;">
                    <asp:Label ID="l14" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 356px; text-align: center; height: 12px;">
                    مهذب</td>
                <td rowspan="2" style="width: 356px; text-align: center">
                    الأمر</td>
            </tr>
            <tr>
                <td style="width: 617px; text-align: center; height: 12px;">
                    <asp:Label ID="l19" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 774px; text-align: center; height: 12px;">
                    <asp:Label ID="l18" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 356px; text-align: center; height: 12px;">
                    عامي</td>
            </tr>
            <tr>
                <td style="width: 617px; height: 12px; text-align: center">
                    &nbsp;<asp:Label ID="l17" runat="server" Height="12px" Text=" " Width="194px"></asp:Label></td>
                <td style="width: 774px; height: 12px; text-align: center">
                    <asp:Label ID="l20" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 356px; height: 12px; text-align: center">
                    مهذب</td>
                <td rowspan="2" style="width: 356px; text-align: center">
                    هيا لـــ</td>
            </tr>
            <tr>
                <td style="width: 617px; height: 12px; text-align: center">
                    <asp:Label ID="l16" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 774px; height: 12px; text-align: center">
                    <asp:Label ID="l21" runat="server" Height="12px" Text=" " Width="143px"></asp:Label></td>
                <td style="width: 356px; height: 12px; text-align: center">
                    عامي</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
