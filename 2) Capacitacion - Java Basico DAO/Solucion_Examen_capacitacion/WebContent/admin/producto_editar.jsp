<!DOCTYPE html>
<%@page import="beans.HamburguesaBean"%>
<%@page import="beans.PapasBean"%>
<%@page import="beans.CremasBean"%>
<%@page import="java.util.Vector"%>
<%@page import="beans.ProductoBean" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">html{background:#eee}body{margin:17px 0 15px 0;padding:0;text-align:center;font-size:small;font-family:"Lucida Grande",Tahoma,Arial,Verdana,sans-serif}article,aside,figure,figure img,figcaption,hgroup,footer,header,nav,section,video,object,output{display:block}#container{text-align:left;background:#fff;border:1px solid #ccc;-webkit-box-shadow:rgba(0,0,0,0.2) 0px 0px 5px;-moz-box-shadow:rgba(0,0,0,0.2) 0px 0px 5px;-o-box-shadow:rgba(0,0,0,0.2) 0px 0px 5px;box-shadow:rgba(0,0,0,0.2) 0px 0px 5px}#container{margin:0 auto 10px auto;width:640px}form.wufoo{margin:20px 14px 0 14px;padding:0 0 20px 0;position:relative}#logo{margin:0;padding:0;min-height:0;background-color:#dedede;text-indent:-9000px;text-decoration:none}#logo a{min-height:40px;height:40px;display:block;background:url(/images/wflogo.png) no-repeat left top;overflow:hidden}* html #logo a{_background-image:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src="/images/wflogo.png", sizingMethod="crop")}img,a img{border:none;-ms-interpolation-mode:bicubic}.hide,.cloak div,.cloak span,.likert.cloak tbody,.likert.cloak thead{display:none !important}.likert.cloak table{border:none}.wufoo{font-family:"Lucida Grande","Lucida Sans Unicode",Tahoma,sans-serif;letter-spacing:.01em}.wufoo li{width:64%}.info{display:inline-block;clear:both;margin:0 0 5px 0;padding:0 1% 1.1em 1%;border-bottom:1px dotted #ccc}.info[class]{display:block}.hideHeader .info,#payment.hideHeader li.first{display:none}.info h2{font-weight:normal;font-size:160%;margin:0 0 5px 0;clear:left}.info div{font-size:95%;line-height:135%;color:#555}form ul{margin:0;padding:0;list-style-type:none}* html form ul{width:99%;zoom:1}form li{margin:0;padding:6px 1% 9px 1%;clear:both;background-color:transparent;position:relative;-webkit-transition:background-color 350ms ease-out;-moz-transition:background-color 350ms ease-out;-o-transition:background-color 350ms ease-out;transition:background-color 350ms ease-out}form ul:after,form li:after,form li div:after{content:".";display:block;height:0;clear:both;visibility:hidden}* html form li{height:1%;margin-bottom:-3px}*+html form li{height:1%;margin-bottom:-3px}* html form li div{display:inline-block}*+html form ul,*+html form li div{display:inline-block}form li div{margin:0;padding:0;color:#FFFFFF}form li span{margin:0 0.3em 0 0;padding:0;float:left;color:#444}form li div span{margin:0;display:block;width:100%;float:left}li.twoColumns div span{width:48%;margin:0 5px 0 0}li.threeColumns div span{width:30%;margin:0 5px 0 0}li.notStacked div span{width:auto;margin:0 7px 0 0}form li.complex{padding-bottom:0}form li.complex div span{width:auto;margin:0 0.3em 0 0;padding-bottom:12px}form li.complex div span.full{margin:0}form li.complex div span.left,form li.complex div span.right{margin:0;width:48%}form li.complex div span.full input,form li.complex div span.full select,form li.complex div span.left input,form li.complex div span.right input,form li.complex div span.left select,form li.complex div span.right select{width:100%}.left{float:left}.right{float:right}.clear{clear:both !important}label span,.section span,p span,.likert span{display:inline !important;float:none !important}form li div label,form li span label{margin:0;padding-top:3px;clear:both;font-size:85%;line-height:160%;color:#444;display:block}fieldset{display:block;border:none;margin:0;padding:0}label.desc,legend.desc{font-size:95%;font-weight:bold;color:#222;line-height:150%;margin:0;padding:0 0 3px 0;border:none;display:block;white-space:normal;width:100%}label.choice{display:block;cursor:pointer;font-size:100%;line-height:150%;margin:-17px 0 0 23px;padding:0 0 5px 0;color:#222;width:88%}.safari label.choice{margin-top:-16px}form.rightLabel .desc{padding-top:2px}span.symbol{font-size:120%;line-height:135%}form li .datepicker{float:left;margin:0.19em 5px 0 0;padding:0;width:16px;height:16px;cursor:pointer !important}form span.req{display:inline;float:none;color:red !important;font-weight:bold;margin:0;padding:0}form li div label var{font-weight:bold;font-style:normal}form li div label .currently{display:none}input.text,input.search,input.file,textarea.textarea,select.select{font-family:"Lucida Grande",Tahoma,Arial,sans-serif;font-size:100%;color:#333;margin:0;padding:2px 0}input.text,input.search,textarea.textarea{border-top:1px solid #7c7c7c;border-left:1px solid #c3c3c3;border-right:1px solid #c3c3c3;border-bottom:1px solid #ddd;background:#fff url(/images/fieldbg.gif) repeat-x top}input.nospin::-webkit-inner-spin-button,input.nospin::-webkit-outer-spin-button{-webkit-appearance:none;margin:0}select.select{padding:1px 0 0 0}input.search{-webkit-border-radius:10px;-moz-border-radius:10px;border-radius:10px;padding-left:6px}input.checkbox,input.radio{display:block;margin:4px 0 0 0;padding:0;width:13px;height:13px}input.other{margin:0 0 8px 25px}.safari select.select{font-size:120% !important;margin:0 0 1px 0}* html select.select{margin:1px 0}*+html select.select{margin:1px 0}.center,form li span.center input.text,form li span.center label,form li.name span label,form li.date input.text,form li.date span label,form li.phone input.text,form li.phone span label,form li.time input.text,form li.time span label{text-align:center}form li.time select.select{margin-left:5px}form li.price .right{text-align:right}.third{width:32% !important}.half{width:48% !important}.full{width:100% !important}input.small,select.small{width:25%}input.medium,select.medium{width:50%}input.large,select.large{width:100%}.msie[class] select.ieSelectFix{width:auto}.msie[class] select.ieSelectFix.small{min-width:25%}.msie[class] select.ieSelectFix.medium{min-width:50%}.msie[class] select.ieSelectFix.large{width:100%}textarea.textarea{width:293px;min-width:100%;max-width:100%}textarea.small{height:5.5em}textarea.medium{height:10em}textarea.large{height:20em}li.file a{color:#222;text-decoration:none}li.file span{display:inline;float:none}li.file img{display:block;float:left;margin:0 0 0 -10px;padding:5px 5px 7px 5px}li.file .file-size,li.file .file-type{color:#666;font-size:85%;text-transform:uppercase}li.file .file-name{display:block;padding:14px 0 0 0;color:blue;text-decoration:underline}li.file .file-delete{color:red !important;font-size:85%;text-decoration:underline}li.file a:hover .file-name{color:green !important}li.file a:hover .file-name{color:green !important}form li.likert{margin:0;padding:6px 1% 5px 1%;width:auto !important;clear:both !important;float:none !important}.likert table{margin:0 0 0.9em 0;background:#fff;width:100%;border:1px solid #dedede;border-bottom:none}.likert caption{text-align:left;color:#222;font-size:95%;line-height:135%;padding:5px 0 0.5em 0}.likert input{padding:0;margin:2px 0}.likert tbody td label{font-size:85%;display:block;color:#565656}.likert thead td,.likert thead th{background-color:#e6e6e6}.likert td{border-left:1px solid #ccc;text-align:center;padding:4px 6px}.likert thead td{font-size:85%;padding:10px 6px}.likert th,.likert td{border-bottom:1px solid #dedede}.likert tbody th{padding:8px 8px;text-align:left}.likert tbody th label{color:#222;font-size:95%;font-weight:bold}.likert tbody tr.alt td,.likert tbody tr.alt th{background-color:#f5f5f5}.likert tbody tr:hover td,.likert tbody tr:hover th{background-color:#FFFFCF}.col1 td{width:30%}.col2 td{width:25%}.col3 td{width:18%}.col4 td{width:14.5%}.col5 td{width:12%}.col6 td,.col7 td{width:10%}.col8 td,.col9 td,.col10 td{width:6.5%}.col11{width:6%}.hideNumbers tbody td label{display:none}form li.buttons{width:auto !important;position:relative;clear:both;padding:10px 1% 10px 1%}form li.buttons input{font-size:100%;margin-right:5px}input.btTxt{padding:0 7px;width:auto;overflow:visible}.safari input.btTxt{font-size:120%}.buttons .marker{position:absolute;top:0;right:0;padding:15px 10px 0 0;color:#000;width:auto}button.link{display:inline-block;border:none;background:none;color:blue;text-decoration:underline;cursor:pointer;padding:0;font-size:100%}button.link:hover{color:green}.leftLabel li,.rightLabel li{width:74% !important;padding-top:9px}.leftLabel .desc,.rightLabel .desc{float:left;width:31%;margin:0 15px 0 0}.rightLabel .desc{text-align:right}.leftLabel li div,.rightLabel li div{float:left;width:65%}* html .leftLabel li fieldset div,* html .rightLabel li fieldset div{float:right}*+html .leftLabel li fieldset div,*+html .rightLabel li fieldset div{float:right}.leftLabel .buttons,.rightLabel .buttons{padding-left:23%}.leftLabel .buttons div,.rightLabel .buttons div{float:none;margin:0 0 0 20px}.leftLabel p.instruct,.rightLabel p.instruct{width:28%;margin-left:5px}.leftLabel .altInstruct .instruct,.rightLabel .altInstruct .instruct{margin-left:31% !important;padding-left:15px;width:65%}.noI form li,.altInstruct form li{width:auto !important}.noI .leftLabel .buttons,.noI .rightLabel .buttons{padding-left:31%}.noI .leftLabel .buttons div,.noI .rightLabel .buttons div{margin:0 0 0 17px}form li.leftHalf,form li.rightHalf{width:47% !important}form li.leftThird,form li.middleThird,form li.rightThird{width:30% !important}form li.leftFourth,form li.middleFourth,form li.rightFourth{width:23% !important;_width:22% !important}form li.leftFifth,form li.middleFifth,form li.rightFifth{width:18% !important;_width:17% !important}form li.middleThird{clear:none !important;float:left;margin-left:2% !important}form li.leftFourth,form li.middleFourth,form li.leftFifth,form li.middleFifth{clear:none !important;float:left}form li.rightHalf,form li.rightThird,form li.rightFourth,form li.rightFifth{clear:none !important;float:right}li.leftHalf .small,li.rightHalf .small,li.leftHalf .medium,li.rightHalf .medium,li.leftThird .small,li.middleThird .small,li.rightThird .small,li.leftThird .medium,li.middleThird .medium,li.rightThird .medium,li.leftFourth .medium,li.middleFourth .medium,li.rightFourth .medium,li.leftFourth .small,li.middleFourth .small,li.rightFourth .small,li.leftFifth .medium,li.middleFifth .medium,li.rightFifth .medium,li.leftFifth .small,li.middleFifth .small,li.rightFifth .small{width:100% !important}form li.leftHalf,form li.leftThird,form li.leftFourth,form li.leftFifth{clear:left !important;float:left}* html form li.middleFourth{margin-left:1% !important}* html form li.middleFifth{margin-left:1% !important}form li.focused{background-color:#fff7c0}form .instruct{position:absolute;top:0;left:0;z-index:1000;width:45%;margin:0 0 0 8px;padding:8px 10px 10px 10px;border:1px solid #e6e6e6;background:#f5f5f5;visibility:hidden;opacity:0;font-size:105%;-webkit-transition:opacity 350ms ease-out;-moz-transition:opacity 350ms ease-out;-o-transition:opacity 350ms ease-out;transition:opacity 350ms ease-out}form .instruct small{line-height:120%;font-size:80%;color:#444}form li.focused .instruct,form li:hover .instruct{left:100%;visibility:visible;opacity:1}.altInstruct .instruct,li.leftHalf .instruct,li.rightHalf .instruct,li.leftThird .instruct,li.middleThird .instruct,li.rightThird .instruct,li.leftFourth .instruct,li.middleFourth .instruct,li.rightFourth .instruct,li.leftFifth .instruct,li.middleFifth .instruct,li.rightFifth .instruct,.iphone .instruct{visibility:visible;position:static;margin:0;padding:6px 0 0 0;width:100%;clear:left;background:none !important;border:none !important;font-style:italic;opacity:1}.altInstruct p.complex,li.leftHalf p.complex,li.rightHalf p.complex,li.leftThird p.complex,li.middleThird p.complex,li.rightThird p.complex,.iphone p.complex{padding:0 0 9px 0}.hideSeconds .seconds,.hideAMPM .ampm,.hideAddr2 .addr2,.hideSecondary #previousPageButton,.hideCents .radix,.hideCents .cents,.hideState .state{display:none}form li.section{clear:both;margin:0;padding:7px 0 0 0;width:auto !important;position:static}form li.section h3{font-weight:normal;font-size:110%;line-height:135%;margin:0 0 3px 0;width:auto;padding:12px 1% 0 1%;border-top:1px dotted #ccc}form li.first{padding:0}form li.first h3{padding:8px 1% 0 1%;border-top:none !important}form li.section div{display:block;width:auto;float:none;font-size:85%;line-height:160%;margin:0 0 1em 0;padding:0 1% 0 1%}form li.section.scrollText{border:1px solid #dedede;height:150px;overflow:auto;margin-bottom:10px;padding:10px;-webkit-box-shadow:rgba(0,0,0,0.15) 0 0 3px;-moz-box-shadow:rgba(0,0,0,0.15) 0 0 3px;-o-box-shadow:rgba(0,0,0,0.15) 0 0 3px;box-shadow:rgba(0,0,0,0.15) 0 0 3px}form li.section.scrollText h3{border:none;padding-top:8px}form li.captcha{width:auto !important;clear:both;border-top:1px dotted #ccc;margin-top:5px;padding:1.1em 1% 9px 1%;width:auto !important;position:static}form li.captcha label.desc{width:auto !important;margin-bottom:4px;float:none}*+html #recaptcha_area,*+html #recaptcha_table{min-width:450px !important}* html #recaptcha_area,* html #recaptcha_table{width:450px !important}#recaptcha_widget_div table{background:#fff}form li.captcha .noscript iframe{border:none;overflow:hidden;margin:0;padding:0}form li.captcha .noscript label.desc{display:block !important}form li.captcha .noscript textarea{margin-left:12px}iframe[src="about:blank"]{display:none}form li.paging-context{clear:both;border-bottom:1px dotted #ccc;margin:0 0 7px 0;padding:5px 1% 10px 1%;width:auto !important;position:static}.paging-context table{width:100%}.pgStyle1 td{text-align:left;vertical-align:middle}.pgStyle1 td.c{width:22px}.pgStyle1 td.t{padding:0 1%}.pgStyle1 var{display:block;float:left;background:none;border:1px solid #ccc;color:#000;width:20px;height:20px;line-height:19px;text-align:center;font-size:85%;font-style:normal;-webkit-border-radius:10px;-moz-border-radius:10px;border-radius:10px;-webkit-box-shadow:rgba(0,0,0,0.15) 0 1px 2px;-moz-box-shadow:rgba(0,0,0,0.15) 0 1px 2px;-o-box-shadow:rgba(0,0,0,0.15) 0 1px 2px;box-shadow:rgba(0,0,0,0.15) 0 1px 2px}.pgStyle1 .done var{background:#ccc}.pgStyle1 .selected var{background:#FFF7C0;color:#000;border:1px solid #e6dead;font-weight:bold}.pgStyle1 b{font-size:85%;font-weight:normal;color:#000}.pgStyle1 .selected b{font-weight:bold}.circle6 td,.circle7 td{vertical-align:top;text-align:center}.nopagelabel td.t{display:none}.nopagelabel .pgStyle1 var,.circle6 var,.circle7 var{width:24px;height:24px;line-height:24px;font-size:90%;margin:0 auto 7px auto;float:none;-webkit-border-radius:12px;-moz-border-radius:12px;border-radius:12px}.nopagelabel .pgStyle1 var{margin-bottom:0}.circle6 b,.circle7 b{padding:0}.circle2 td{width:50%}.circle3 td{width:33%}.circle4 td{width:25%}.circle5 td{width:20%}.circle6 td{width:16.6%}.circle7 td{width:14.2%}.pgStyle2 td{vertical-align:middle;height:25px;padding:2px;border:1px solid #ccc;position:relative;-webkit-border-radius:14px;-moz-border-radius:14px;border-radius:14px;-webkit-box-shadow:rgba(0,0,0,0.1) 1px 1px 1px;-moz-box-shadow:rgba(0,0,0,0.1) 1px 1px 1px;-o-box-shadow:rgba(0,0,0,0.1) 1px 1px 1px;box-shadow:rgba(0,0,0,0.1) 1px 1px 1px}.pgStyle2 var{display:block;height:26px;float:left;background:#FFF7C0;color:#000;font-style:normal;text-align:right;-webkit-border-radius:12px;-moz-border-radius:12px;border-radius:12px;-webkit-box-shadow:rgba(0,0,0,0.15) 1px 0 0;-moz-box-shadow:rgba(0,0,0,0.15) 1px 0 0;-o-box-shadow:rgba(0,0,0,0.15) 1px 0 0;box-shadow:rgba(0,0,0,0.15) 1px 0 0}.pgStyle2 var b{display:block;float:right;font-size:100%;padding:3px 10px 3px 3px;line-height:19px}.pgStyle2 em{font-size:85%;font-style:normal;display:inline-block;margin:0 0 0 9px;padding:4px 0;line-height:18px}.pgStyle2 var em{padding:4px 5px 3px 0}.page1 .pgStyle2 var{padding-left:7px;text-align:left;background:none;-webkit-box-shadow:none;-moz-box-shadow:none;-o-box-shadow:none;box-shadow:none}.page1 .pgStyle2 b{float:none;padding-right:0}.hideMarkers .marker,.nopagelabel .pgStyle1 b,.nopagelabel .pgStyle2 em{display:none !important}#errorLi{width:99%;margin:15px auto 15px auto;background:#fff !important;border:1px solid red;text-align:center;padding:1em 0 1em 0;-webkit-border-radius:20px;-moz-border-radius:20px;border-radius:20px}#errorMsgLbl{margin:0 0 5px 0;padding:0;font-size:125%;color:#df0000 !important}#errorMsg{margin:0 0 2px 0;color:#000 !important;font-size:100%}#errorMsg b{padding:2px 8px;background-color:#ffdfdf !important;color:red !important;-webkit-border-radius:10px;-moz-border-radius:10px;border-radius:10px}form li.error{display:block !important;background-color:#ffdfdf !important;margin-bottom:3px !important}form li label.error,form li input.error{color:#df0000 !important;font-weight:bold !important}form li input.error{background:#fff !important;border:2px solid #df0000 !important}form li.error label,form li.error span.symbol{color:#000 !important}form li.error .desc{color:#df0000 !important}form p.error{display:none;margin:0 !important;padding:7px 0 0 0 !important;line-height:10px !important;font-weight:bold;font-size:11px;color:#df0000 !important;clear:both}form li.error p.error{display:block}form li.complex p.error{padding:0 0 9px 0 !important}.rtl h1,.rtl form *{direction:rtl;text-align:right}.rtl li span{float:right}.rtl .right{float:left}.rtl #logo a{background-position:right top}.rtl label.choice{margin:-17px 23px 0 0}.rtl .leftLabel .desc,.rtl .rightLabel .desc{float:right;margin:0 0 0 15px}.rtl .leftLabel li div,.rtl .rightLabel li div{float:right}.rtl .leftLabel .desc{text-align:left}.rtl li.focused .instruct,.rtl li:hover .instruct{left:auto;right:100%}.rtl .leftLabel p.instruct,.rtl .rightLabel p.instruct{margin-right:5px}.rtl .leftLabel .altInstruct .instruct,.rtl .rightLabel .altInstruct .instruct{margin-right:31% !important;padding-right:15px}.rtl .leftLabel .buttons,.rtl .rightLabel .buttons{padding-right:23%}.rtl .leftLabel .buttons div,.rtl .rightLabel .buttons div{float:none;margin:0 20px 0 0}.noI .rtl .leftLabel .buttons,.noI .rtl .rightLabel .buttons{padding-right:31%}.noI .rtl .leftLabel .buttons div,.noI .rtl .rightLabel .buttons div{margin:0 17px 0 0}.rtl .likert td label{text-align:center}.rtl .likert caption,.rtl .likert tbody th{text-align:right}.rtl .likert td{text-align:center;border-left:none;border-right:1px solid #ccc}.rtl .pgStyle1 var{text-align:center}.rtl .pgStyle1 td{text-align:right}.rtl .pgStyle2 var{float:right}.rtl .pgStyle2 var b{float:left;padding:3px 3px 3px 10px}.rtl .pgStyle2 em{margin:0 9px 0 0}.rtl .pgStyle2 var em{padding:4px 0 3px 5px}.rtl .page1 .pgStyle2 var{padding-right:7px}.rtl .page1 .pgStyle2 b{padding-left:0}.rtl .buttons .marker{right:auto;left:0;padding:15px 0 0 10px}.rtl #errorLi *{text-align:center}div.calendar{position:relative;z-index:15000;-webkit-box-shadow:rgba(0,0,0,0.4) 0px 2px 7px;-moz-box-shadow:rgba(0,0,0,0.4) 0px 2px 7px;box-shadow:rgba(0,0,0,0.4) 0px 2px 7px;-webkit-border-radius:11px;-moz-border-radius:11px;border-radius:11px;-moz-background-clip:padding;-webkit-background-clip:padding-box;background-clip:padding-box}.calendar table{cursor:pointer;font-size:11px;color:#000;background:#fff;font-family:"Lucida Grande",Tahoma,Arial,Verdana,sans-serif;-webkit-border-radius:11px;-moz-border-radius:11px;border-radius:11px;-moz-background-clip:padding;-webkit-background-clip:padding-box;background-clip:padding-box}.calendar .button{text-align:center;padding:3px 0}.calendar .question{-moz-border-radius-topleft:11px;-webkit-border-top-left-radius:11px;border-top-left-radius:11px}.calendar .close{-moz-border-radius-topright:11px;-webkit-border-top-right-radius:11px;border-top-right-radius:11px}.calendar thead .title{font-weight:bold;text-align:center;background:#fff;color:#000;font-size:12px;padding:5px 0 5px 0}.calendar thead .headrow{background:#dedede;color:#333;font-weight:bold}.calendar thead .daynames{background:#f5f5f5;color:#333}.calendar thead .name{padding:3px 2px;text-align:center;color:#000;border-bottom:1px solid #dedede}.calendar thead .weekend{color:#666;background:#dedede}.calendar thead .hilite{background-color:#444;color:#fff;padding:1px}.calendar thead .active{background-color:#d12f19;color:#fff}.calendar tbody .day{width:2em;color:#222;text-align:right;padding:3px 2px;border:1px solid #fff}.calendar tbody .day.othermonth{font-size:80%;color:#bbb}.calendar tbody .day.othermonth.oweekend{color:#fbb}.calendar table .wn{padding:2px 2px 2px 2px;border-right:1px solid #000;background:#666}.calendar tbody .rowhilite td,.calendar tbody .rowhilite td.wn{background:#ddd}.calendar tbody td.hilite{background:#444 !important;color:#fff !important}.calendar tbody td.active{color:#529214;background:#529214 !important}.calendar tbody td.selected{font-weight:bold;border:1px solid #888;padding:1px;background:#f5f5f5 !important;color:#222 !important}.calendar tbody td.weekend{color:#666}.calendar tbody td.today{font-weight:bold;color:#529214;background:#D9EFC2}.calendar tbody .disabled{color:#999}.calendar tbody .emptycell{visibility:hidden}.calendar tbody .emptyrow{display:none}.calendar tfoot .footrow{text-align:center;color:#fff;padding:6px 0}.calendar tfoot .ttip{background:#556;color:#fff;font-size:10px;border-top:1px solid #dedede;padding:4px 0;-moz-border-radius-bottomright:11px;-moz-border-radius-bottomleft:11px;-webkit-border-bottom-left-radius:11px;-webkit-border-bottom-right-radius:11px;border-bottom-left-radius:11px;border-bottom-right-radius:11px;width:192px}.calendar tfoot .hilite{background:#aaf;border:1px solid #04f;color:#000;padding:1px}.calendar tfoot .active{background:#77c;padding:2px 0px 0px 2px}.calendar .combo{position:absolute;display:none;top:0px;left:0px;width:4em;border:1px solid #ccc;background:#f5f5f5;color:#222;font-size:90%;z-index:100}.calendar .combo .label,.calendar .combo .label-IEfix{text-align:center;padding:1px}.calendar .combo .label-IEfix{width:4em}.calendar .combo .hilite{background:#444;color:#fff}.calendar .combo .active{border-top:1px solid #999;border-bottom:1px solid #999;background:#dedede;font-weight:bold}.confirm .wufoo{text-align:center}.confirm h2{font-weight:normal;font-size:160%;margin:0 0 0.2em 0;line-height:135%;color:#222;margin:0 1em;padding:70px 0 80px 0}.embed .confirm h2{padding-bottom:50px}.confirm .wufoo div{text-align:justify}.confirm .wufoo div p{font-size:120%;line-height:160%;margin:0 10px 1.5em 10px}ul.protected{list-style:none;margin:50px 0 30px 0}.protected li{text-align:center;padding:10px 0;width:100% !important}.protected h2{font-weight:bold;color:#DF0000;margin:0 auto 10px auto}.protected label{font-size:120% !important;padding-top:10px;display:block}.protected input.text{font-size:170% !important;width:380px;text-align:center}.protected .buttons{margin:0 auto;padding:0}.protected #saveForm{font-size:120% !important}.rtl .protected li,.rtl .protected input.text{text-align:right}.rtl .protected .buttons{margin:0}#merchant{text-align:center}#merchant li{width:97%}#merchant .info{border-bottom:none !important}#merchantMessage{padding:60px 20px 40px 20px}form li.invoice{clear:both;width:auto !important;margin:0;padding:0;position:static}.invoice table{font-size:90%;width:100%;margin:0 0 15px 0}.invoice thead th,.invoice tbody th,.invoice tbody td,.invoice tfoot th{border:1px solid #ccc;border-bottom:none;border-right:none;padding:7px}.invoice thead th{background:#eee;font-weight:normal}.invoice tbody th em{font-weight:normal;font-size:85%;display:block}.invoice tbody th i{font-style:normal;font-weight:normal}.invoice .description{width:75%}.invoice .total{text-align:right;padding-right:10px;border-right:1px solid #ccc}.invoice tfoot .last th,.invoice tfoot .last td,.invoice tbody .last td{border-bottom:1px solid #ccc}.invoice tfoot th,.invoice tfoot td{border-top:1px solid #ccc}.invoice .price,.invoice .quantity{text-align:center}.invoice tfoot th{text-align:right}#payment{margin-top:12px}#payment .paging-context{padding-top:10px !important;border-top:1px dotted #ccc;margin-bottom:17px}#payment .section h3{font-size:140%}#payment .section div{font-size:90%}#payment .desc{padding:0;line-height:140%;font-size:120%}#payment .desc strong{display:block;font-weight:normal;font-size:10px;line-height:150%;color:#888}#payment .desc img{margin-bottom:-1px}#payment .error .desc strong{color:#DF0000;font-size:11px}#shipSection input.checkbox{width:13px !important}.ship{display:block}.same .ship{display:none}#shippingSame{padding-bottom:5px;margin-top:-3px !important}#shipSection .desc{margin-top:-5px !important}#ppSection,#ccSection{border-bottom:1px dotted #ccc}#ppSection .choice{margin:-25px 0 0 23px;padding:0;width:auto}* html #ppSection .choice{margin:-20px 0 0 23px}#ppSection span.last{margin:0}#ppSection span.first{margin:0 12px 0 0}#ppSection img{cursor:pointer}.ppexpress #ccSection,.ppexpress #billSection,.ppexpress #shipSection,.ppexpress #invoiceSection,.ppexpress #submitFormButton{display:none !important}#paypalSubmit{display:none}.ppexpress #paypalSubmit{display:inline}.ppexpress #ppSection{border:none}.echeck #ccSection,.echeck #billSection,.echeck #shippingSame{display:none !important}.noecheck #ecSection{display:none !important}#ccSection,#billSection,#ecSection{padding-top:20px;padding-bottom:8px}#shipSection{border-top:1px dotted #ccc;padding-top:20px}#shipSection div{padding-bottom:8px}#invoiceSection{border-top:1px dotted #ccc;padding-top:15px;padding-bottom:0}#expMonth{width:94px}#expYear{width:64px}.checkNumbers{width:100%;margin-bottom:10px;border:1px solid #b3c8d6}.routingNumber,.accountNumber{display:block;width:14px;height:14px;background:#000;color:#fff;text-align:center;line-height:14px;-webkit-border-radius:7px;-moz-border-radius:7px;border-radius:7px;font-size:8px;float:left;margin:2px 4px -2px 0}.routingNumber{background:#CA2B0B}.accountNumber{background:#1751BC}.checkNotice{background:#eee;padding:0 !important;margin:7px 0 16px 0 !important;-webkit-border-radius:14px;-moz-border-radius:14px;border-radius:14px;-webkit-box-shadow:0px 0px 2px rgba(0,0,0,0.35);-moz-box-shadow:0px 0px 2px rgba(0,0,0,0.35);-o-box-shadow:0px 0px 2px rgba(0,0,0,0.35);box-shadow:0px 0px 2px rgba(0,0,0,0.35)}.checkNotice label{margin:6px 14px 10px 14px}#ccSection{position:relative}#ccSection img{cursor:pointer}* html #ccSection img,* html #ppSection img{_behavior:url(/images/iepngfix.htc)}#cvc{position:absolute;top:100%;z-index:1000;right:-15px;margin:-10px 0 0 0;width:170px !important;min-width:0 !important;float:none;border:1px solid #000;background:#222 url(/images/ttclose.png) no-repeat 95% 9px;color:#fff;text-align:justify;padding:12px 15px 12px 12px;font-size:80%;line-height:150%;-moz-border-radius:15px;-webkit-border-radius:15px;border-radius:15px;-webkit-box-shadow:rgba(0,0,0,0.4) 0px 2px 7px;-moz-box-shadow:rgba(0,0,0,0.4) 0px 2px 7px;-o-box-shadow:rgba(0,0,0,0.4) 0px 2px 7px;box-shadow:rgba(0,0,0,0.4) 0px 2px 7px;cursor:pointer;display:none}.showCVC #cvc{display:block}* html .showCVC #country{visibility:hidden}#cvc h5{color:#F2EF8C;font-size:120%;padding:0 0 4px;margin:0}#stripe{display:inline;width:auto;float:right;position:relative;top:-22px;font-size:14px;color:#777}#stripe a{text-indent:-9000px;background:url(/images/payment/stripe.png) no-repeat;width:49px;height:20px;display:inline-block;text-decoration:none;position:relative;top:-2px;margin:0 7px -2px 2px;border-bottom:1px solid transparent}#stripe a:hover{border-bottom:1px dotted #777}.hasCoupon table{margin-bottom:3px}#couponSection li{text-align:right;float:none}#couponSection label.desc{width:75%;font-size:100% !important;margin:1px 0 0 0;text-align:right;font-weight:normal}#couponSection div{display:inline-block;width:24%;margin:0;float:right}#coupon{-webkit-border-radius:14px;-moz-border-radius:14px;border-radius:14px;width:95%;font-weight:bold;padding-left:5px;margin-bottom:10px}.error #coupon{margin-bottom:0px !important}.error label.desc{font-weight:bold !important}#couponSection label.error{margin-bottom:6px;font-size:75%;font-weight:normal !important;color:#df0000 !important}.running li.section.first{width:68% !important}li.total{height:0px;margin:0;padding:0;position:relative;width:100% !important}#lola{position:absolute;top:0;right:0;z-index:100;width:29%;margin:7px 0 0 0;padding:10px 12px 14px 12px;background:#E6E6E6;-webkit-border-radius:7px;-moz-border-radius:7px;border-radius:7px;display:block !important}.embed #lola{-webkit-transition:margin 500ms;-moz-transition:margin 500ms;-o-transition:margin 500ms;transition:margin 500ms}#lola table{width:100%}#lola td{text-align:right}#lola tbody b{float:left;padding:2px 0 0 0}#lola tbody span{float:right;font-size:135%;font-weight:bold;width:72%}#lola tbody td{border-bottom:1px solid #ccc;padding:0 0 7px 0}#lola tfoot th,#lola tfoot td{font-size:85%;padding:8px 0 0 0}#lola tfoot td{white-space:nowrap}#lola tfoot th{color:#696969;text-align:left}#lola tfoot tr.negAmount{color:red}.leftLabel li.total,.rightLabel li.total{width:100% !important;margin:0 !important;padding:0 !important}.leftLabel #lola,.rightLabel #lola{width:20% !important;right:-3px}.leftLabel #lola tbody b,.rightLabel #lola tbody b{font-size:85%;padding:3px 0 0 0}.leftLabel #lola tbody span,.rightLabel #lola tbody span{width:65%;font-size:125%}.leftLabel #lola tfoot th,.leftLabel #lola tfoot td,.rightLabel #lola tfoot th,.rightLabel #lola tfoot td{font-size:75%}.rtl #lola{right:auto;left:0}.rtl #lola tbody b,.rtl #lola tfoot th{float:right}.rtl #lola tbody span{float:left;text-align:left}.rtl .invoice thead th,.rtl .invoice tbody th,.rtl .invoice tbody td,.rtl .invoice tfoot th{border-right:1px solid #ccc}.rtl .invoice .total{border-right:none;border-left:1px solid #ccc}.rtl #payment .desc strong{text-align:left;width:auto}.rtl #payment .desc strong img{float:left;margin:1px 3px 0 0}.rtl #ppSection .choice{margin:-25px 23px 0 0}* html .rtl #ppSection .choice{margin:-20px 23px 0 0}.rtl #ppSection span.first{margin:0 0 0 12px}.rtl #cvc{background-position:5% 9px;right:auto;left:-15px}.rtl .routingNumber,.rtl .accountNumber{float:right;margin:2px 0 -2px 4px;text-align:center !important}@media print{#public,h2{margin:0}#container{border:none !important;width:100%}#logo,form .buttons,#printPage,.icon{display:none !important}form.wufoo{margin:0;padding:0;page-break-inside:auto}form.wufoo .instruct{display:block}}@media only screen and (max-width: 480px){html{background:none;margin:0}body{margin:0 0 15px 0 !important}#container,form li.focused{border:none !important;-webkit-box-shadow:none !important;-moz-box-shadow:none !important;-o-box-shadow:none !important;box-shadow:none !important}#container,#footer{margin:0 auto !important;width:100%}#stripe{top:7px}}.embed{padding:0 !important;overflow:hidden;background:transparent}.embed #container{width:100% !important;border:none !important;background:transparent;-webkit-box-shadow:none !important;-moz-box-shadow:none !important;-o-box-shadow:none !important;box-shadow:none !important}.embed #logo{display:none !important}.embed form,.embed body{margin:0 !important}.scroll{overflow-y:auto !important}.scroll{overflow-x:hidden !important}</style>

