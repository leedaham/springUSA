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
	                $('.resultId').css('color', 'red').css('display', 'inline').text('이미 사용중인 아이디 입니다.').removeClass('yesNext').addClass('noNext');
	                input_id.focus();
	            }else{
	                $('.resultId').css('color', 'blue').css('display', 'inline').text('사용 가능한 아이디 입니다.').removeClass('noNext').addClass('yesNext');
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
	                $('.resultHp').css('color', 'red').css('display', 'inline').text('이미 사용중인 전화번호 입니다.').removeClass('yesNext').addClass('noNext');
	                input_hp.focus();
	            }else{
	                $('.resultHp').css('color', 'blue').css('display', 'inline').text('사용 가능한 전화번호 입니다.').removeClass('noNext').addClass('yesNext');
	            }
	        }
	    });
    });
	// EMAIL 중복체크
	$('input[name=email1]').focusout(function() {
		var input_email1 = $(this);
	    var input_email2 = $('input[name=email2]');
	    if(input_email1.val() != ''&& input_email2.val() != '') {
		    $.ajax({
		        url	: '/knockusa/api/checkemail?user_email='+input_email1.val()+'@'+input_email2.val(),
		        type: 'get',
		        dataType: 'json',
		        success:function(data){
		            if(data == 1){
		                $('.resultEmail').css('color', 'red').css('display', 'inline').text('이미 사용중인 이메일 입니다.').removeClass('yesNext').addClass('noNext');
		            }else{
		                $('.resultEmail').css('color', 'blue').css('display', 'inline').text('사용 가능한 이메일 입니다.').removeClass('noNext').addClass('yesNext');
		            }
		        }
		    });
	    }
    });
	$('input[name=email2]').focusout(function() {
		var input_email1 = $('input[name=email1]');
	    var input_email2 = $(this);
	    if(input_email1.val() != ''&& input_email2.val() != '') {
		    $.ajax({
		        url	: '/knockusa/api/checkemail?user_email='+input_email1.val()+'@'+input_email2.val(),
		        type: 'get',
		        dataType: 'json',
		        success:function(data){
		            if(data == 1){
		                $('.resultEmail').css('color', 'red').css('display', 'inline').text('이미 사용중인 이메일 입니다.').removeClass('yesNext').addClass('noNext');
		            }else{
		                $('.resultEmail').css('color', 'blue').css('display', 'inline').text('사용 가능한 이메일 입니다.').removeClass('noNext').addClass('yesNext');
		            }
		        }
		    });
	    }
    });
	$('select[name=email]').focusout(function() {
		var input_email1 = $('input[name=email1]');
	    var input_email2 = $('input[name=email2]');
	    if(input_email1.val() != ''&& input_email2.val() != '') {
		    $.ajax({
		        url	: '/knockusa/api/checkemail?user_email='+input_email1.val()+'@'+input_email2.val(),
		        type: 'get',
		        dataType: 'json',
		        success:function(data){
		            if(data == 1){
		                $('.resultEmail').css('color', 'red').css('display', 'inline').text('이미 사용중인 이메일 입니다.').removeClass('yesNext').addClass('noNext');
		            }else{
		                $('.resultEmail').css('color', 'blue').css('display', 'inline').text('사용 가능한 이메일 입니다.').removeClass('noNext').addClass('yesNext');
		            }
		        }
		    });
	    }
    });

    // 비밀번호 비밀번호 확인 일치 여부
    $('input[name=user_pw2]').focusout(function(){
        var input_pw = $('input[name=user_pw]').val();
        var input_pw2 = $(this).val();
        if(input_pw == input_pw2){
            $('.resultPw').css('color', 'blue').css('display', 'inline').text('비밀번호가 일치합니다.').removeClass('noNext').addClass('yesNext');
        }else{
            $('.resultPw').css('color', 'red').css('display', 'inline').text('비밀번호가 일치 하지않습니다.').removeClass('yesNext').addClass('noNext');
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
	
	// 주소, 전화번호 없음 체크 시
	var checkboxNoAddr = $('input:checkbox[name=noAddr]');
	var checkboxNoTel = $('input:checkbox[name=noTel]');
	var inputAddr1 = $('input[name=user_addr_main]');
	var inputAddr2 = $('input[name=user_addr_detail]');
	var inputZip = $('input[name=user_zip]');
	var inputTel1 = $('input[name=tel1]');
	var inputTel2 = $('input[name=tel2]');
	var inputTel3 = $('input[name=tel3]');

	// 주소, 전화번호 순서대로 입력하기
	inputAddr2.click(function(){
		if(inputAddr1.val()==''){
			alert('본 주소를 먼저 입력해주세요.');
			inputAddr1.focus();
		}
	});
	inputTel3.click(function(){
		if(inputTel2.val()==''){
			if(inputTel1.val()==''){
				alert('순서대로 입력해주세요.');
				inputTel1.focus();
			}else{
				alert('순서대로 입력해주세요.');
				inputTel2.focus();
			}
			
		}
	});
	checkboxNoAddr.change(function(){
		if(checkboxNoAddr.is(":checked")){
			inputAddr1.attr('readonly', true).attr('placeholder', '주소없음 선택하였습니다.').val('');
			inputAddr2.attr('readonly', true).attr('placeholder', '주소없음 선택하였습니다.').val('');
			inputZip.val(0).css('color', 'white');
		}else{
			inputAddr1.attr('readonly', false).attr('placeholder', '주소를 입력해주세요.');
			inputAddr2.attr('readonly', false).attr('placeholder', '상세주소를 입력해주세요.');
		}
	});
	checkboxNoTel.change(function(){
		if(checkboxNoTel.is(":checked")){
			inputTel1.attr('readonly', true).attr('placeholder', '번호없음').val('');
			inputTel2.attr('readonly', true).attr('placeholder', '선택하였습니다.').val('');
			inputTel3.attr('readonly', true).val('');
		}else{
			inputTel1.attr('readonly', false).attr('placeholder', '');
			inputTel2.attr('readonly', false).attr('placeholder', '');
			inputTel3.attr('readonly', false).attr('placeholder', '');
		}
	});
	// 성별 둘 다 체크 불가
	var Male = $('input#male');
	var Female = $('input#female');
	Male.change(function(){
		Female.prop('checked', false);
	});
	Female.change(function(){
		Male.prop('checked', false);
	});
});
