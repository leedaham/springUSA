$(function() {
	
	// ID 중복체크
	$('input[name=user_id]').focusout(function() {
	
	    var input_id = $(this);
	
	    $.ajax({
	        url	: '/knockusa/api/checkid?user_id='+input_id.val(),
	        type: 'get',
	        dataType: 'json',
	        success:function(data){
	            if(data == 1){
	                $('.resultId').css('color', 'red').css('display', 'inline').text('이미 사용중인 아이디 입니다.');
	                input_id.focus();
	            }else{
	                $('.resultId').css('color', 'blue').css('display', 'inline').text('사용 가능한 아이디 입니다.');
	            }
	        }
	    });
	});
	
	// HP 중복체크
	$('input[name=user_hp]').focusout(function() {
	
	    var input_hp = $(this);
	
	    $.ajax({
	        url	: '/knockusa/api/checkhp?user_hp='+input_hp.val(),
	        type: 'get',
	        dataType: 'json',
	        success:function(data){
	            if(data == 1){
	                $('.resultHp').css('color', 'red').css('display', 'inline').text('이미 사용중인 전화번호 입니다.');
	                input_hp.focus();
	            }else{
	                $('.resultHp').css('color', 'blue').css('display', 'inline').text('사용 가능한 전화번호 입니다.');
	            }
	        }
	    });
    });

    // 비밀번호 비밀번호 확인 일치 여부
    $('input[name=user_pw2]').focusout(function(){
        var input_pw = $('input[name=user_pw]').val();
        var input_pw2 = $(this).val();
        if(input_pw == input_pw2){
            $('.resultPw').css('color', 'blue').css('display', 'inline').text('비밀번호가 일치합니다.');
        }else{
            $('.resultPw').css('color', 'red').css('display', 'inline').text('비밀번호가 일치 하지않습니다.');
            $('input[name=user_pw]').val('');
            $('input[name=user_pw2]').val('');
        }
    });
    
    // 이메일 셀렉트 박스로 선택하기
    $('select[name=email]').change(function(){
        var input_email2 = $('input[name=email2]');
        var input_email = $('select[name=email]').val();

        
        if(input_email == 'direct'){
            input_email2.attr('readonly', false);
        }else{
            input_email2.attr('readonly', true);
            input_email2.val($('select[name=email]').val());
        }
    });
    
    //SMS, EMAIL 수신 동의, 거부
    var input_agreeSms = $('input[name=agreeSms]');
    var input_agreeEmail = $('input[name=agreeEmail]');
    var checkSms = $('input:checkbox[name=user_agree_sms1]');
    var checkEmail = $('input:checkbox[name=user_agree_email1]');
    checkSms.change(function(){
        if(checkSms.is(":checked")){
			input_agreeSms.val("0");
		}else{
			input_agreeSms.val("1");
		}
    });
    checkEmail.change(function(){
        if(checkEmail.is(":checked")){
			input_agreeEmail.val("0");
		}else{
			input_agreeEmail.val("1");
		}
    });
});
