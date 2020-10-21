<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--sidebar left start-->
  <aside class="sidebar sidebar-left">
            <div class="sidebar-profile">
                <div class="avatar">
                    <img class="img-circle profile-image" src="${pageContext.request.contextPath}/upload/${thumbnailFilename}" alt="profile">
                    <img class="img-circle profile-image" src="${pageContext.request.contextPath}/upload/${imageFilename}" alt="profile">
                    <i class="on border-dark animated bounceIn"></i>
                </div>
                <div class="profile-body dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <h4>Example User<span class="caret"></span></h4>
                    </a>
                    <small class="title">Front-end Developer</small>
                    <ul class="dropdown-menu animated fadeInRight" role="menu">
                        <li class="profile-progress">
                            <h5>
                                <span>80%</span>
                                <small>Profile complete</small>
                            </h5>
                            <div class="progress progress-xs">
                                <div class="progress-bar progress-bar-primary" style="width: 80%">
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-user"></i>
                                </span>My Account</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-envelope"></i>
                                </span>Messages</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-cog"></i>
                                </span>Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-sign-out"></i>
                                </span>Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
            <nav>
                <h5 class="sidebar-header">Navigation</h5>
                <ul class="nav nav-pills nav-stacked">
                    <li>
                        <a href="/pjt/mail/mail-inbox" title="Dashboard">
                            <i class="fa  fa-fw fa-tachometer"></i> 메일
                        </a>
                    </li>
                    <li >
                        <a href="/pjt/schedule/schedule" title="Dashboard">
                            <i class="fa  fa-fw fa-tachometer"></i> 일정
                        </a>
                    </li>
                    <li class="nav-dropdown">
                        <a href="#" title="UI Elements">
                            <i class="fa fa-fw fa-file-text"></i> 운영관리
                        </a>
                        <ul class="nav-sub">
                          
                            <li>
                                <a href="/pjt/emp/pages-sign-up" title="Sliders &amp; Progress">
                                      		사원등록
                                </a>
                            </li>
                            <li>
                                <a href="/pjt/emp/emp_board" title="Sliders &amp; Progress">
                                      		사원게시판
                                </a>
                            </li>
                            <li>
                                <a href="#" title="Sliders &amp; Progress">
                                      		전자결제
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-dropdown">
                        <a href="#" title="Dashboard">
                            <i class="fa  fa-fw fa-tachometer"></i> 업체 관리
                        </a>
                        <ul class="nav-sub">
                            <li>
                                <a href="/pjt/orderList" title="Sliders &amp; Progress">
                                      		발주현황
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li >
                        <a href="schedule" title="Dashboard">
                            <i class="fa  fa-fw fa-tachometer"></i> 운송관리
                        </a>
                    </li>
                </ul>
            </nav>
        </aside>
        <!--sidebar left end-->