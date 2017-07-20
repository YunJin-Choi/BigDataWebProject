function recommend() {
	bizTypeValue = document.getElementById("bizType").value;
	bizSizeValue = document.getElementById("bizSize").value;
	bizlocalValue = document.getElementById("bizlocal").value;
	if(bizTypeValue == ""){
		alert("업종을 선택해 주세요.");
	}else if(bizSizeValue == ""){
		alert("규모를 선택해 주세요.");
	}else if(bizlocalValue == ""){
		alert("지역을 선택해 주세요.");
	}else{
		$.ajax({
			url: "Controller",
			data: {
				command: "recommend", recommend: "selectRecommendList",
				bizType: bizTypeValue, bizSize: bizSizeValue, bizlocal: bizlocalValue
			},
			method: "post",
			dataType: "html",
			success: function(result){
				result = eval("("+result+")");
				if(result.Pamphlet == 0 && result.SNS == 0 && result.News == 0 && result.Experience == 0){
					alert("해당하는 데이터가 없습니다.");
				}else{
					makeChart(result.Pamphlet, result.SNS, result.News, result.Experience);
				}
			}
		});	
	}
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
		google.visualization.events.addListener(chart, 'select', function(e){
			var selection = chart.getSelection()[0].row;
			var boardURL;
			if(selection == 0) {
				boardURL = 'boardPamphlet.jsp';
			}else if(selection == 1) {
				boardURL = 'boardSNS.jsp';
			}else if(selection == 2) {
				boardURL = 'boardNews.jsp';
			}else if(selection == 3) {
				boardURL = 'boardExperience.jsp';
			}
			$.ajax({
				url: boardURL,
				method: "post",
				dataType: "html",
				success: function(result){
					$("#recommendBoardView").html(result);
				}	
			});	
	    });
	}
}