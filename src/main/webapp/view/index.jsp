<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/resource/public/tag.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, maximum-scale=1">
    <title>Home</title>
    <%--<link rel="stylesheet" href="${baseurl}/resource/public/bootstrap-3.3.7-dist/css/bootstrap.css">--%>
    <script type="text/javascript" src="${baseurl}/resource/public/indexStyle/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="${baseurl}/resource/public/indexStyle/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${baseurl}/resource/public/indexStyle/js/jquery-scrolltofixed.js"></script>
    <script type="text/javascript" src="${baseurl}/resource/public/indexStyle/js/jquery.nav.js"></script>
    <script type="text/javascript" src="${baseurl}/resource/public/indexStyle/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${baseurl}/resource/public/indexStyle/js/jquery.isotope.js"></script>
    <script src="${baseurl}/resource/public/indexStyle/js/fancybox/jquery.fancybox.pack.js"
            type="text/javascript"></script>
    <script type="text/javascript" src="${baseurl}/resource/public/indexStyle/js/wow.js"></script>
    <script type="text/javascript" src="${baseurl}/resource/public/indexStyle/js/custom.js"></script>
    <link rel="icon" href="favicon.png" type="image/png">
    <link href="${baseurl}/resource/public/indexStyle/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${baseurl}/resource/public/indexStyle/js/fancybox/jquery.fancybox.css" type="text/css"
          media="screen"/>
    <link href="${baseurl}/resource/public/indexStyle/css/style.css" rel="stylesheet" type="text/css">
    <link href="${baseurl}/resource/public/indexStyle/css/font-awesome.css" rel="stylesheet" type="text/css">
    <link href="${baseurl}/resource/public/indexStyle/css/animate.css" rel="stylesheet" type="text/css">

    <!--[if lt IE 9]>
    <script src="/resource/public/indexStyle/js/respond-1.1.0.min.js"></script>
    <script src="/resource/public/indexStyle/js/html5shiv.js"></script>
    <script src="/resource/public/indexStyle/js/html5element.js"></script>
    <![endif]-->

    <%--bootstrap文件上传--%>
    <%--fileinput 样式,核心文件之一--%>
    <link type="text/css" href="${baseurl}/resource/public/bootstrap-3.3.7-dist/fileinput/css/fileinput.css">
    <%--<link type="text/css" href="${baseurl}/resource/public/bootstrap-3.3.7-dist/css/bootstrap.min.css">--%>
    <%--fileinput.js 核心文件之一--%>
    <script type="text/javascript"
            src="${baseurl}/resource/public/bootstrap-3.3.7-dist/fileinput/js/fileinput.js"></script>
    <%--<script type="text/javascript" src="${baseurl}/resource/public/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>--%>
    <%--语言包，可选，但是中文情况下请引入--%>
    <script src="${baseurl}/resource/public/bootstrap-3.3.7-dist/fileinput/js/locales/zh.js"
            type="text/javascript"></script>

    <%--图标库--%>
    <link rel="stylesheet" href="${baseurl}/resource/public/font-awesome-4.7.0/css/font-awesome.min.css">

    <%--引入相关jsp文件--%>
    <%@include file="post/post.jsp" %>
    <%@include file="improveTheInformation/improveTheInformation.jsp" %>
    <%@include file="leaveMessage/leaveMessage.jsp" %>
    <%@include file="personalCenter/personalCenter.jsp" %>
    <%@include file="addFriend/showAddFriendPage.jsp" %>
    <%--引入layui--%>
    <%--<link rel="stylesheet" href="${baseurl}/resource/public/layui/css/layui.css" type="text/css">--%>
    <%--<script src="${baseurl}/resource/public/layui/layui.js" type="text/javascript"></script>--%>

    <%--bootstrap复选框美化插件--%>
    <link href="${baseurl}/resource/public/bootstrap-3.3.7-dist/css/awesome-bootstrap-checkbox.css" rel="stylesheet"
          type="text/css">

    <%--引入分页插件--%>
    <link rel="stylesheet" href="${baseurl}/resource/public/pagePlugin/css/cypager.min.css">
    <script type="text/javascript" src="${baseurl}/resource/public/pagePlugin/js/cypager.min.js"></script>

