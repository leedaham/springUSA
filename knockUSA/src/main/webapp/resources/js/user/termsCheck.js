$(document).ready(function(){
	// 동의체크해야 다음페이지 이동 가능	
	$('.btn_register').click(function(){
		var isChecked1 = $('input[name=agree1]').is(':checked');
		var isChecked2 = $('input[name=agree2]').is(':checked');
		var isChecked3 = $('input[name=agree3]').is(':checked');

		if(isChecked1 && isChecked2 && isChecked3){
			return true;	
		}else{
			alert('동의 체크를 해주세요.');
			return false;
		}
	});

	//전체선택 체크박스 만들기
	$('input[name=allAgree]').click(function(){
		if($('input[name=allAgree]').prop('checked')) { 
			$('input[type=checkbox]').prop('checked',true);
		} else { 
			$('input[type=checkbox]').prop('checked',false); 
		} 	
	});
	
	
	$('input[type=checkbox]').click(function(){
		var isChecked1 = $('input[name=agree1]').is(':checked');
		var isChecked2 = $('input[name=agree2]').is(':checked');
		var isChecked3 = $('input[name=agree3]').is(':checked');
		
		if(isChecked1 == false || isChecked2 == false || isChecked3 == false){
			$('input[name=allAgree]').prop('checked',false);
		}else{
			$('input[name=allAgree]').prop('checked',true);
		}
	});
});
