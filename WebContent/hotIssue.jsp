<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="js/hotIssue.js"></script>
<div class="section_serch_area menu" style="width: 100%">
	<div class="select_inbo _picker_component">
		<%-- 
			<div href="#" class="date_indo">
				<span class="date_txt _title_ymd"></span>
				<!-- [D] 활성화시 class="on", 비활성화시 class="off" -->
				<a href="#" class="date_ico_box _date_trigger v2"> 
					<span class="off"><span class="blind">비활성화</span></span>
				</a>
				<!-- [D] 캘린더 활성화 display:block 추가 부탁 드립니다 -->
				<div id="_calendar" class="calendar">
					<div class="layer_area _date_wrapper" style="display: none">
						<div class="calendar_area _leftMonth">
							<div class="calendar_head">
								<strong class="calendar-title _title_ym">2017.07.</strong>
								<!--[D] 링크 비활성화 a 링크에 class="off" 추가 -->
								<a href="#" class="calendar-btn-prev-mon _prev" data-date=""><span
									class="btn_prev">이전달</span></a> <a href="#"
									class="calendar-btn-next-mon _next off" data-date=""><span
									class="btn_next">다음달</span></a>
							</div>
							<div class="calendar_body _calendar hasDatepicker"
								id="dp1499901720034">
								<div
									class="ui-datepicker-inline ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"
									style="display: block;">
									<div
										class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all">
										<a class="ui-datepicker-prev ui-corner-all"
											data-handler="prev" data-event="click" title="Prev"><span
											class="ui-icon ui-icon-circle-triangle-w">Prev</span></a><a
											class="ui-datepicker-next ui-corner-all ui-state-disabled"
											title="Next"><span
											class="ui-icon ui-icon-circle-triangle-e">Next</span></a>
										<div class="ui-datepicker-title">
											<span class="ui-datepicker-month">07</span>&nbsp;<span
												class="ui-datepicker-year">2017</span>
										</div>
									</div>
									<table class="ui-datepicker-calendar">
										<thead>
											<tr>
												<th scope="col" class="ui-datepicker-week-end"><span
													title="일">일</span></th>
												<th scope="col"><span title="월">월</span></th>
												<th scope="col"><span title="화">화</span></th>
												<th scope="col"><span title="수">수</span></th>
												<th scope="col"><span title="목">목</span></th>
												<th scope="col"><span title="금">금</span></th>
												<th scope="col" class="ui-datepicker-week-end"><span
													title="토">토</span></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td
													class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
												<td
													class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
												<td
													class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
												<td
													class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
												<td
													class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
												<td
													class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
												<td class=" ui-datepicker-week-end calendar_sat" title="토요일"
													data-handler="selectDay" data-event="click" data-month="6"
													data-year="2017"><a class="ui-state-default" href="#">1</a></td>
											</tr>
											<tr>
												<td class=" ui-datepicker-week-end calendar_sun" title="일요일"
													data-handler="selectDay" data-event="click" data-month="6"
													data-year="2017"><a class="ui-state-default" href="#">2</a></td>
												<td class=" " data-handler="selectDay" data-event="click"
													data-month="6" data-year="2017"><a
													class="ui-state-default" href="#">3</a></td>
												<td class=" " data-handler="selectDay" data-event="click"
													data-month="6" data-year="2017"><a
													class="ui-state-default" href="#">4</a></td>
												<td class=" " data-handler="selectDay" data-event="click"
													data-month="6" data-year="2017"><a
													class="ui-state-default" href="#">5</a></td>
												<td class=" " data-handler="selectDay" data-event="click"
													data-month="6" data-year="2017"><a
													class="ui-state-default" href="#">6</a></td>
												<td class=" " data-handler="selectDay" data-event="click"
													data-month="6" data-year="2017"><a
													class="ui-state-default" href="#">7</a></td>
												<td class=" ui-datepicker-week-end calendar_sat" title="토요일"
													data-handler="selectDay" data-event="click" data-month="6"
													data-year="2017"><a class="ui-state-default" href="#">8</a></td>
											</tr>
											<tr>
												<td class=" ui-datepicker-week-end calendar_sun" title="일요일"
													data-handler="selectDay" data-event="click" data-month="6"
													data-year="2017"><a class="ui-state-default" href="#">9</a></td>
												<td class=" " data-handler="selectDay" data-event="click"
													data-month="6" data-year="2017"><a
													class="ui-state-default" href="#">10</a></td>
												<td class=" " data-handler="selectDay" data-event="click"
													data-month="6" data-year="2017"><a
													class="ui-state-default" href="#">11</a></td>
												<td class=" " data-handler="selectDay" data-event="click"
													data-month="6" data-year="2017"><a
													class="ui-state-default" href="#">12</a></td>
												<td
													class=" ui-datepicker-days-cell-over  ui-datepicker-current-day ui-datepicker-today"
													data-handler="selectDay" data-event="click" data-month="6"
													data-year="2017"><a
													class="ui-state-default ui-state-highlight ui-state-active ui-state-hover"
													href="#">13</a></td>
												<td class=" ui-datepicker-unselectable ui-state-disabled "><span
													class="ui-state-default">14</span></td>
												<td
													class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled calendar_sat"
													title="토요일"><span class="ui-state-default">15</span></td>
											</tr>
											<tr>
												<td
													class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled calendar_sun"
													title="일요일"><span class="ui-state-default">16</span></td>
												<td class=" ui-datepicker-unselectable ui-state-disabled "><span
													class="ui-state-default">17</span></td>
												<td class=" ui-datepicker-unselectable ui-state-disabled "><span
													class="ui-state-default">18</span></td>
												<td class=" ui-datepicker-unselectable ui-state-disabled "><span
													class="ui-state-default">19</span></td>
												<td class=" ui-datepicker-unselectable ui-state-disabled "><span
													class="ui-state-default">20</span></td>
												<td class=" ui-datepicker-unselectable ui-state-disabled "><span
													class="ui-state-default">21</span></td>
												<td
													class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled calendar_sat"
													title="토요일"><span class="ui-state-default">22</span></td>
											</tr>
											<tr>
												<td
													class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled calendar_sun"
													title="일요일"><span class="ui-state-default">23</span></td>
												<td class=" ui-datepicker-unselectable ui-state-disabled "><span
													class="ui-state-default">24</span></td>
												<td class=" ui-datepicker-unselectable ui-state-disabled "><span
													class="ui-state-default">25</span></td>
												<td class=" ui-datepicker-unselectable ui-state-disabled "><span
													class="ui-state-default">26</span></td>
												<td class=" ui-datepicker-unselectable ui-state-disabled "><span
													class="ui-state-default">27</span></td>
												<td class=" ui-datepicker-unselectable ui-state-disabled "><span
													class="ui-state-default">28</span></td>
												<td
													class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled calendar_sat"
													title="토요일"><span class="ui-state-default">29</span></td>
											</tr>
											<tr>
												<td
													class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled calendar_sun"
													title="일요일"><span class="ui-state-default">30</span></td>
												<td class=" ui-datepicker-unselectable ui-state-disabled "><span
													class="ui-state-default">31</span></td>
												<td
													class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
												<td
													class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
												<td
													class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
												<td
													class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
												<td
													class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="sub_area">
							<a href="#" class="btn_today _today">오늘</a> <a href="#"
								class="btn_check _confirm">확인</a>
						</div>
					</div>
				</div>
			</div>
		</div>
			[D] 비활성화시 class="date_indo" 에 v2를 입력해주세요 
		--%>

		<div class="keyword_carousel"
			style="overflow: hidden; margin: 0 auto;">
			<div class="jcarousel _realtime_carousel">
				<div class="section_lst_area carousel_area" style="width: 1263px">
					<div class="keyword_rank select_date" style="float: left; margin-left: 200px">
						<div class="rank_inner v2">
							<strong class="rank_title v2 rank_fr"></strong>
							<div class="rank_scroll" style="left: 0px;">
								<ul class="rank_list">
									<c:forEach items="${hotIssueForeignList}" var="data">
										<li class="list"><a href="${data.url}" class="list_area"> <em
											class="num">${data.rank}</em> <span class="title">${data.contents}</span>
										</a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
					<div class="keyword_rank select_date" style="float: right; margin-right: 200px">
						<div class="rank_inner v2">
							<strong class="rank_title v2 rank_kr"></strong>
							<div class="rank_scroll" style="left: 0px;">
								<ul class="rank_list">
									<c:forEach items="${hotIssueKoreaList}" var="data">
										<li class="list"><a href="${data.url}" class="list_area"> <em
											class="num">${data.rank}</em> <span class="title">${data.contents}</span>
										</a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<a href="#"	class="keyword_btn_prev _realkwd_jcarousel-control-prev">
					<i class="fa fa-angle-left" style="font-size:64px;line-height: 12;"></i>
				</a> 
				<a href="#"	class="keyword_btn_next _realkwd_jcarousel-control-next">
					<i class="fa fa-angle-right" style="font-size:64px;line-height: 12;"></i>
				</a>
			</div>
		</div>
	</div>
</div>