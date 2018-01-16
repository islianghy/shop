
function check1(){                                                              			//登录名判空
	var user=document.getElementById("user").value;
	if(user==null||user==''){
		var d1=document.getElementById("di1");												//向div写警告，并返回值
		d1.innerHTML="<font color='red'>用户名不能为空!</font>";
		return false;
		}
	else{
		var d1=document.getElementById("di1");												//清空div，并返回值
		d1.innerHTML="";
		return true;
	}
}
function checkpass(){
	var pwd=document.getElementById("password").value;
	if(pwd==null||pwd==''){
		var d2=document.getElementById("pass");												//向div写警告，并返回值
		d2.innerHTML="<font color='red'>密码不能为空!</font>";
		return false;
		}
	else{
		var d2=document.getElementById("pass");												//清空div，并返回值
		d2.innerHTML="";
		return true;
	}
}

function check3(){																			//比较密码是否一样
	var pwd=document.getElementById("password").value;
	var pwd1=document.getElementById("password2").value;
	if(pwd1==null||pwd1==""){
		var d2=document.getElementById("di2");
		d2.innerHTML="<font color='red'>确认密码不能为空!</font>";
		return false;
	}else if(pwd!=pwd1){																		//向div写入内容，并返回值
		var d2=document.getElementById("di2");
		d2.innerHTML="<font color='red'>密码输入不一致!</font>";
		return false;
	}
	else{
		var d2=document.getElementById("di2");												//清空div，并返回值
		d2.innerHTML="";
		return true;
	}
}
function check4(){																			//判空姓名文本框
	var name=document.getElementById("name").value;
	if(name==null||name==''){
		var d3=document.getElementById("di3");												//向div写入内容，并返回值
		d3.innerHTML="<font color='red'>姓名不能为空!</font>";
		return false;
		}
	else{
		var d3=document.getElementById("di3");												//清空div，并返回值
		d3.innerHTML="";
		return true;
	}
}

function checkID_ICCID() { 																	//检查身份证号是否合法
	var ID_ICCID=document.getElementById("card").value;
	var Errors=new Array( "","<font color='red'>身份证号码位数不对!</font>", "<font color='red'>出生日期错误或含非法字符!</font>", "<font color='red'>身份证号码校验错误!<font>","<font color='red'>身份证地区非法!</font>");
	
	var area={11:"北京",12:"天津",13:"河北",14:"山西",15:"内蒙古",21:"辽宁",22:"吉林",23:"黑龙江",31:"上海",32:"江苏",33:"浙江",34:"安徽",35:"福建",36:"江西",37:"山东",41:"河南",42:"湖北",43:"湖南",44:"广东",45:"广西",46:"海南",50:"重庆",51:"四川",52:"贵州",53:"云南",54:"西藏",61:"陕西",62:"甘肃",63:"青海",64:"宁夏",65:"新疆",71:"台湾",81:"香港",82:"澳门",91:"国外"}  
	var ID_ICCID,Y,JYM; 
	var S,M; 
	var ID_ICCID_array = new Array(); 
	ID_ICCID_array = ID_ICCID.split(""); 													//地区检验 
	if(area[parseInt(ID_ICCID.substr(0,2))]==null) { 
		var d3=document.getElementById("di4");
		d3.innerHTML=Errors[4];
		
		
		return false;
		} 																					//身份号码位数及格式检验 
	switch(ID_ICCID.length){ 
		case 15: 
			if ( (parseInt(ID_ICCID.substr(6,2))+1900) % 4 == 0 || ((parseInt(ID_ICCID.substr(6,2))+1900) % 100 == 0 && (parseInt(ID_ICCID.substr(6,2))+1900) % 4 == 0 )){ 
				ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$/;     																		//测试出生日期的合法性 
			} 
			else { 
				ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$/;//测试出生日期的合法性 
	} 
	if(ereg.test(ID_ICCID)){
	 
		d3=document.getElementById("di4");
		d3.innerHTML="";  
		 
		 return true; 
		 }
	else  
		var d3=document.getElementById("di4");
		d3.innerHTML=Errors[2];
		
		return false;
	break; 
	case 18: 
																						//18位身份号码检测 
																						//出生日期的合法性检查  
																						//闰年月日:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9])) 
																						//平年月日:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8])) 
		if ( parseInt(ID_ICCID.substr(6,4)) % 4 == 0 || (parseInt(ID_ICCID.substr(6,4)) % 100 == 0 && parseInt(ID_ICCID.substr(6,4))%4 == 0 )){ 
			ereg=/^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$/;																	//闰年出生日期的合法性正则表达式 
		}
		else { 
			ereg=/^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$/;																//平年出生日期的合法性正则表达式 
	} 
	if(ereg.test(ID_ICCID)){															//测试出生日期的合法性 
																						//计算校验位 
		S = (parseInt(ID_ICCID_array[0]) + parseInt(ID_ICCID_array[10])) * 7 
		+ (parseInt(ID_ICCID_array[1]) + parseInt(ID_ICCID_array[11])) * 9 
		+ (parseInt(ID_ICCID_array[2]) + parseInt(ID_ICCID_array[12])) * 10 
		+ (parseInt(ID_ICCID_array[3]) + parseInt(ID_ICCID_array[13])) * 5 
		+ (parseInt(ID_ICCID_array[4]) + parseInt(ID_ICCID_array[14])) * 8 
		+ (parseInt(ID_ICCID_array[5]) + parseInt(ID_ICCID_array[15])) * 4 
		+ (parseInt(ID_ICCID_array[6]) + parseInt(ID_ICCID_array[16])) * 2 
		+ parseInt(ID_ICCID_array[7]) * 1  
		+ parseInt(ID_ICCID_array[8]) * 6 
		+ parseInt(ID_ICCID_array[9]) * 3 ; 
		Y = S % 11; 
		M = "F"; 
		JYM = "10X98765432"; 
		M = JYM.substr(Y,1);															//判断校验位 
		if(M == ID_ICCID_array[17]) {
			 d3=document.getElementById("di4");
		d3.innerHTML="";  
			
			 return true;
			 }																			//检测ID的校验位 
		else
		 
			 var d3=document.getElementById("di4");
		d3.innerHTML=Errors[3];
			
			 return false;
		} 
		else
		 
				var d3=document.getElementById("di4");
		d3.innerHTML=Errors[2];
			 
			 return false;
			break; 
		default: 
		var d3=document.getElementById("di4");
		d3.innerHTML=Errors[1];
		
		return false;
		break; 
	} 
} 

