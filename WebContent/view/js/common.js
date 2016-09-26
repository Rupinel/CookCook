var overFlag = false;
		var clickFlag = false;
		var oldObj;
		$(document).ready(function() {
			$(".sub_menu*").hide();
			$("#selectIcon*").hide();
			// 대메뉴 마우스오버 이벤트
			$(".menu_over*").hover(function(){
				var obj = this;
				overFlag = true;
				setTimeout(function() {
					showSubMenu(obj);
				}, 100);
			});
			$(".menu_over*").mousedown(function(){
				clickFlag = true;
			});
			$(".contents").hover(function(){
				var obj = this;
				overFlag = false;
				setTimeout(function() {
					hideSubMenu(obj);
				}, 100);
			});

			// 서브메뉴 마우스오버 이벤트
			$(".sub_menu_over").hover(function(){
				overFlag = true;
				$(this).find("img").removeClass('gray');
			},function() {
				$(this).find("img").addClass('gray');
			});
		});

		function showSubMenu(obj) {
			if (overFlag && obj==oldObj) return;
			oldObj = obj;
			// 초기화
			initialize(obj);

			// 선택된 대메뉴에 대한 서브메뉴 보이기
			$(obj).find("#bigMenu").find("#selectIcon").show();
			$(obj).closest("li").find(".sub_menu").slideDown("slow");
			$(obj).parent("li").addClass("menu_active");
			$(obj).children("span").removeClass("white");

			clickFlag = false;
		}

		function hideSubMenu(obj) {
			if (overFlag || clickFlag) return;
			oldObj = null;
			initialize(obj);
			console.log("hide");
		}

		function initialize(obj) {
			$(".sub_menu*").slideUp("slow");
			$("#selectIcon*").hide();
			$(".menu").find("li").removeClass("menu_active");
			$("#bigMenu*").addClass("white");
		}

		// Checkbox
		$(function () {
				$('.check').on('click', function () {
						// 초기화
						$('.sub_menu>li>a').removeClass('sub_menu_on');
						$('.sub_menu_over>img').addClass('gray');
						$('.choice_result').find('span').remove(); // 선택된 재료 지우기
						
						var obj = this;
						var valThis = $(this).val();
						setTimeout(function() {
							if (!$(obj).prop('checked'))
							{
								$("input:checkbox").each( function(index) {
										var val = $(this).val();
										if (val==valThis) $(this).prop('checked', false);
										//$('.choice_result').removeAttr('span'); // 선택된 재료 지우기
								});
							}
							var checkValues = '';
							$("input:checkbox").each( function(index) {
									var val = $(this).val();
									var getNames = $(this).parent().parent().find(".sub_menu_txt").text();
									var checked = $(this).prop('checked');
									if (checked) {
										checkValues += val + '['+ getNames + ']' + ',';
									//	if ($(".choice_result").html().indexOf(val) < 0) {		// 없으면 추가...
									//		$(".choice_result").append("<span class='choice_material'>"+ val + "</span>");
									//	}
									}

									/*if (checkValues.indexOf(val)>=0) { 
										$(this).prop('checked', true);
										$(this).parent().parent().find("a").addClass('sub_menu_on');
										$(this).parent().parent().find("img").removeClass('gray');
									} */
									
									//console.log(index+'/'+val+'/'+checkValues + '/'+ getNames );
							});

							$("input:checkbox").each( function(index) {
									var val = $(this).val();
									if (checkValues.indexOf(val)>=0) { 

										$(this).prop('checked', true);
										$(this).parent().parent().find("a").addClass('sub_menu_on');
										$(this).parent().parent().find("img").removeClass('gray');
									} 
							});	
							
							$.each(checkValues.split(','), function( i, codeAndNames) {
								if (codeAndNames=='') return true;	// 공백 스킵
								var _name = codeAndNames.split('[')[1].replace(']','');
										console.log('/' + checkValues + '/pink babo/');
								console.log('/' + _name + '/pink babo/');

								if ($(".choice_result").html().indexOf(_name)>=0 || _name=='') return true;
								$(".choice_result").append("<span class='choice_material'>"+ _name + "</span>");
							});
							checkValues = '';
						}, 100);
				});
		});


		// Image Slider 		// Swipe Plugin

			$(function() {
				window.mySwipe = $('#mySwipe').Swipe({
					startSlide : 0,                                               // 초기에 첫 번째 배너가 노출됩니다.
					auto:3000,                                                  // 3초 이후 자동으로 배너가 이동됩니다.
					continuous : false,                                        // 배너가 반복적으로 롤링됩니다.
					disableScroll : true,                                      // 슬라이드 배너에 스크롤바 생성을 차단합니다.
					stopPropagation : true,                                 // 하위 요소에 이벤트 전달을 차단합니다. 
					callback:function(index, element) {
					currentIndex = index;
					},                 									                // 이벤트가 전환되면 익명 함수를 실행합니다.
					transitionEnd : function(index,element) {}          // 화면이 전환되면 익명 함수를 실행합니다.
				}).data('Swipe');
			
				$('.preBtn').on('click',function() {
					mySwipe.prev();
				});
				
				$('.nextBtn').on('click',function() {
					mySwipe.next();
				});
				
				/* // 이미지 슬라이더 2
				var ran;  // random 변수 선언
				$('.left_move').click(function() {
					if(ran>0){
					ran--;
					moveSlider(ran);
					} //else{
					 //	alert('첫번째 이미지입니다');
					// }
				});
				$('.right_move').click(function() {
					if(ran<4){
					ran++;
					moveSlider(ran);
					}
				}); 
				
				$('.slider_text').css('left',-300);             // silder_text 안보이게 처리
				$('.slider_text').each(function(index){
					$(this).attr('data-index',index);       //모든 slider_text 클래스에 index라는 속성을 부여함
				});
				
				$('.control_button').each(function(index){
					$(this).attr('data-index',index);      //모든 contron_button 클래스에 index라는 속성을 부여함
				});
				
				$('.control_button').click(function() {
					var index = $(this).index();
				//	$('.slider_panel').animate({
				//		left : -(index * 600)
				//	},'slow');
					moveSlider(index);
				});
				ran = Math.round(Math.random() *4);  //랜덤하게 움직이는 이미지 (ramdom 값은 0.00000...1 ~ 0.99999....까지 값을 가짐)
				moveSlider(ran);
			 */
			}); // document.ready End

		
			function moveSlider(index) {                    // 호출할때만 수행
				var mIndex =  -(index * 600);
				$('.slider_panel').animate({
						left : mIndex
					},'slow');
					$('.control_button[data-index =' + index + ']').addClass('active');         // data-index = index 인것만 addClass
					$('.control_button[data-index !=' + index + ']').removeClass('active');    // data-index != index (index값이 같지 않은것)은 removeClass
					$('.slider_text[data-index=' + index + ']').show().animate({                // data-index = index 인것만 slider_text 클래스를 보이게 처리
						left: 0 
					},'slow','easeOutElastic');                                                         // jquery-ui 플러그인
					//$('.slider_text[data-index !=' + index + ']').animate({                      // data-index값이 index와 같지않으면 slider_text 클래스를 안보이게 처리
					//	left: -300 
					//},'slow','easeOutElastic');
					$('.slider_text[data-index=' + index +']').hide('fast',function(){          
						$(this).css('left',-300);
					});
			}
		