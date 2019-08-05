<!DOCTYPE html>
<html lang="zh-cn" ng-app="J3pz">
<head><title>剑网3配装器</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="description" content="剑网3配装器为剑网3玩家提供完善、准确的配装工具。">
    <meta name="author" content="胖叔叔">
    <meta name="keywords" content="剑网3,西山居,剑侠情缘,配装器,装备,重制版">
    <!--[if lt IE 9]>
    <script type="text/javascript" src="js/libs/utils/html5shiv.js"></script>
    <script type="text/javascript" src="js/libs/utils/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/pkg/pages/index.html_aio_2bd52d9.css"/>
</head>
<body class="menubar-hoverable header-fixed">
<header id="header">
    <div class="headerbar" ng-controller="HeaderCtrl">
        <div class="headerbar-left">
            <ul class="header-nav header-nav-options">
                <li class="header-nav-brand">
                    <div class="brand-holder"><a href="/"><span
                                    class="text-lg text-bold text-primary">剑网3 配装器</span></a></div>
                </li>
                <li ng-if="$root.isPz"><a class="btn btn-icon-toggle menubar-toggle" data-toggle="menubar"
                                          href="javascript:void(0);"><i class="fa fa-bars"></i></a></li>
                <li class="hidden-xs"><a href="#" class="btn btn-flat btn-default" ng-click="checkUpdate(true)">更新说明</a>
                </li>
                <li class="hidden-xs"><a href="#" class="btn btn-flat btn-default" ng-click="feedback()">反馈</a></li>
                <li class="dropdown hidden-xs"><a href="javascript:void(0);" class="btn btn-flat btn-default"
                                                  data-toggle="dropdown">快速选择职业 <b class="caret"></b></a>
                    <ul class="dropdown-menu animation-expand multi-column columns-3">
                        <div class="col-xs-4 dropdown-column">
                            <ul class="multi-column-dropdown list">
                                <li class="tile"><a class="tile-content ink-reaction" href="/dps/bingxin/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-qx"></span></div>
                                        <div class="tile-text">冰心诀</div>
                                    </a></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/dps/dujing/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-wd"></span></div>
                                        <div class="tile-text">毒经</div>
                                    </a></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/dps/zixia/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-cy"></span></div>
                                        <div class="tile-text">紫霞功</div>
                                    </a></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/dps/mowen/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-cg"></span></div>
                                        <div class="tile-text">莫问</div>
                                    </a></li>
                                <li class="divider-full-bleed"></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/dps/taixu/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-cy"></span></div>
                                        <div class="tile-text">太虚剑意</div>
                                    </a></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/dps/cangjian/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-cj"></span></div>
                                        <div class="tile-text">藏剑</div>
                                    </a></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/dps/fenshan/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-sd"></span></div>
                                        <div class="tile-text">分山劲</div>
                                    </a></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/dps/linghai/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-pl"></span></div>
                                        <div class="tile-text">凌海诀</div>
                                    </a></li>
                            </ul>
                        </div>
                        <div class="col-xs-4 dropdown-column">
                            <ul class="multi-column-dropdown list">
                                <li class="tile"><a class="tile-content ink-reaction" href="/dps/huajian/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-wh"></span></div>
                                        <div class="tile-text">花间游</div>
                                    </a></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/dps/yijin/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-sl"></span></div>
                                        <div class="tile-text">易筋经</div>
                                    </a></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/dps/fenying/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-mj"></span></div>
                                        <div class="tile-text">焚影圣诀</div>
                                    </a></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/dps/tianluo/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-tm"></span></div>
                                        <div class="tile-text">天罗诡道</div>
                                    </a></li>
                                <li class="divider-full-bleed"></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/dps/jingyu/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-tm"></span></div>
                                        <div class="tile-text">惊羽诀</div>
                                    </a></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/dps/aoxue/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-tc"></span></div>
                                        <div class="tile-text">傲血战意</div>
                                    </a></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/dps/xiaochen/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-gb"></span></div>
                                        <div class="tile-text">笑尘诀</div>
                                    </a></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/dps/beiao/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-bd"></span></div>
                                        <div class="tile-text">北傲诀</div>
                                    </a></li>
                            </ul>
                        </div>
                        <div class="col-xs-4 dropdown-column">
                            <ul class="multi-column-dropdown list">
                                <li class="tile"><a class="tile-content ink-reaction" href="/hps/lijing/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-wh"></span></div>
                                        <div class="tile-text">离经易道</div>
                                    </a></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/hps/yunchang/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-qx"></span></div>
                                        <div class="tile-text">云裳心经</div>
                                    </a></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/hps/butian/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-wd"></span></div>
                                        <div class="tile-text">补天诀</div>
                                    </a></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/hps/xiangzhi/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-cg"></span></div>
                                        <div class="tile-text">相知</div>
                                    </a></li>
                                <li class="divider-full-bleed"></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/t/tielao/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-tc"></span></div>
                                        <div class="tile-text">铁牢律</div>
                                    </a></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/t/xisui/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-sl"></span></div>
                                        <div class="tile-text">洗髓经</div>
                                    </a></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/t/mingzun/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-mj"></span></div>
                                        <div class="tile-text">明尊琉璃体</div>
                                    </a></li>
                                <li class="tile"><a class="tile-content ink-reaction" href="/t/tiegu/">
                                        <div class="tile-icon"><span class="jx3icon iconList jx3icon-sd"></span></div>
                                        <div class="tile-text">铁骨衣</div>
                                    </a></li>
                            </ul>
                        </div>
                    </ul>
                </li>
                <li ng-show="$root.isPz" ng-if="$root.isLogin" ng-cloak class="dropdown case-opt visible-xs"
                    title="保存配装"><a href="javascript:void(0);" class="btn btn-icon-toggle btn-default"
                                    data-toggle="dropdown"><i class="md md-save"></i></a>
                    <ul class="dropdown-menu animation-expand" style="max-height:500px;overflow-x:hidden">
                        <li class="dropdown-header">保存配装</li>
                        <li ng-repeat="case in saveList.list" ng-click="saveCaseConfirm(case.id,case.name,$event)"><a
                                    href>{{case.name}}</a></li>
                        <li class="divider"></li>
                        <li ng-click="saveNewCase($event)"><a href>保存一套新方案</a></li>
                    </ul>
                </li>
                <li ng-show="$root.isPz" ng-if="$root.isLogin" ng-cloak class="dropdown case-opt visible-xs"
                    title="读取配装"><a href="javascript:void(0);" class="btn btn-icon-toggle btn-default"
                                    data-toggle="dropdown"><i class="md md-folder-open"></i></a>
                    <ul class="dropdown-menu animation-expand" style="max-height:500px;overflow-x:hidden">
                        <li class="dropdown-header">读取配装</li>
                        <li ng-repeat="case in saveList.list" ng-click="loadCase(case.id)"><a href>{{case.name}}</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="/user/#!/case">方案设置</a></li>
                    </ul>
                </li>
                <li ng-if="$root.isLogin" ng-cloak class="visible-xs"><a href="/user/" class="btn btn-flat btn-default">{{$root.user.name}}</a>
                </li>
            </ul>
            <ul class="header-nav header-nav-options right visible-xs" ng-if="!$root.isLogin" ng-cloak>
                <li><a class="btn btn-flat btn-default" data-toggle="modal" data-target="#loginModal">登录</a></li>
                <li><a class="btn btn-flat btn-default" href="/register/">注册</a></li>
            </ul>
        </div>
        <div class="headerbar-right hidden-xs" ng-if="$root.isLogin" ng-cloak>
            <ul class="header-nav header-nav-options">
                <li ng-show="$root.isPz" class="dropdown case-opt" title="保存配装"><a href="javascript:void(0);"
                                                                                   class="btn btn-icon-toggle btn-default"
                                                                                   data-toggle="dropdown"><i
                                class="md md-save"></i></a>
                    <ul class="dropdown-menu animation-expand" style="max-height:500px;overflow-x:hidden">
                        <li class="dropdown-header">保存配装</li>
                        <li ng-repeat="case in saveList.list" ng-click="saveCaseConfirm(case.id,case.name,$event)"><a
                                    href>{{case.name}}</a></li>
                        <li class="divider"></li>
                        <li ng-click="saveNewCase($event)"><a href>保存一套新方案</a></li>
                    </ul>
                </li>
                <li ng-show="$root.isPz" class="dropdown case-opt" title="读取配装"><a href="javascript:void(0);"
                                                                                   class="btn btn-icon-toggle btn-default"
                                                                                   data-toggle="dropdown"><i
                                class="md md-folder-open"></i></a>
                    <ul class="dropdown-menu animation-expand" style="max-height:500px;overflow-x:hidden">
                        <li class="dropdown-header">读取配装</li>
                        <li ng-repeat="case in saveList.list" ng-click="loadCase(case.id)"><a href>{{case.name}}</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="/user/#!/case">方案设置</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="header-nav header-nav-profile">
                <li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle ink-reaction"
                                        data-toggle="dropdown"><img
                                ng-src="{{$root.user.picture?$root.user.picture:'/images/default_avatar.png'}}" src=""
                                alt=""> <span class="profile-info"> {{$root.user.name}} </span></a>
                    <ul class="dropdown-menu animation-dock">
                        <li class="dropdown-header">设置</li>
                        <li><a href="/user/">个人资料</a></li>
                        <li><a href="/user/#!/preference">偏好设置</a></li>
                        <li><a href="/user/#!/case">方案设置</a></li>
                        <li class="divider"></li>
                        <li><a href ng-click="logout()"><i class="fa fa-fw fa-power-off text-danger"></i> 退出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="headerbar-right hidden-xs" ng-if="!$root.isLogin" ng-cloak>
            <ul class="header-nav header-nav-options">
                <li><a class="btn btn-flat btn-default" data-toggle="modal" data-target="#loginModal">登录</a></li>
                <li><a class="btn btn-flat btn-default" href="/register/">注册</a></li>
            </ul>
        </div>
    </div>
