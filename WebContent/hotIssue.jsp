<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="js/hotIssue.js"></script>
<div class="section_serch_area menu" style="width: 100%">
	<div class="select_inbo _picker_component">
		<%-- 
			<div href="#" class="date_indo">
				<span class="date_txt _title_ymd"></span>
				<!-- [D] Ȱ��ȭ�� class="on", ��Ȱ��ȭ�� class="off" -->
				<a href="#" class="date_ico_box _date_trigger v2"> 
					<span class="off"><span class="blind">��Ȱ��ȭ</span></span>
				</a>
				<!-- [D] Ķ���� Ȱ��ȭ display:block �߰� ��Ź �帳�ϴ� -->
				<div id="_calendar" class="calendar">
					<div class="layer_area _date_wrapper" style="display: none">
						<div class="calendar_area _leftMonth">
							<div class="calendar_head">
								<strong class="calendar-title _title_ym">2017.07.</strong>
								<!--[D] ��ũ ��Ȱ��ȭ a ��ũ�� class="off" �߰� -->
								<a href="#" class="calendar-btn-prev-mon _prev" data-date=""><span
									class="btn_prev">������</span></a> <a href="#"
									class="calendar-btn-next-mon _next off" data-date=""><span
									class="btn_next">������</span></a>
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
													title="��">��</span></th>
												<th scope="col"><span title="��">��</span></th>
												<th scope="col"><span title="ȭ">ȭ</span></th>
												<th scope="col"><span title="��">��</span></th>
												<th scope="col"><span title="��">��</span></th>
												<th scope="col"><span title="��">��</span></th>
												<th scope="col" class="ui-datepicker-week-end"><span
													title="��">��</span></th>
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
												<td class=" ui-datepicker-week-end calendar_sat" title="�����"
													data-handler="selectDay" data-event="click" data-month="6"
													data-year="2017"><a class="ui-state-default" href="#">1</a></td>
											</tr>
											<tr>
												<td class=" ui-datepicker-week-end calendar_sun" title="�Ͽ���"
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
												<td class=" ui-datepicker-week-end calendar_sat" title="�����"
													data-handler="selectDay" data-event="click" data-month="6"
													data-year="2017"><a class="ui-state-default" href="#">8</a></td>
											</tr>
											<tr>
												<td class=" ui-datepicker-week-end calendar_sun" title="�Ͽ���"
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
													title="�����"><span class="ui-state-default">15</span></td>
											</tr>
											<tr>
												<td
													class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled calendar_sun"
													title="�Ͽ���"><span class="ui-state-default">16</span></td>
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
													title="�����"><span class="ui-state-default">22</span></td>
											</tr>
											<tr>
												<td
													class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled calendar_sun"
													title="�Ͽ���"><span class="ui-state-default">23</span></td>
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
													title="�����"><span class="ui-state-default">29</span></td>
											</tr>
											<tr>
												<td
													class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled calendar_sun"
													title="�Ͽ���"><span class="ui-state-default">30</span></td>
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
							<a href="#" class="btn_today _today">����</a> <a href="#"
								class="btn_check _confirm">Ȯ��</a>
						</div>
					</div>
				</div>
			</div>
		</div>
			[D] ��Ȱ��ȭ�� class="date_indo" �� v2�� �Է����ּ��� 
		--%>

		<div class="keyword_carousel"
			style="overflow: hidden; margin: 0 auto;">
			<div class="jcarousel _realtime_carousel">
				<div class="section_lst_area carousel_area" style="width: 1263px">
					<div class="keyword_rank" style="float: left; margin-left: 200px">
						<div class="rank_inner">
							<div class="com_guide_error">
								<div class="error_area">
									<div class="error_desc">
										<span class="sp_com_warn"></span> <strong class="desc_em">�����Ͱ�
											�����ϴ�.</strong> �ٸ� �Ⱓ�� �����Ͻñ� �ٶ��ϴ�.
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="keyword_rank select_date" style="float: right; margin-right: 200px">
						<div class="rank_inner v2">
							<strong class="rank_title v2 rank_kr"></strong>
							<div class="rank_scroll" style="left: 0px;">
								<ul class="rank_list">
									<li class="list"><a href="#" class="list_area"> <em
											class="num">1</em> <span class="title">�����</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">2</em> <span class="title">�̻��</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">3</em> <span class="title">�̶� �߱�</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">4</em> <span class="title">��ҿ�</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">5</em> <span class="title">�ѱ� �ø���</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">6</em> <span class="title">�׳�� �������� �ʹ� �����</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">7</em> <span class="title">���Ű��ź īŸ��</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">8</em> <span class="title">2018 ���þ� ������
												��������</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">9</em> <span class="title">�ӼӸ�</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">10</em> <span class="title">2018 ���þ� ������
												�������� ����</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">11</em> <span class="title">�����̽�</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">12</em> <span class="title">���п�</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">13</em> <span class="title">�Ϻ��� �Ƴ�</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">14</em> <span class="title">�⼺��</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">15</em> <span class="title">����</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">16</em> <span class="title">�̺񿡽�����</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">17</em> <span class="title">�̽¿�</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">18</em> <span class="title">v��</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">19</em> <span class="title">�౸</span>
									</a></li>
									<li class="list"><a href="#" class="list_area"> <em
											class="num">20</em> <span class="title">���ϳ���</span>
									</a></li>
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