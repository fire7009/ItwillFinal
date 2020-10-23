<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--sidebar left start-->
  <aside class="sidebar sidebar-left">
            <div class="sidebar-profile">
            	<c:choose>
					<c:when test="${loginUserInfo!=null}" >
		 				<div class="avatar">
		                    <img class="img-circle profile-image" src="${pageContext.request.contextPath}/resources/upload/${loginUserInfo.fileNm}" alt="profile">
		                    <i class="on border-dark animated bounceIn"></i>
		                </div>
		                <div class="profile-body dropdown">
		                    <a href="" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
		                    <h4>${loginUserInfo.empNm }</h4>
		                    </a>
		                    <small class="title">Front-end Developer</small>
		                </div>
					</c:when>
					<c:otherwise>
						<div class="avatar">
		                    <img class="img-circle profile-image" src="${pageContext.request.contextPath}/resources/upload/logout.png" alt="profile">
		                    <i class="on border-dark animated bounceIn"></i>
		                </div>
		                <div class="profile-body dropdown">
		                    <a href="" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
		                    <h4><a href="/pjt/emp/login">로그인해주세요</a></h4>
		                    </a>
		                </div>
					</c:otherwise>
            	</c:choose>
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
                            <i class="fa fa-fw fa-file-text"></i> 전자결제
                        </a>
                        <ul class="nav-sub">
                          
                            <li>
                                <a href="#" title="Sliders &amp; Progress">
                                      		결제작성
                                </a>
                            </li>
                            <li>
                                <a href="/pjt/emp/emp_board" title="Sliders &amp; Progress">
                                
                                      		결제요청
                                </a>
                            </li>
                            <li>
                                <a href="/pjt/emp/emp_board" title="Sliders &amp; Progress">
                                      		결제리스트
                                </a>
                            </li>
                            
                        </ul>
                    </li>
                    
                    <li class="nav-dropdown">
                        <a href="#" title="UI Elements">
                            <i class="fa fa-fw fa-file-text"></i> 운영관리
                        </a>
                        <ul class="nav-sub">
                          
                            <li>
                                <a href="/pjt/emp/signup" title="Sliders &amp; Progress">
                                      		사원등록
                                </a>
                            </li>
                            <li>
                                <a href="/pjt/notice" title="Sliders &amp; Progress">
                                      		사원게시판
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
                    
  					<li class="nav-dropdown">
                        <a href="#" title="UI Elements">
                            <i class="fa fa-fw fa-file-text"></i> 운송관리
                        </a>
                        <ul class="nav-sub">
                          
                            <li>
                                <a href="/pjt/unsong" title="Sliders &amp; Progress">
                                
                                      		운송현황
                                </a>
                            </li>
                            <li>
                                <a href="/pjt/unsong_insert" title="Sliders &amp; Progress">
                                      		운송추가
                                </a>
                            </li>
                            
                        </ul>
                    </li>
                    
                   	<li class="nav-dropdown">
                        <a href="#" title="UI Elements">
                            <i class="fa fa-fw fa-file-text"></i> 물류관리
                        </a>
                        <ul class="nav-sub">
                          
                            <li>
                                <a href="/pjt/mulryu" title="Sliders &amp; Progress">
                                
                                      		물류현황
                                </a>
                            </li>
                            <li>
                                <a href="/pjt/mulryu_insert" title="Sliders &amp; Progress">
                                      		물류추가
                                </a>
                            </li>
                            
                        </ul>
                    </li>
                </ul>
            </nav>
        </aside>
        <!--sidebar left end-->