</head>
<body>
<!--Hero_Section-->
<section id="hero_section" class="top_cont_outer">
    <div class="hero_wrapper">
        <div class="container">
            <div class="hero_section">
                <div class="row">
                    <div class="col-md-12">

                        <div class="top_left_cont zoomIn wow animated">
                            <h2>We’re getting married<br> <strong>Romeo & Juliet</strong></h2>
                            <h3>on August 22th 2016, Los Angeles, CA</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Hero_Section-->

<!--Header_section-->
<header id="header_wrapper">
    <div class="container">
        <div class="header_box">
            <div class="logo"><a href="#"><img src="${baseurl}/resource/public/indexStyle/img/logo.png" alt="logo"></a>
            </div>
            <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse"
                            data-target="#main-nav"><span class="sr-only">Toggle navigation</span> <span
                            class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                    </button>
                </div>
                <div id="main-nav" class="collapse navbar-collapse navStyle">
                    <ul class="nav navbar-nav" id="mainNav">
                        <li class="active"><a href="#hero_section" class="scroll-link">首页</a></li>
                        <li><a href="#service" class="scroll-link">寻找你的另一半</a></li>
                        <li><a href="#aboutUs" class="scroll-link">单身求带走</a></li>
                        <%--<li><a href="#Portfolio" class="scroll-link">成功案例</a></li>--%>
                        <li><a href="#team" class="scroll-link">好友列表</a></li>
                        <li><a href="#contact" class="scroll-link">个人中心</a></li>
                        <li id="operateTheCurrentUser">

                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</header>
<!--Header_section-->

<!--Service-->
<section id="service">
    <div class="container">
        <h2>寻找你的另一半</h2>
        <h6>如果你还没有找到你的另一半，或是你想早点找到你的另一半，那么你应该尝试完成以下步骤。</h6>
        <div class="service_wrapper">
            <div class="row">
                <div class="col-md-3">
                    <div class="service_icon delay-03s animated wow  zoomIn"><span><i
                            class="fa fa-bitbucket"></i></span></div>
                    <div class="service_block">

                        <h3 class="animated fadeInUp wow">
                            <button type="button" class="btn btn-lg btn-default" data-toggle="modal" id="buttonOfPost"
                                    data-target="#post_a_post" data-whatever="@mdo" title="展示与众不同的你">发布帖子
                            </button>
                        </h3>
                        <p class="animated fadeInDown wow">展示你的个性，秀出你的生活。让更多的异性关注你。 </p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="service_icon icon2  delay-03s animated wow zoomIn"><span><i
                            class="fa fa-bank"></i></span></div>
                    <div class="service_block">
                        <h3 class="animated fadeInUp wow">
                            <button type="button" class="btn btn-lg btn-default" data-toggle="modal"
                                    id="openImproveTheInformation"
                                    data-target="#improveTheInformation" data-whatever="@mdo" title="完善信息，开启精彩之旅！">
                                修改或完善信息
                            </button>
                        </h3>
                        <p class="animated fadeInDown wow">添加你的性格特点，上传你的个性图片。寻找更适合你的异性。 </p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="service_icon icon3  delay-03s animated wow zoomIn"><span><i
                            class="fa fa-apple"></i></span></div>
                    <div class="service_block">
                        <h3 class="animated fadeInUp wow">
                            <button type="button" class="btn btn-lg btn-default" data-toggle="modal"
                                    data-target="#leaveMessage" data-whatever="@mdo" title="尽最大的努力，来解决你的问题！">给我们留言
                            </button>
                        </h3>
                        <p class="animated fadeInDown wow">如果你遇到了生活上的问题，可以给我们留言，我们会尽最大的努力帮助你。 </p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="service_icon icon3  delay-03s animated wow zoomIn"><span><i
                            class="fa fa-heart"></i></span></div>
                    <div class="service_block">

                        <h3 class="animated fadeInUp wow">
                            <button type="button" class="btn btn-lg btn-default" data-toggle="modal"
                                    data-target="#searchYourOtherHalf" data-whatever="@mdo" title="尽最大的努力，来解决你的问题！">
                                搜索你的另一半
                            </button>
                        </h3>
                        <p class="animated fadeInDown wow">点击此处搜索你心目中的另一半。</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Service-->