function checkMobile(){                                							//检查手机号的合法性
    var sMobile = document.getElementById("phone").value; 
    if(sMobile==null||sMobile==""){
    	var d3=document.getElementById("di5");										//不合法时，向div写入内容，并返回值
		d3.innerHTML="<font color='red'>手机号不能为空!</font>"; 
        return false; 
    }else if(!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(sMobile))){ 
    	var d3=document.getElementById("di5");										//不合法时，向div写入内容，并返回值
		d3.innerHTML="<font color='red'>不是完整的11位手机号!</font>"; 
        return false; 
    }else{ 
		d3=document.getElementById("di5");
		d3.innerHTML="";  														//合法时，清空div，并返回值
		return true;
	}
} 
 
function check5()    {															//检查电子邮件地址是否合法
		var email_address=document.getElementById("mail").value;
        var regex =/^[a-zA-Z0-9]([a-z0-9]*[-_]?[a-z0-9]+)*@([a-z0-9]*[-_]?[a-z0-9]+)+[\.][a-z]{2,3}([\.][a-z]{2})?$/i;	//定义正则表达式
		if ( regex.test( email_address ) ){
			d3=document.getElementById("di7");
			d3.innerHTML=""; 													//合法时，清空div，并返回值	
            return true;
        }else{
        	var email_address=document.getElementById("mail").value;
			var d3=document.getElementById("di7");								//不合法时，向div写入内容，并返回值
			if(email_address==null||email_address==""){
				d3.innerHTML="<font color='red'>电子邮件地址不能为空!</font>";
				 return false;
			}else{
				d3.innerHTML="<font color='red'>电子邮件地址不正确!</font>";  
				return false;
	        }			
           
        }
    }

function check(){																//提交表单验证
	var now=new Date();															//以下是调用系统时间代码
			var month0=parseInt(now.getMonth())+1;								//
			var week0=now.getDay();												//
			var week1;
			switch(week0){
				case 0: week1="日";
				break;
				case 1: week1="一";
				break;
				case 2: week1="二";
				break;
				case 3: week1="三";
				break;
				case 4: week1="四";
				break;
				case 5: week1="五";
				break;
				case 6: week1="六";
				break;
				}
			var day=now.getDate();
			if(day<10){
				day="0"+day;
				}
			var hour=now.getHours();
			if(0<hour&&hour<5){
				hour="凌晨"+hour;
				}
			else if(4<hour&&hour<7){
				hour="清晨"+hour;
				}
			else if(6<hour&&hour<10){
				hour="早上"+hour;
				}
			else if(9<hour&&hour<12){
				hour="上午"+hour;
				}
			else if(11<hour&&hour<13){
				hour="中午"+hour;
				}
			else if(12<hour&&hour<19){
				hour="下午"+(parseInt(hour)-12);
				}
			else if(18<hour&&hour<23){
				hour="晚上"+(parseInt(hour)-12);
				}
			else if(22<hour&&hour<25){
				hour="深夜"+(parseInt(hour)-12);
				}
			var minute=now.getMinutes();
			if(minute<10){
				minute="0"+minute;
				}
			var sec=now.getSeconds();
			if(sec<10){																	//
				sec="0"+sec;															//
				}																		//以上是调用时间代码
			var newtime=now.getFullYear()+"年"+month0+"月"+day+"日   星期"+week1+"   "+hour+"时"+minute+"分"+sec+"秒";		//定义变量，赋值系统时间
		
	if(check1()==true&&checkpass()==true&&check3()==true&&check4()==true&&checkID_ICCID()==true&&checkMobile()==true&&check5()==true){													//判断之前录入的信息是否都通过了验证
		alert("保存成功！保存时间："+newtime);												//全部通过，返回true，提交表单
			return true;
		}else{
		alert("您还有信息没有填写，不能保存。");												//并没有全部通过，返回false，重新填写
		return false;
	}
}


