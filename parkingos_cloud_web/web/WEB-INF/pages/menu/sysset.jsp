<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<title>ͳ�Ʒ���</title>
	
<link href="css/tq.css" rel="stylesheet" type="text/css">
<link href="css/iconbuttons.css" rel="stylesheet" type="text/css">
	
	<script type="text/javascript" src="js/tq.js"></script>
	<script type="text/javascript" src="js/tq.hash.js"></script>
	<script type="text/javascript" src="js/tq.newtree.js"></script>
	<script type="text/javascript" src="js/tq.window.js"></script>
	<script language="javascript" src="js/tq.scrollbar.js"></script>
	<script src="js/tq.form.js?0817" type="text/javascript">//����</script>
	<script src="js/tq.public.js?0817" type="text/javascript">//����</script>
	
	
	
	<STYLE type="text/css">
    	html,body{overflow:hidden;margin:0px;padding:0px;width:100%;}
    	#sysmenu_bar {position:absolute;top:2px;width:10px;left:205px;border-left:0px solid #B5B5B5;z-index:999998;}
    	#sysmenu_bar .Scrollbar-Track{position:absolute;left:0;top:0px;width:10px;cursor:pointer;_cursor:hand}
    	#sysmenu_bar .Scrollbar-Track:hover{background:#f0f0f0}
    	#sysmenu_bar .Scrollbar-Handle{position:absolute;width:10px;height:50px;background:#999;border-radius:7px;-webkit-border-radius:7px;-moz-border-radius: 7px;cursor:pointer;_cursor:hand;}
    	#sysmenu_bar .Scrollbar-Handle:hover{background:#666}
    	div.hideleft{ background:#fff url(images/showhide.png) 0 0;border-radius:7px;-webkit-border-radius:7px;-moz-border-radius: 7px;}
    	div.showleft{ background:#fff url(images/showhide.png) -12px 0;border-radius:7px;-webkit-border-radius:7px;-moz-border-radius: 7px;}
	</STYLE>
	<style>
		body{font-size:11px; font-family:Verdana, Arial, Helvetica, sans-serif;}
		a{text-decoration:none;}
		.img{border:0px;}
		.black_overlay{
		text-align:center;
			display: none;
			position: absolute;
			top: 0%;
			left: 0%;
			width: 100%;
			height: 100%;
			background-color: black;
			z-index:1001;
			-moz-opacity: 0.8;
			opacity:.80;
			filter: alpha(opacity=80);
		}
		.white_content {
			display: none;
			position: absolute;
			top: 15%;
			left: 42%;
			height: 320px;
			border: 16px solid #FFF;
			border-bottom:none;
			background-color: white;
			z-index:1002;
			overflow: auto;
		}
	</style>
</head>

<body>
<div id = "constructor" style="margin:0px;padding:0px;overflow:hidden;width:100%;height:100%;position:relative;float:left">
	<div id="top" style="width: 100%; height: 100px; position: relative; float: left; border-bottom: 0px solid #ccc;"></div>
	<div id="left" style="overflow:hidden;overflow-x:auto; margin:0px;padding:0px; position: absolute; top:0;left:0;z-index:1;border-top: 1px solid #ccc; border-right: 1px solid #ccc;">
		<div id = "sysmenu"  style="overflow:hidden;  position:absolute ;">
		</div>
	</div>
	<DIV id="sysmenu_bar">
		<DIV id="sysmenu_track" class="Scrollbar-Track" title="����Ƶ��˴�">
			<DIV id="sysmenu_bar_icon" class="Scrollbar-Handle" title="��ס�����϶�">
				&nbsp;
			</DIV>
		</DIV>
	</DIV>
		
	<div id="right" style="position:absolute;padding:0px;margin:0px;top:0px;right:0px;overflow:hidden;border-top: 1px solid #ccc">
		<div id="righttop" style="width: 100%; margin:0px;padding:0px;height: 230px; position: relative; float: left"></div>
		<div id="rightbot" style="width: 100%; margin:0px;padding:0px;border-top: 0px solid #ccc; position: relative; float: left">
			<iframe id="framePage" name="framePage" style="width: 100%;" frameborder="0" scrolling="auto" style="margin:0px;padding:0px;"></iframe>
		</div>
	</div>
</div>
<div id = "scrollMask" style="position:absolute;left:0px;top:0px;background:#fff;filter:alpha(opacity=0);opacity:0;display:none"></div>
<div id = "hideShow" style="position:absolute;left:0px;top:0px;background:none;width:12px;"><div style="position:relative;width:12px;float:left;height:82px;cursor:pointer;display:none;color:#fff;font-weight:700" title="��ʾ/��������"></div></div>

<div id="light" class="white_content">
	<a href="javascript:void(0)" style="color:#f30;"
		onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><input type="button" value="�ر�"/></a>
	<div id="visitpic"></div>
	</div>
<div id="fade" class="black_overlay"></div>

<script type="text/javascript">
	var role=${role};
	//���
	var t_h = 0;
	var l_w = 215;
	var r_t_h = 0;//240;
	
	var Constructor = T("#constructor");
	var topO = T("#top");
	var leftO = T("#left");
	var menuContent = T("#sysmenu");	
	var menuTrack = T("#sysmenu_track");
	var rightO = T("#right");
	var rightTopO = T("#righttop");
	var rightBotO = T("#rightbot");
	var frameO = T("#framePage")
	
	topO.style.height = t_h  + "px";
	leftO.style.width = l_w  + "px";
	menuContent.style.width = l_w  + "px";
	leftO.style.paddingLeft = 0 + "px";
	
	leftO.style.paddingTop = 5 + "px";
	leftO.style.background = "#F9F9F9";
	leftO.style.height = T.gwh() - t_h - 6 + "px";
	menuTrack.style.height = T.gwh() - t_h - 6 + "px";
	rightO.style.width = T.gww() - l_w - 1  + "px";
	rightTopO.style.height = r_t_h  + "px";
	frameO.style.height = T.gwh() - t_h - r_t_h + "px";
	T("#scrollMask").style.height = T.gwh() + "px";
	T("#scrollMask").style.width = T.gww() + "px";
	
	var showO = T("#hideShow");
	showO.style.left = l_w + "px";
	showO.style.height = T.gwh() + "px";
	showO.onmouseover = function(e){
		this.firstChild.style.marginTop = mousePos(e).y - 50 + "px";
		this.firstChild.style.display = "block";
		if(leftO.style.width == "0px"){
			this.firstChild.className = "showleft";
			this.firstChild.title = "չ������";
		}else{
			this.firstChild.className = "hideleft";
			this.firstChild.title = "��������";
		}
	};
	showO.onmouseout = function(){
		this.firstChild.style.display = "none";
	};
	showO.firstChild.onclick = function(){
		if(leftO.style.width == "0px"){
			l_w = 215;
			leftO.style.width = l_w  + "px";
			T("#sysmenu_bar").style.zIndex = "999";
			rightO.style.width = T.gww() - l_w - 1  + "px";
			this.parentNode.style.left = l_w + "px";
		}else{
			l_w = 0;
			leftO.style.width = l_w  + "px";
			T("#sysmenu_bar").style.zIndex = "-999";
			rightO.style.width = T.gww() - l_w - 1  + "px";
			this.parentNode.style.left = "0px";
		}
	};
	
	T.bind(window,"resize",function(){
		topO.style.height = t_h  + "px";
		leftO.style.width = l_w  + "px";
		leftO.style.height = T.gwh() - t_h - 6 + "px";
		menuTrack.style.height = T.gwh() - t_h - 6 + "px";
		rightO.style.width = T.gww() - l_w - 1  + "px";
		rightTopO.style.height = r_t_h  + "px";
		frameO.style.height = T.gwh() - t_h - r_t_h + "px";
		T("#scrollMask").style.height = T.gwh() + "px";
		T("#scrollMask").style.width = T.gww() + "px";
		scroller.reset();
		scrollbar.reset();
	})
	
    function mousePos(e){
        var x,y;
        var e = e||window.event;
        return {
            x:e.clientX+document.body.scrollLeft+document.documentElement.scrollLeft,
            y:e.clientY+document.body.scrollTop+document.documentElement.scrollTop
        };
    };
/*     function changepass(){
	var id='${userid}';
	var fields=[{fieldcnname:"������",fieldname:"pass",inputtype:"password", twidth:"100"},
				{fieldcnname:"ȷ������",fieldname:"conpass",inputtype:"password", twidth:"100"}];
	Twin({Id:"editpass_"+id,Title:"�޸�����",Width:550,sysfunI:id,sysfun:function(id,tObj){
			Tform({
				formname: "market_recharge_f",
				formObj:tObj,
				recordid:"id",
				suburl:"editpass.do?table=admin&id="+id,
				method:"POST",
				formAttr:[{
					formitems:[{kindname:"",kinditemts:fields}]
				}],
				Callback:
				function(f,rcd,ret,o){
					if(ret=="1"){
						T.loadTip(1,"�����޸ĳɹ���",2,"");
						TwinC("editpass_"+id);
					}else if(ret=='0'){
						T.loadTip(1,"�����޸�ʧ�ܣ�",2,"");
						TwinC("editpass_"+id);
					}else{
						T.loadTip(1,ret,2,o)
					}
				}
			});	
		}
	})
} */
</script>

<script type="text/javascript">
	var _localData = {
			"root_sys":{"id":"sys","name":"ͳ������",icon:"home"}
			};
	_localData["sys_1"]=	{"id":1, "name":"��Ȧ����", fn:function(){GotoUrl('bizcircle.do')}};
	_localData["sys_2"]=	{"id":2, "name":"�Ƽ���ѯ", fn:function(){GotoUrl('recomview.do') }};	
	_localData["sys_3"]=	{"id":3, "name":"NFC�Ź���", fn:function(){GotoUrl('nfcmanage.do') }};
	_localData["sys_9"]=	{"id":9, "name":"Ibeacon����", fn:function(){GotoUrl('ibeacon.do') }};
	_localData["sys_10"]=	{"id":10, "name":"��ά�����", fn:function(){GotoUrl('qrmanage.do') }};
	_localData["sys_4"]=	{"id":4, "name":"�г�רԱ����", fn:function(){GotoUrl('marketer.do') }};
	_localData["sys_5"]=	{"id":5, "name":"�ֻ�����", fn:function(){GotoUrl('mobilemanage.do') }};
	_localData["sys_6"]=	{"id":6, "name":"����������", fn:function(){GotoUrl('blackuser.do') }};
	_localData["sys_7"]=	{"id":7, "name":"�鿴����", fn:function(){GotoUrl('parkpraise.do') }};
	_localData["sys_8"]=	{"id":8, "name":"��������", fn:function(){return false }};	
	_localData["8_801"]=	{"id":801, "name":"���������", fn:function(){GotoUrl('carstops.do') }};	
	_localData["8_802"]=	{"id":802, "name":"�����۸����", fn:function(){GotoUrl('carstopsprice.do') }};	
	_localData["8_803"]=	{"id":803, "name":"����Ա����", fn:function(){GotoUrl('parkattendant.do') }};
	_localData["8_804"]=	{"id":804, "name":"��������", fn:function(){GotoUrl('ctorders.do') }};
	sysMenuTree = new tqTree({
		treeId:"sysMenuTree",
		treeH:"auto",
		dataType:0,
		localData:_localData,
		treeObj:T("#sysmenu"),
		focusExec:true,
		nodeFnArgs:"id",
		nodeClick:function(){
			var args = arguments;
			switch(args[0]){
				case 920 :
				break;
			}
		},
		expandFun:function(){
			try{
				scroller.reset();
				scrollbar.reset();
			}catch(e){}
		},
		loadfun:function(v){
			var initID = sysMenuTree.nodes["0"].childNodes["0"].id;
			sysMenuTree.focusNode(initID);//��λ���ڵ�
			sysMenuTree.expandLevel(3);
		}
	});
	sysMenuTree.C();
</script>
</body>
<script>
var tqpagetip = function(c){
	T.maskTip(1,c);
}

var tip = {
	close: function(){T.maskTip(0)}
};

function GotoUrl(url,opentip){
	if(opentip=='1'){
		try{tqpagetip('���ڴ�ҳ��,���Ժ�...');}catch(e){};
	}
	document.getElementById("framePage").setAttribute('src',url);
}
</script>
<script>	
//ϵͳ�˵�����
var scroller  = null;
var scrollbar = null;
var scrollTween = null;
window.onload = function () {
  scroller  = new Scroller(document.getElementById("sysmenu"), 20 ,leftO);
  scrollbar = new Scrollbar(document.getElementById("sysmenu_bar"), scroller, true);
  scrollTween = new ScrollerTween(scrollbar, true);
}

</script>	
</html>