<section id="aboutUs"><!--Aboutus-->
    <div class="inner_wrapper about-us aboutUs-container fadeInLeft animated wow">
        <div class="container">
            <h2 id="showPosts">单身求带走</h2>
            <h6>在这里来偶遇你的另一半</h6>
            <div class="inner_section" id="showPostForIndex">
                <div class="row">
                    <div class="col-md-6"><img class="img-responsive"
                                               src="${baseurl}/resource/public/indexStyle/img/about2.png"
                                               align=""></div>
                    <div class="col-md-6">
                        <h3>Bride’s story</h3>
                        <p>Lorem ipsum dolor sit amet, quo meis voluptaria, erant bonorum albucius et per, ei placerat
                            eu, te eos porro veniam. An everti maiorum detracto mea. Eu eos dicam voluptaria, erant
                            bonorum albucius et per, ei sapientem accommodare est. Saepe dolorum constituam ei vel. Te
                            sit malorum ceteros repudiandae, ne tritani adipisci vis.</p>
                        <h4>Hobbies </h4>
                        <ul class="about-us-list">
                            <li class="points">Consectetur Morbi sagittis, sem quisci ipsum gravida tortor</li>
                            <li class="points">Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida</li>
                            <li class="points">Lorem ipsum dolor sit amet, consectetur Morbi sagittis, sem quisci
                                gravida
                            </li>
                            <li class="points">Sagittis, sem quis lacinia faucibus, orci ipsum gravida</li>
                            <li class="points">Ipsum dolor sit amet, consectetur Morbi sagittis, sem quisci</li>
                        </ul><!-- /.about-us-list -->
                    </div>
                </div>
                <div class="row mrgTop30">

                    <div class="col-md-6">
                        <h3>Groom’s story</h3>
                        <p>Lorem ipsum dolor sit amet, quo meis voluptaria, erant bonorum albucius et per, ei placerat
                            eu, te eos porro veniam. An everti maiorum detracto mea. Eu eos dicam voluptaria, erant
                            bonorum albucius et per, ei sapientem accommodare est. Saepe dolorum constituam ei vel. Te
                            sit malorum ceteros repudiandae, ne tritani adipisci vis.</p>
                        <h4>Hobbies </h4>
                        <ul class="about-us-list">
                            <li class="points">Consectetur Morbi sagittis, sem quisci ipsum gravida tortor</li>
                            <li class="points">Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida</li>
                            <li class="points">Lorem ipsum dolor sit amet, consectetur Morbi sagittis, sem quisci
                                gravida
                            </li>
                            <li class="points">Sagittis, sem quis lacinia faucibus, orci ipsum gravida</li>
                            <li class="points">Ipsum dolor sit amet, consectetur Morbi sagittis, sem quisci</li>
                        </ul><!-- /.about-us-list -->
                    </div>
                    <div class="col-md-6"><img class="img-responsive"
                                               src="${baseurl}/resource/public/indexStyle/img/about1.png" align="">
                    </div>
                </div>
            </div>
            <div id="pagerArea" unselectable="on" onselectstart="return false;" style="-moz-user-select:none;"></div>

            <div id="console" style='padding-left:10px'></div>
        </div>
    </div>
</section>