</header>
<div class="offcanvas"></div>
<div id="content" class="content">
    <section class="full-bleed">
        <div class="section-body style-default-dark force-padding text-shadow">
            <div class="img-backdrop"></div>
            <div class="overlay overlay-shade-top stick-top-left height-3"></div>
            <div class="row">
                <div class="col-md-3 col-xs-5"><img class="img-circle img-responsive auto-width" src="/images/tou.png"
                                                    alt="" style="height:270px"></div>
            </div>
            <div class="overlay overlay-shade-bottom stick-bottom-left force-padding text-right"><a
                        class="btn btn-icon-toggle" data-toggle="tooltip" data-placement="top"
                        data-original-title="微博：魔术师胖叔叔" href="http://weibo.com/printlts" target="_blank"><i
                            class="fa fa-weibo"></i></a> <a class="btn btn-icon-toggle" data-toggle="tooltip"
                                                            data-placement="top" data-original-title="用户支持"
                                                            href="mailto:service@j3pz.com" target="_blank"><i
                            class="fa fa-envelope"></i></a> <a class="btn btn-icon-toggle" data-toggle="tooltip"
                                                               data-placement="top" data-original-title="开源代码"
                                                               href="http://github.com/j3pz" target="_blank"><i
                            class="fa fa-github"></i></a></div>
        </div>
    </section>
    <section ng-cloak>
        <div class="row">
            <div class="col-md-9 row" ng-controller="SchoolListCtrl">
                <div class="col-md-3 col-xs-6" ng-repeat="school in schools">
                    <div class="panel panel-default" ng-mouseenter="school.hover=true;"
                         ng-mouseleave="school.hover=false">
                        <div class="panel-body"><p class="jx3icon text-center" ng-class="school.icon"
                                                   ng-style="{'color':school.color,'font-size':school.size+'px','margin':0}"></p>
                        </div>
                        <div class="panel-footer text-center xinfaList" ng-if="!school.hover">{{school.name}}</div>
                        <div class="panel-footer xinfaList" ng-if="school.hover" aria-label="xinfa">
                            <div class="row"><a class="col-xs-6 text-center" ng-href="{{'dps/' + school.xinfa1 +'/'}}">{{school.xinfaName1}}</a><a
                                        class="col-xs-6 text-center"
                                        ng-href="{{school.type2 + '/' + school.xinfa2 +'/'}}" ng-if="school.xinfa>1">{{school.xinfaName2}}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 news">
                <div class="panel panel-primary">
                    <div class="panel-heading">剑网3相关工具</div>
                    <ul class="list-group"><a href="/tools/haste/" class="list-group-item" target="_blank"><h4
                                    class="list-group-item-heading">加速宝典</h4>
                            <p class="list-group-item-text">计算加速阈值，基于楚玄枫，泠落和南宫临风对加速理论研究成果构建，精确无误差。</p></a><a
                                href="/tools/prediction/" class="list-group-item" target="_blank"><h4
                                    class="list-group-item-heading">瑰石列表</h4>
                            <p class="list-group-item-text">提供各大主流副本的瑰石列表查询。</p></a><a
                                href="https://haimanchajian.com/jx3/wiki" class="list-group-item" target="_blank"><h4
                                    class="list-group-item-heading">剑网3成就百科</h4>
                            <p class="list-group-item-text">剑网3《成就百科》是一个内容自由、任何人都可以参与的百科全书协作计划。</p></a></ul>
                </div>
            </div>
        </div>
        <hr>
        <div class="well well-sm">友情链接： <a href="http://www.jx3pve.com/" target="_blank" rel="noopener noreferrer"><img
                        src="/images/favicon-jh.ico"> 剑网3 PVE</a> | <a href="https://haimanchajian.com/" target="_blank"
                                                                       rel="noopener noreferrer"><img
                        src="/images/favicon-hm.ico"> 海鳗插件</a> |
        </div>
    </section>
    <div class="push"></div>
