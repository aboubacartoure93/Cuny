!function(t,e,i,s){"use strict";function o(e,i,s){if(this.element=t(e),this._defaults=n,this._name=r,"string"==typeof i)i=i.replace(/\.\w*$/,"");else if("object"==typeof i)for(var o in i)i[o]=i[o].replace(/\.\w*$/,"");this.settings=t.extend({},n,s),this.path=i,this.init()}var r="vide",n={volume:1,playbackRate:1,muted:!0,loop:!0,autoplay:!0,position:"50% 50%",posterType:"detect"},a=/iPad|iPhone|iPod/i.test(s.userAgent),p=/Android/i.test(s.userAgent);t[r]={lookup:[]};var h=function(t){var e,i,s,o,r={};for(i=0,s=(e=t.replace(/\s*:\s*/g,":").replace(/\s*,\s*/g,",").split(",")).length;i<s;i++)e[i]=e[i].split(":"),(o=e[i][1])||(o=undefined),("string"==typeof o||o instanceof String)&&(o="true"===o||"false"!==o&&o),("string"==typeof o||o instanceof String)&&(o=isNaN(o)?o:+o),r[e[i][0]]=o;return r},d=function(t){for(var e,i=(t=""+t).split(/\s+/),s="50%",o="50%",r=0,n=i.length;r<n;r++)"left"===(e=i[r])?s="0%":"right"===e?s="100%":"top"===e?o="0%":"bottom"===e?o="100%":"center"===e?0===r?s="50%":o="50%":0===r?s=e:o=e;return{x:s,y:o}},c=function(e,i){var s=function(){i(this.src)};t("<img src='"+e+".gif'>").load(s),t("<img src='"+e+".jpg'>").load(s),t("<img src='"+e+".jpeg'>").load(s),t("<img src='"+e+".png'>").load(s)};o.prototype.init=function(){var e=this;this.wrapper=t("<div>");var i=d(this.settings.position);this.wrapper.css({position:"absolute","z-index":-1,top:0,left:0,bottom:0,right:0,overflow:"hidden","-webkit-background-size":"cover","-moz-background-size":"cover","-o-background-size":"cover","background-size":"cover","background-repeat":"no-repeat","background-position":i.x+" "+i.y});var s=this.path;if("object"==typeof this.path&&(this.path.poster?s=this.path.poster:this.path.mp4?s=this.path.mp4:this.path.webm?s=this.path.webm:this.path.ogv&&(s=this.path.webm)),"detect"===this.settings.posterType?c(s,t.proxy(this.setPoster,this)):this.setPoster(s+"."+this.settings.posterType),"static"===this.element.css("position")&&this.element.css("position","relative"),this.element.prepend(this.wrapper),!a&&!p){if("object"==typeof this.path){var o="";this.path.mp4&&(o+="<source src='"+this.path.mp4+".mp4' type='video/mp4'>"),this.path.webm&&(o+="<source src='"+this.path.webm+".webm' type='video/webm'>"),this.path.ogv&&(o+="<source src='"+this.path.ogv+".ogv' type='video/ogv'>"),this.video=t("<video>"+o+"</video>")}else this.video=t("<video><source src='"+this.path+".mp4' type='video/mp4'><source src='"+this.path+".webm' type='video/webm'><source src='"+this.path+".ogv' type='video/ogg'></video>");this.video.css("visibility","hidden"),this.video.prop({autoplay:this.settings.autoplay,loop:this.settings.loop,volume:this.settings.volume,muted:this.settings.muted,playbackRate:this.settings.playbackRate}),this.wrapper.append(this.video),this.video.css({margin:"auto",position:"absolute","z-index":-1,top:i.y,left:i.x,"-webkit-transform":"translate(-"+i.x+", -"+i.y+")","-ms-transform":"translate(-"+i.x+", -"+i.y+")",transform:"translate(-"+i.x+", -"+i.y+")"}),this.video.bind("loadedmetadata."+r,function(){e.video.css("visibility","visible"),e.resize()}),t(this.element).bind("resize."+r,function(){e.resize()})}},o.prototype.setPoster=function(t){this.wrapper.css("background-image","url("+t+")")},o.prototype.getVideoObject=function(){return this.video?this.video[0]:null},o.prototype.resize=function(){if(this.video){var t=this.video[0].videoHeight,e=this.video[0].videoWidth,i=this.wrapper.height(),s=this.wrapper.width();s/e>i/t?this.video.css({width:s+2,height:"auto"}):this.video.css({width:"auto",height:i+2})}},o.prototype.destroy=function(){this.element.unbind(r),this.video&&this.video.unbind(r),delete t[r].lookup[this.index],this.element.removeData(r),this.wrapper.remove()},t.fn[r]=function(e,i){var s;return this.each(function(){(s=t.data(this,r))&&s.destroy(),(s=new o(this,e,i)).index=t[r].lookup.push(s)-1,t.data(this,r,s)}),this},t(i).ready(function(){t(e).bind("resize."+r,function(){for(var e,i=t[r].lookup.length,s=0;s<i;s++)(e=t[r].lookup[s])&&e.resize()}),t(i).find("[data-"+r+"-bg]").each(function(e,i){var s=t(i),o=s.data(r+"-options"),n=s.data(r+"-bg");o=o?h(o):{},s[r](n,o)})})}(window.jQuery,window,document,navigator);