<section class="page_section team" id="team"><!--main-section team-start-->
    <div class="container">
        <h2>我的好友</h2>
        <h6>Lorem ipsum dolor sit amet, consectetur adipiscing.</h6>

        <div id="team" name="team">
            <div class="container">
                <div class="row centered" id="showMyFriend">

                    <div class="col-md-3 centered"><img class="img img-circle"
                                                        src="${baseurl}/resource/public/indexStyle/img/team01.jpg"
                                                        height="120px" width="120px" alt="">
                        <h4><strong>Rosy Illue</strong></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur Morbi sagittis, sem quisci ipsum gravida tortor.</p>
                        <br/></div>
                    <div class="col-md-3 centered"><img class="img img-circle"
                                                        src="${baseurl}/resource/public/indexStyle/img/team02.jpg"
                                                        height="120px" width="120px" alt="">
                        <h4><b>Chrislke</b></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur Morbi sagittis, sem quisci ipsum gravida tortor.</p>
                        <br/></div>
                    <div class="col-md-3 centered"><img class="img img-circle"
                                                        src="${baseurl}/resource/public/indexStyle/img/team03.jpg"
                                                        height="120px" width="120px" alt="">
                        <h4><b>Mike Reiln</b></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur Morbi sagittis, sem quisci ipsum gravida tortor.</p>
                        <br/></div>
                    <div class="col-md-3 centered"><img class="img img-circle"
                                                        src="${baseurl}/resource/public/indexStyle/img/team04.jpg"
                                                        height="120px" width="120px" alt="">
                        <h4><b>Dennisel</b></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur Morbi sagittis, sem quisci ipsum gravida tortor.</p>
                        <br/>
                    </div>
html
                </div>
            </div>
            <!-- row -->
        </div>
    </div>
</section>
<!--/Team-->
<!--Footer-->
<footer class="footer_wrapper" id="contact">
    <div class="container">
        <section class="page_section contact" id="contact">
            <div class="contact_section">
                <h2>个人中心</h2>
                <h6>关于我的详细的信息</h6>

            </div>
            <div class="row">
                <div class="col-lg-4 wow fadeInLeft">
                    <div class="contact_info">
                        <div class="detail">
                            <h4>我的照片</h4>
                            <p><img id="showMyImgInFooter" src=""></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 wow fadeInLeft delay-06s">
                    <div class="form">
                        <input id="footerUserName" class="input-text" type="text" name="" value="Your Name *"
                               onFocus="if(this.value==this.defaultValue)this.value='';"
                               onBlur="if(this.value=='')this.value=this.defaultValue;" readonly>
                        <input id="footerPhone" class="input-text" type="text" name="" value="Your Phone *"
                               onFocus="if(this.value==this.defaultValue)this.value='';"
                               onBlur="if(this.value=='')this.value=this.defaultValue;" readonly>
                        <input id="footerLiving" class="input-text" type="text" name="" value="Your Living *"
                               onFocus="if(this.value==this.defaultValue)this.value='';"
                               onBlur="if(this.value=='')this.value=this.defaultValue;" readonly>
                        <input id="footerJob" class="input-text" type="text" name="" value="Your Living *"
                               onFocus="if(this.value==this.defaultValue)this.value='';"
                               onBlur="if(this.value=='')this.value=this.defaultValue;" readonly>
                        <input id="footerBirthday" class="input-text" type="text" name="" value="Your BirthDay *"
                               onFocus="if(this.value==this.defaultValue)this.value='';"
                               onBlur="if(this.value=='')this.value=this.defaultValue;" readonly>
                        <textarea id="footerContent" class="input-text text-area" cols="0" rows="0"
                                  onFocus="if(this.value==this.defaultValue)this.value='';"
                                  onBlur="if(this.value=='')this.value=this.defaultValue;"
                                  readonly>Your Message *</textarea>
                    </div>
                </div>
            </div>
        </section>
    </div>
</footer>

</body>

//获取当前用户
<script>
    let userInfoForOperateTheCurrentUser;
    $(function () {

        $.ajax({
            url: "${baseurl}/information/loadInformation",
            type: "post",
            success: function (data) {
                if (data.result) {
                    console.log(data.data[0]);
                    userInfoForOperateTheCurrentUser = data.data[0];
                    $("#operateTheCurrentUser").html("").append(`
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="showCurrentUser">
         <img style="border-radius:95px;width: 50px;" src="` + IMAGE_PREFIX + userInfoForOperateTheCurrentUser.userImg + `">
                                当前用户：` + userInfoForOperateTheCurrentUser.user_name + `
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#contact">个人中心</a></li>
                                <li><a onclick="logOut()">退出登陆</a></li>
                            </ul>
        `)
                }
            }
        })
    })

    function logOut() {
        location.href = baseUrl + "/user/logOut";
    }
</script>

</html>