</div>
<div id="modals">
    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="LoginModal"
         ng-controller="LoginCtrl">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-6"><br><span class="text-lg text-bold text-accent">剑网3配装器 用户登录</span><br><br>
                            <form class="form" role="form">
                                <div class="form-group"><input type="text" class="form-control" name="email" type="text"
                                                               ng-model="user.mail"><label for="email">邮箱</label></div>
                                <div class="form-group" ng-show="notReset"><input type="password" class="form-control"
                                                                                  name="pswd" type="password"
                                                                                  ng-model="user.password"><label
                                            for="pswd">密码</label>
                                    <p class="help-block"><a href ng-click="notReset = false">忘记密码?</a></p></div>
                                <br>
                                <div class="row" ng-show="notReset">
                                    <div class="col-xs-6 text-left"></div>
                                    <div class="col-xs-6 text-right">
                                        <button class="btn btn-accent btn-raised ink-reaction" ng-click="login(user)"
                                                data-loading-text="登录中...">登录
                                        </button>
                                    </div>
                                </div>
                                <div class="row" ng-show="!notReset">
                                    <div class="col-xs-6 text-left">
                                        <small>请确认您在邮箱项中填入了正确的邮箱后，点击右侧重置按钮。如果邮箱正确，您将会收到一封密码重置邮件。</small>
                                    </div>
                                    <div class="col-xs-6 text-right">
                                        <button class="btn btn-accent btn-raised ink-reaction"
                                                ng-click="notReset = true">返回登录
                                        </button>
                                        <button class="btn btn-accent btn-raised ink-reaction" ng-click="resetPass()">
                                            重置
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-sm-5 col-sm-offset-1 text-center">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                            <br><br>
                            <h3 class="text-light">还没有账号?</h3><a
                                    class="btn btn-block btn-raised btn-accent ink-reaction" href="/register/">点此注册</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="Update"
         ng-controller="UpdateCtrl">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">更新说明</h4></div>
                <div class="modal-body">
                    <div ng-bind-html="getUpdateDesc(updateDesc)"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">知道了</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="feedbackModal" tabindex="-1" role="dialog" aria-labelledby="feedback">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">用户反馈</h4></div>
                <div class="modal-body"><p>对于配装器的任何疑问，bug，可通过填写下列反馈表进行反馈。为方便联系，以下表单均需要登录 QQ 或 微信才能填写。</p>
                    <ul>
                        <li><a href="https://docs.qq.com/form/fill/DY0ZLY1d4eFR0cVR5">数值错误</a></li>
                        <li><a href="https://docs.qq.com/form/fill/DY05mUXdZUHJadWpP">计算错误</a></li>
                        <li><a href="https://docs.qq.com/form/fill/DY0VKQUR6Wk5veGNS">订单错误</a></li>
                        <li><a href="https://docs.qq.com/form/fill/DY0VUc25JSlViclho">其他</a></li>
                    </ul>
                    <p>也可以直接联系开发者<a href="https://weibo.com/printlts" target="_blank">微博</a>。</p></div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>