<title>Editar Producto</title>
</head>
<body>

<%
	ProductoBean producto = (ProductoBean)request.getAttribute("producto");
	Vector<HamburguesaBean> hamburguesas = (Vector)request.getAttribute("hamburguesas");
	Vector<PapasBean> papas = (Vector)request.getAttribute("papas");
	Vector<CremasBean> cremas = (Vector)request.getAttribute("cremas");
%>

	<form id="form64" name="form64" class="wufoo topLabel page1" method="post" action="<%=request.getContextPath() %>/Producto">
	<input type="hidden" value="<%=producto.getId() %>" name="txt_id" />
	<input type="hidden" value="actualizar" name="accion" />
  		<h2 align="center"> <font color="Purple" face="Comic Sans MS,arial,verdana"> EDITAR INFORMACION DE PEDIDO </font></h2>
		
		<div id="container" class="ltr">
		<table>
		
		<tr>
			<td>
				<label class="desc" id="title3" for=""><font face="Comic Sans MS,arial,verdana">NOMBRE DEL CLIENTE :</font><span id="req_3" class="req">*</span></label>
				<div><input id="" name="txt_nombre_cliente" type="text" class="field text medium" value="<%=producto.getNombre_cliente() %>" maxlength="" tabindex="3"  /></div>
			</td>
		</tr>	
		
		<tr>
			<td> 
				<label class="desc" id="title3" for=""><font face="Comic Sans MS,arial,verdana">TIPO DE HAMBURGUESA :</font><span id="req_3" class="req">*</span></label>
				<div>
					<select size="1" name="sel_hamburguesa" id="">
	                    <option value="0">seleccionar</option>
	                    <% for(int i=0; i<hamburguesas.size(); i++){ %>
	                   		<option value="<%=hamburguesas.get(i).getId() %>" 
	                   		   <% if(producto.getHambuerguesa_id() == hamburguesas.get(i).getId()){ %>
	                   		   selected="selected"
	                   		   <% } %> 
	                   		>
	                   		<%=hamburguesas.get(i).getNombre() %>
	                   		</option>
	                    <% } %>
	            	</select>
				</div>
			</td>
		</tr>
			
		<tr>
			<td> 
				<label class="desc" id="title3" for=""><font face="Comic Sans MS,arial,verdana">TIPO DE PAPAS :</font><span id="req_3" class="req">*</span></label>
				<div>
					<select size="1" name="sel_papas" id="">
	                    <option value="0">seleccionar</option>
	                    <% for(int i=0; i<papas.size(); i++){ %>
	                   		<option value="<%=papas.get(i).getId() %>" 
	                   		   <% if(producto.getPapas_id() == papas.get(i).getId()){ %>
	                   		   selected="selected"
	                   		   <% } %> 
	                   		>
	                   		<%=papas.get(i).getNombre() %>
	                   		</option>
	                    <% } %>
	            	</select>
				</div>
			</td>
		</tr>	
			
		<tr>
			<td>
				<label class="desc" id="title3" for=""><font face="Comic Sans MS,arial,verdana">PRECIO :</font><span id="req_3" class="req">*</span></label>
				<div><input id="" name="txt_precio" type="text" class="field text medium" value="<%=producto.getPrecio() %>" maxlength="" tabindex="3"  /></div>
			</td>
		</tr>	
		
		<tr>
	
		<td>
			
				<label class="desc" id="title3" for=""><font face="Comic Sans MS,arial,verdana">CREMAS :</font><span id="req_3" class="req">*</span></label>
				<div>
					<input type="radio" name="cbo_cremas" id="" value="1" /><label for="" class="opt" style="display: inline;">Mayonesa</label>
	                <input type="radio" name="cbo_cremas" id="" value="2" /><label for="" class="opt" style="display: inline;">Mostaza</label>
	                <input type="radio" name="cbo_cremas" id="" value="3" /><label for="" class="opt" style="display: inline;">Ketchup</label>
	                <input type="radio" name="cbo_cremas" id="" value="4" /><label for="" class="opt" style="display: inline;">Salsa Golf</label>
	                <input type="radio" name="cbo_cremas" id="" value="5" /><label for="" class="opt" style="display: inline;">Aji</label>
	                <input type="radio" name="cbo_cremas" id="" value="6" /><label for="" class="opt" style="display: inline;">Tartara</label>
			</div>
		</td>
		</tr>
	
		
		<tr>			

			<td align="center">
				<div><input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Registrar" /></div>
			</td>
		</tr>	
	   </table>
	</form> 
	</div>
</body>
</html>