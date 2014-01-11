<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" >
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:t="http://myfaces.apache.org/tomahawk">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login - Leader Information</title>
    <link rel="stylesheet" href="ui/css/screen.css" type="text/css" media="all"/>
    <link rel="stylesheet" href="ui/css/print.css" type="text/css" media="print"/>
    <link charset="utf-8" title="no title" media="all" type="text/css" href="ui/css/project.css" rel="stylesheet"/>
    <link charset="utf-8" title="no title" media="all" type="text/css" href="ui/css/styles.css" rel="stylesheet"/>
    <script type="text/javascript" src="ui/scripts/jquery/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="ui/scripts/modal.js"></script>
    <link rel="stylesheet" href="ui/css/modal.css"/>

</head>

    <%
      String error = null;
      String txt = "An error occured while attempting to login, please try again or contact your system admin";
      if(request.getSession()!=null){
            error = (String)request.getSession().getAttribute("errorMessage");
        }
        error = error!=null?error:txt;
      request.getSession().invalidate();
    %>




    <script charset="utf-8" type="text/javascript" src="ui/scripts/project.js"></script>
    <style type="text/css">

        .floatContainer:after {
            content: ".";
            display: block;
            height: 0;
            clear: both;
            visibility: hidden;
        }

    </style>
    <!--[if IE]>
    <style type="text/css">
        .floatContainer {
            zoom: 1; /* triggers hasLayout */
        }

            /* Only IE can see inside the conditional comment
   and read this CSS rule. Don't ever use a normal HTML
   comment inside the CC or it will close prematurely. */
    </style><![endif]-->
    <style type="text/css" media="screen">
        #home-footer {
            margin: 10px auto;
            text-align: center;
            float: none;
        }

        input.text {
            width: 198px;
        }

        .form-v1 {
            margin-bottom: 15px;
        }

        #sign-in .container {
            background: none;
        }

        #login-box {
            padding: 30px 0px;
            clear: both;
            overflow: hidden;
            background: #fff;
            width: 590px;
            margin: 120px auto 0;
            border: 1px solid #D5CFAD;
        }
    </style>
</head>
<body id="sign-in" onload="document.getElementById('j_username').focus();">

<div id="login-box">

    <div class="span-6 prepend-1 colborder">
        <img src="ui/images/lis_logo-transparent.bk.png" alt="Leader Information" style="margin: 10px 0"/>

        <p id="tagline">Online resource for leader information</p>

        <p class="optional">This application is property of The Church of Jesus Christ of Latter-day Saints</p>
    </div>

    <div class="span-6 append-1 last">
        <c:if test="${not empty param.error}">
            <div class="alert error"><p><strong>The following error(s) must be corrected:</strong></p>
                <ul>
                    <li><%=error%></li>
                </ul>
            </div>
        </c:if>

        <form name="f" method="post" action="<c:url value='j_spring_security_check'/>" class="form-v1">

            <fieldset>

                <legend class="visual-hide">Login Information</legend>

                <dl id="j_id15-dl" class="required ">
                    <dt id="j_id15-dt">
                        <span title="required" class="required-indicator">*</span> <label for="j_username">LDS Account User Name</label>
                    </dt>
                    <dd id="j_id15-dd">
                        <input id="j_username" type="text" name="j_username" class="text lds-account"
                               value=''/>
                        <br/>
                    </dd>
                </dl>

                <dl id="j_id18-dl">
                    <dt id="j_id18-dt">
                        <label for="j_password">Password</label>
                    </dt>
                    <dd id="j_id18-dd">
                        <input id="j_password" type="password" name="j_password" autocomplete="off" value="" class="text"/>
                        <br/>
                    </dd>
                </dl>

                <dl>
                    <dd><input type="submit" name="submit" value="Sign In"/>
                    </dd>
                </dl>

            </fieldset>

        </form>

        <p class="bottom">
            <a href="https://apps.lds.org/sign-in/go/cant-sign-in.jsf">Having problems signing in?</a>
            <br/>
            <a href="https://apps.lds.org/sign-in/go/membershipInfo.jsf">Register for an LDS Account</a>
        </p>

    </div>
</div>

<div class="span-19 last" id="home-footer">
    <p>&copy; 2012 Intellectual Reserve, Inc.</p>
    <img class="optional" width="200" height="100" src="ui/images/img-lds_logo-black_text.png"/>
</div>


<!--modal frame-->
       <div id="browser-modal" class="modal-wrapper" style="display: none">
          <div class="modal">
               <div class="header">
               <h2 class="modal-title">Title</h2>
               <button id="closeBtn" class="closeBtn" value="X"></button>
               </div>
               <div class="content"></div>
           </div>
            <div class="overlay"></div>
	 </div>

	<!-- modal content-->
  <div id="browser-modal-content" style="display:none;">
    <p>Sorry, it looks like you’re using a browser that doesn’t support the advanced features of this application. If you’d like to continue using Internet Explorer please upgrade to Internet Explorer 8. </p>
    <p class="note">Or, you can use one of these browsers: </p>
    <table align="center" cellpadding="0" border="0" style="border: 0px;!important"> 
      <tbody style="border: 0px;!important">
      <tr style="border: 0px;!important">
        <td class="first" style="border-left: 0px;border-top: 0px;!important">
      <img class="firstImg" src="ui/css/modal/ie.png"/>
      <a class="button" href="http://www.microsoft.com/windows/internet-explorer/default.aspx">Internet Explorer 8</a>
      </td>
        <td style="border: 0px;!important">
      <img src="ui/css/modal/firefox.png"/>
      <a href="http://www.mozilla.com/en-US/firefox/personal.html">Firefox</a>
      </td>
        <td style="border: 0px;!important">
      <img src="ui/css/modal/chrome.png"/>
      <a href="http://www.google.com/chrome">Chrome</a>
      </td>
        <td style="border: 0px;!important">
      <img src="ui/css/modal/safari.png"/>
      <a href="http://www.apple.com/safari/download/">Safari</a>
    </td>
      </tr>
    </tbody>
    </table>
  </div>
</div>
<!--[if lte IE 7]>
<script>
  var modal = new Modal();
  modal.setTitle("Unsupported Browser");
  modal.setContent($('#browser-modal-content').html());
  modal.show();
</script>
<![endif]-->
</body>
</html>
