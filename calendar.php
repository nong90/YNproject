<?php 
$page_sub = "sub01";
$page_title = "치맥FC 매치신청";


include_once('../common.php');
include('../head.php'); 
?>
<?php
// ----------- 오늘 날짜
$thisYear = date('Y'); // 4자리 연도
$thisMonth = date('n'); //0을 포함하지 않은 월
$today = date('j'); // 0을 포함하지 않은 일


// ----------- $year, $month 값이 없으면 현재 날짜
$year = isset($_GET['year'])? $_GET['year'] : $thisYear;
$month = isset($_GET['month'])? $_GET['month'] : $thisMonth;
$day = isset($_GET['day'])? $_GET['day'] : $today;

$prev_month = $month--;
$next_month = $month++;





if ($month == 1){
	$prev_month = 12;
	$prev_year = $year -1;
} else if ($month == 12){
	$next_month =1 ;
	$next_year = $year + 1;
}

$prev_Year = $year -1 ;
$next_Year = $year + 1;




$preDate = date("Y-m-d", mktime(0,0,0, $month -1,1,$year));
$nextDate = date("Y-m-d", mktime(0,0,0, $month +1,1,$year));




//1. 총일수 구하기
$max_day = date('t',mktime(0,0,0,$month,1,$year)); //해당월의 마지막 날짜
//echo'총요일수'.$max_day.'<br>';

//2.시작요일 구하기
$start_week = date("w", mktime(0,0,0,$month,1,$year)); //일요일  0, 토요일6
//echo'시작요일'.$start_week.'<br>';

//3. 총 몇 주인지 구하기
$total_week = ceil(($max_day + start_week)/7);
//echo'총 몇 주'.$total_week.'<br>';

//4. 마지막 요일 구하기
$last_week = date('w', mktime(0,0,0,$month, $max_day, $year));
//echo'마지막 요일'.$last_week.'<br>';


// 올해-이번달 출력
$thisMonth = "&nbsp;&nbsp;" .$year.'년 &nbsp;&nbsp'.$month.'월'."&nbsp;&nbsp;";

//이번달, 저번달 출력
$prevMonth ="&nbsp;&nbsp;" .$year.'년 &nbsp;&nbsp'.$prev_month.'월'."&nbsp;&nbsp;";
$nextMonth ="&nbsp;&nbsp;" .$year.'년 &nbsp;&nbsp'.$next_month.'월'."&nbsp;&nbsp;";

echo $prevMonth;
echo $nextMonth;

//작년, 올해 출력
$prevYear = "&nbsp;&nbsp;" .$prev_Year.'년 &nbsp;&nbsp'.$month.'월'."&nbsp;&nbsp;";
$nextYear = "&nbsp;&nbsp;" .$next_Year.'년 &nbsp;&nbsp'.$month.'월'."&nbsp;&nbsp;";

echo $prevYear;
echo $nextYear;


?>

<script>
	function a(){
	var click_event = "<?php echo $prevMonth ?>"; 
	}

</script>

<style>
/*달력 공통*/
	.cal_container .wrap > div ul{display: flex; justify-content: space-around;}
	button{background: none; border: 0px;}
	
	/* 달력상단 */
	.cal_pre_next > ul{}
	.cal_pre_next > ul > li{font-size: 15px; padding: 20px;}


	/*달력 주*/
	.cal_day > ul{background:rgb(246 186 44);}
	.cal_day > ul > li{font-size: 15px; padding: 5px; width:14.28%; text-align: center;}
	.cal_day > ul > li:first-child{color:red;}
	.cal_day > ul > li:last-child{color:blue;}

	/*달력 일*/
	.cal_date{display: flex; flex-wrap:wrap;}
	.cal_date p{width:14.28%;padding: 5px; text-align: center; height: 100px; border: 1px solid #e1e1e1}
	.cal_date p:nth-child(7n+1){color: red}
	.cal_date p:nth-child(7n){color: blue}
</style>

<div class="cal_container">
	<div class="wrap">
		<div class="cal_pre_next">
			<ul>
				<li><button onclick = "document.getElementById('tm').innerHTML = console.log(a())">◀◀</button></li>

				<li><button> ◀</button></li>
				
				<li>
					<button href="chimacfc.com/juho/calendar.php">
						<p id="tm"><?php echo $thisMonth;?></p>
					</button>
				</li>

				<li><button> ▶</button></li>

				<li><button> ▶▶</button></li>
				
			</ul>
		</div>

		<div class="cal_day">
			<ul>
				<li>일</li>
				<li>월</li>
				<li>화</li>
				<li>수</li>
				<li>목</li>
				<li>금</li>
				<li>토</li>
			</ul>
		</div>

		<div class="cal_date" id="cal_date">
			



<?php 

	//5. 화면에 표시할 화면의 초기값을 1로 설정
	$day=1;

	//6. 총 주 수에 맞춰서 세로줄 만들기
	for($i=1; $i <= $total_week;$i++)
{?>

	<?php 
		//7. 총 가로칸 만들기
	for($j = 0; $j <7; $j++){
		//8. 첫번째 주이고 시작요일보다 $j가 작거나 마지막주이고 $j가 마지막 요일보다 크면 표시하지 않음
		echo '<p>';
	echo $style;
		if(!(($i == 1 && $j < $start_week) || ($i == $total_week&&$j > $last_week))){

			if($j == 6){
			//9. $j가 0이면 일요이므로 빨강색
			$style = "holy";

			}else if($j == 5){
			//10. $j가 0이면 토요일이므로 파란색
			$style = "blue";
			}else{
			//11. 그외는 평일이므로 검정색
			$style ="black";
				}
			//12. 오늘 날짜면 굵은 글씨
			if($year == $thisYear && $month == $thisMonth && $day == date("j")){
			//13. 날짜출력
			echo '<span class=$style>';
			echo $day;
			echo'</span>';
			}else{
			echo '<span class=$style>';
			echo $day;
			echo '</span>';
				}
			//14. 날짜 증가
			$day++;
			}
			echo'</p>';
		}
	}


	?>
		
		</div>
	</div>
</div>




<!-- Swiper JS -->
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>


<?php
include_once(G5_TMPL_PATH.'/tail.php');
?>