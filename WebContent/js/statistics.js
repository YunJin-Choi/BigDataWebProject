function statistics() {
	bizType = document.getElementById("bizType").value;
	bizSize = document.getElementById("bizSize").value;
	bielocal = document.getElementById("bizlocal").value;
	$.ajax({
		url: "Controller",
		data: {
			command: "recommend", recommend: "selectRecommendList"
		},
		method: "post",
		dataType: "html",
		success: function(result){
			result = eval("("+result+")");
			alert(result);
			makeChart(result.Pamphlet, result.SNS, result.News, result.Experience);
		}
	});	
}
function makeChart(pamphlet, SNS, News, Experience){
	google.charts.load('current', {packages:['corechart']});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {

		// 차트 데이터 설정
		var data = google.visualization.arrayToDataTable([
			['항목', '개수'], // 항목 정의
			['전단지', pamphlet], // 항목, 값 (값은 숫자로 입력하면 그래프로 생성됨)
			['SNS', SNS],
			['뉴스', News],
			['체험단', Experience],
		]);

		// 그래프 옵션
		var options = {
			title : 'Marketer가 이용하는 게시글 목록', // 제목
			width : 600, // 가로 px
			height : 400, // 세로 px
			bar : {
				groupWidth : '80%' // 그래프 너비 설정 %
			},
			legend : {
				position : 'none'
			}
		};

		var chart = new google.visualization.PieChart(document.getElementById('chartView'));
		chart.draw(data, options);
	}
}