<footer>
    <div id="footer" class="footer" ng-controller="footerCtrl">
        <div class="container" style="list-style:none">
            <div class="row">
                <div class="col-sm-6 col-xs-6">
                    <article class="margin-bottom-xxl text-small"><h4></h4>
                        <p><span class="text-primary"><a href="//">剑网3配装器</a></span>是由玩家开发，用于剑网3游戏配装的游戏辅助工具。侠士可在选定心法后，针对该心法选择装备，并对装备进行精炼、镶嵌、附魔等各项操作，完美模拟游戏角色的配装过程，并计算出游戏角色的预期属性。
                        </p>
                        <p><span class="opacity-75">Copyright &copy; 2013-2018</span> <strong>剑网3配装器</strong> <a
                                    href="http://www.miitbeian.gov.cn/" target="_blank">滇ICP备14005270号-1</a></p>
                    </article>
                </div>
                <div class="col-sm-3 col-xs-6"><h4 class="text-primary">用户支持</h4>
                    <li><a href="/upgrade/" target="_blank">方案保存位置购买</a></li>
                </div>
                <div class="col-sm-3 hidden-xs"><h4 class="text-primary">关于</h4>
                    <li><a href="/about/" target="_blank">关于剑网3配装器</a></li>
                    <li><a href="/credit/" target="_blank">致谢</a></li>
                    <li><a href="/policy/" target="_blank">免责声明与隐私条款</a></li>
                    <li><a href="#">数据库匹配游戏版本号：{{dbVersion}}</a></li>
                </div>
            </div>
        </div>
    </div>
</footer>
<script data-framework src="/pkg/pages/index.html_aio_0b24b6c.js"></script>
<script>!function (e, a, t, n, c, s, o) {
        e.GoogleAnalyticsObject = c, e[c] = e[c] || function () {
            (e[c].q = e[c].q || []).push(arguments)
        }, e[c].l = 1 * new Date, s = a.createElement(t), o = a.getElementsByTagName(t)[0], s.async = 1, s.src = n, o.parentNode.insertBefore(s, o)
    }(window, document, "script", "//www.google-analytics.com/analytics.js", "ga"), ga("create", "UA-17530182-11", "auto"), ga("require", "displayfeatures"), ga("send", "pageview")
    var isIE = function (e) {
        var i = document.createElement("b");
        return i.innerHTML = "\x3c!--[if IE " + e + "]><i></i><![endif]--\x3e", 1 === i.getElementsByTagName("i").length
    };
    (isIE(8) || isIE(7) || isIE(6)) && alert("配装器已经放弃了对IE 8 及其以下版本的支持，请升级浏览器，或更换 Chrome，Firefox 等现代浏览器访问。")</script>
<script src="/js/core/source/App.min_691e52f.js"></script>
</body>
</html>