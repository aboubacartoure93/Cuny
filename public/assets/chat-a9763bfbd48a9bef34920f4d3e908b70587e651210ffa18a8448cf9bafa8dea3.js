var chatboxFocusSimple=new Array,chatBoxesSimple=new Array,readySimple=function(){chatBoxS={chatWith:function(t){chatBoxS.createChatBox(t),$("#chatbox_"+t+" .chatboxtextarea").focus()},close:function(t){$("#chatbox_"+t).css("display","none"),chatBoxS.restructure()},notify:function(){$("#chatAudio")[0].play()},restructure:function(){for(x in align=0,chatBoxesSimple)chatbox_id=chatBoxesSimple[x],"none"!=$("#chatbox_"+chatbox_id).css("display")&&(0==align?$("#chatbox_"+chatbox_id).css("right","20px"):(width=287*align+20,$("#chatbox_"+chatbox_id).css("right",width+"px")),align++)},createChatBox:function(t,o,e){if($("#chatbox_"+t).length>0)return"none"==$("#chatbox_"+t).css("display")&&($("#chatbox_"+t).css("display","block"),chatBoxS.restructure()),void $("#chatbox_"+t+" .chatboxtextarea").focus();for(x in $("body").append('<div id="chatbox_'+t+'" class="chatbox"></div>'),$.get("conversations/"+t,function(o){$("#chatbox_"+t).html(o),$("#chatbox_"+t+" .chatboxcontent").scrollTop($("#chatbox_"+t+" .chatboxcontent")[0].scrollHeight)},"html"),$("#chatbox_"+t).css("bottom","0px"),chatBoxeslength=0,chatBoxesSimple)"none"!=$("#chatbox_"+chatBoxesSimple[x]).css("display")&&chatBoxeslength++;if(0==chatBoxeslength?$("#chatbox_"+t).css("right","20px"):(width=287*chatBoxeslength+20,$("#chatbox_"+t).css("right",width+"px")),chatBoxesSimple.push(t),1==e){for(minimizedChatBoxes=new Array,$.cookie("chatbox_minimized")&&(minimizedChatBoxes=$.cookie("chatbox_minimized").split(/\|/)),minimize=0,j=0;j<minimizedChatBoxes.length;j++)minimizedChatBoxes[j]==t&&(minimize=1);1==minimize&&($("#chatbox_"+t+" .chatboxcontent").css("display","none"),$("#chatbox_"+t+" .chatboxinput").css("display","none"))}chatboxFocusSimple[t]=!1,$("#chatbox_"+t+" .chatboxtextarea").blur(function(){chatboxFocusSimple[t]=!1,$("#chatbox_"+t+" .chatboxtextarea").removeClass("chatboxtextareaselected")}).focus(function(){chatboxFocusSimple[t]=!0,$("#chatbox_"+t+" .chatboxhead").removeClass("chatboxblink"),$("#chatbox_"+t+" .chatboxtextarea").addClass("chatboxtextareaselected")}),$("#chatbox_"+t).click(function(){"none"!=$("#chatbox_"+t+" .chatboxcontent").css("display")&&$("#chatbox_"+t+" .chatboxtextarea").focus()}),$("#chatbox_"+t).show()},checkInputKey:function(t,o,e){13==t.keyCode&&0==t.shiftKey&&(t.preventDefault(),message=o.val(),message=message.replace(/^\s+|\s+$/g,""),""!=message&&($("#conversation_form_"+e).submit(),$(o).val(""),$(o).focus(),$(o).css("height","44px")));var c=o.clientHeight,a=94;a>c?(c=Math.max(o.scrollHeight,c),a&&(c=Math.min(a,c)),c>o.clientHeight&&$(o).css("height",c+8+"px")):$(o).css("overflow","auto")},toggleChatBoxGrowth:function(t){if("none"==$("#chatbox_"+t+" .chatboxcontent").css("display")){var o=new Array;$.cookie("chatbox_minimized")&&(o=$.cookie("chatbox_minimized").split(/\|/));var e="";for(i=0;i<o.length;i++)o[i]!=t&&(e+=t+"|");e=e.slice(0,-1),$.cookie("chatbox_minimized",e),$("#chatbox_"+t+" .chatboxcontent").css("display","block"),$("#chatbox_"+t+" .chatboxinput").css("display","block"),$("#chatbox_"+t+" .chatboxcontent").scrollTop($("#chatbox_"+t+" .chatboxcontent")[0].scrollHeight)}else{e=t;$.cookie("chatbox_minimized")&&(e+="|"+$.cookie("chatbox_minimized")),$.cookie("chatbox_minimized",e),$("#chatbox_"+t+" .chatboxcontent").css("display","none"),$("#chatbox_"+t+" .chatboxinput").css("display","none")}}}
/**
     * Cookie plugin
     *
     * Copyright (c) 2006 Klaus Hartl (stilbuero.de)
     * Dual licensed under the MIT and GPL licenses:
     * http://www.opensource.org/licenses/mit-license.php
     * http://www.gnu.org/licenses/gpl.html
     *
     */,jQuery.cookie=function(t,o,e){if(void 0===o){var c=null;if(document.cookie&&""!=document.cookie)for(var a=document.cookie.split(";"),i=0;i<a.length;i++){var n=jQuery.trim(a[i]);if(n.substring(0,t.length+1)==t+"="){c=decodeURIComponent(n.substring(t.length+1));break}}return c}e=e||{},null===o&&(o="",e.expires=-1);var h,s="";e.expires&&("number"==typeof e.expires||e.expires.toUTCString)&&("number"==typeof e.expires?(h=new Date).setTime(h.getTime()+24*e.expires*60*60*1e3):h=e.expires,s="; expires="+h.toUTCString());var x=e.path?"; path="+e.path:"",r=e.domain?"; domain="+e.domain:"",b=e.secure?"; secure":"";document.cookie=[t,"=",encodeURIComponent(o),s,x,r,b].join("")}};$(document).ready(readySimple),$(document).on("page:load",readySimple);var chatboxFocus=new Array,chatBoxes=new Array,ready=function(){chatBox={chatWith:function(t){chatBox.createChatBox(t),$("#chatbox_"+t+" .chatboxtextarea").focus()},close:function(t){$("#chatbox_"+t).css("display","none"),chatBox.restructure()},notify:function(){$("#chatAudio")[0].play()},restructure:function(){for(x in align=0,chatBoxes)chatbox_id=chatBoxes[x],"none"!=$("#chatbox_"+chatbox_id).css("display")&&(0==align?$("#chatbox_"+chatbox_id).css("right","20px"):(width=287*align+20,$("#chatbox_"+chatbox_id).css("right",width+"px")),align++)},createChatBox:function(t,o,e){if($("#chatbox_"+t).length>0)return"none"==$("#chatbox_"+t).css("display")&&($("#chatbox_"+t).css("display","block"),chatBox.restructure()),void $("#chatbox_"+t+" .chatboxtextarea").focus();for(x in $("body").append('<div id="chatbox_'+t+'" class="chatbox"></div>'),$.get("books"+o+"/conversations/"+t,function(o){$("#chatbox_"+t).html(o),$("#chatbox_"+t+" .chatboxcontent").scrollTop($("#chatbox_"+t+" .chatboxcontent")[0].scrollHeight)},"html"),$("#chatbox_"+t).css("bottom","0px"),chatBoxeslength=0,chatBoxes)"none"!=$("#chatbox_"+chatBoxes[x]).css("display")&&chatBoxeslength++;if(0==chatBoxeslength?$("#chatbox_"+t).css("right","20px"):(width=287*chatBoxeslength+20,$("#chatbox_"+t).css("right",width+"px")),chatBoxes.push(t),1==e){for(minimizedChatBoxes=new Array,$.cookie("chatbox_minimized")&&(minimizedChatBoxes=$.cookie("chatbox_minimized").split(/\|/)),minimize=0,j=0;j<minimizedChatBoxes.length;j++)minimizedChatBoxes[j]==t&&(minimize=1);1==minimize&&($("#chatbox_"+t+" .chatboxcontent").css("display","none"),$("#chatbox_"+t+" .chatboxinput").css("display","none"))}chatboxFocus[t]=!1,$("#chatbox_"+t+" .chatboxtextarea").blur(function(){chatboxFocus[t]=!1,$("#chatbox_"+t+" .chatboxtextarea").removeClass("chatboxtextareaselected")}).focus(function(){chatboxFocus[t]=!0,$("#chatbox_"+t+" .chatboxhead").removeClass("chatboxblink"),$("#chatbox_"+t+" .chatboxtextarea").addClass("chatboxtextareaselected")}),$("#chatbox_"+t).click(function(){"none"!=$("#chatbox_"+t+" .chatboxcontent").css("display")&&$("#chatbox_"+t+" .chatboxtextarea").focus()}),$("#chatbox_"+t).show()},checkInputKey:function(t,o,e){13==t.keyCode&&0==t.shiftKey&&(t.preventDefault(),message=o.val(),message=message.replace(/^\s+|\s+$/g,""),""!=message&&($("#conversation_form_"+e).submit(),$(o).val(""),$(o).focus(),$(o).css("height","44px")));var c=o.clientHeight,a=94;a>c?(c=Math.max(o.scrollHeight,c),a&&(c=Math.min(a,c)),c>o.clientHeight&&$(o).css("height",c+8+"px")):$(o).css("overflow","auto")},toggleChatBoxGrowth:function(t){if("none"==$("#chatbox_"+t+" .chatboxcontent").css("display")){var o=new Array;$.cookie("chatbox_minimized")&&(o=$.cookie("chatbox_minimized").split(/\|/));var e="";for(i=0;i<o.length;i++)o[i]!=t&&(e+=t+"|");e=e.slice(0,-1),$.cookie("chatbox_minimized",e),$("#chatbox_"+t+" .chatboxcontent").css("display","block"),$("#chatbox_"+t+" .chatboxinput").css("display","block"),$("#chatbox_"+t+" .chatboxcontent").scrollTop($("#chatbox_"+t+" .chatboxcontent")[0].scrollHeight)}else{e=t;$.cookie("chatbox_minimized")&&(e+="|"+$.cookie("chatbox_minimized")),$.cookie("chatbox_minimized",e),$("#chatbox_"+t+" .chatboxcontent").css("display","none"),$("#chatbox_"+t+" .chatboxinput").css("display","none")}}}
/**
     * Cookie plugin
     *
     * Copyright (c) 2006 Klaus Hartl (stilbuero.de)
     * Dual licensed under the MIT and GPL licenses:
     * http://www.opensource.org/licenses/mit-license.php
     * http://www.gnu.org/licenses/gpl.html
     *
     */,jQuery.cookie=function(t,o,e){if(void 0===o){var c=null;if(document.cookie&&""!=document.cookie)for(var a=document.cookie.split(";"),i=0;i<a.length;i++){var n=jQuery.trim(a[i]);if(n.substring(0,t.length+1)==t+"="){c=decodeURIComponent(n.substring(t.length+1));break}}return c}e=e||{},null===o&&(o="",e.expires=-1);var h,s="";e.expires&&("number"==typeof e.expires||e.expires.toUTCString)&&("number"==typeof e.expires?(h=new Date).setTime(h.getTime()+24*e.expires*60*60*1e3):h=e.expires,s="; expires="+h.toUTCString());var x=e.path?"; path="+e.path:"",r=e.domain?"; domain="+e.domain:"",b=e.secure?"; secure":"";document.cookie=[t,"=",encodeURIComponent(o),s,x,r,b].join("")}};$(document).ready(ready),$(document).on("page:load",ready);