var xmlHttp = false;

function getxmlHttpRequest()
{
	try
	{
		xmlHttp = new XMLHttpRequest()
	}
	catch(e)
	{
		try
		{	
			xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch(e)
		{
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	return xmlHttp;
}

function stateChanged()
{
	if(xmlHttp.readyState===4 || xmlHttp.readState==="complete")
	{
		document.getElementById("divname").innerHTML = xmlHttp.responseText;
	}
}

function Button1_Click()
{
	xmlHttp = getxmlHttpRequest();
	if(xmlHttp === false)
	{
		alert("Ajax Not Supported for this Browser");
		return false;
	}
	var url = "UserHome.aspx";
	xmlHttp.onreadystatechange = stateChanged;
	xmlHttp.open("POST",url,true);
	xmlHttp.send(null)
}
