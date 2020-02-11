// 정규표현식
var regId = /^[a-z]+[a-z0-9]{3,19}$/g;	// 아이디 검사식
var regPw = /^[a-z0-9_-]{6,18}$/;		// 비밀번호 검사식
var regName = /^[가-힣]{2,5}$/;			// 이름 유효성 검사 2~4자 사이

$(document).ready(function() {
	// 전송버튼을 클릭했을때 실행되는 폼이벤트
	var btnNext = $('.btn_next');

	// input에 한해서 엔터키 제한 - 엔터키 때문에 click이벤트 없이 submit됨.
	$('input').keydown(function() {
		if (event.keyCode === 13) {
		  event.preventDefault();
		};
	  });
	  
	btnNext.click(function(e){
		var resultEmail = $('p.resultEmail');
		var resultHp = $('p.resultHp');
		var resultId = $('p.resultId');
		var resultPw = $('p.resultPw');

		// email, hp, id, pw 등 중복시 
		if(resultEmail.hasClass('noNext')){
			e.preventDefault();
        	alert('이미 사용중인 이메일 입니다.');	
		}else if(resultHp.hasClass('noNext')){
			e.preventDefault();
        	alert('이미 사용중인 핸드폰 번호 입니다.');	
		}else if(resultId.hasClass('noNext')){
			e.preventDefault();
        	alert('이미 사용중인 아이디 입니다.');	
		}else if(resultPw.hasClass('noNext')){
			e.preventDefault();
        	alert('비밀번호가 일치하지 않습니다.');	
		}
		
		// 성별, 주소, 전화번호 체크박스 체크 유무
		var checkboxNoAddr = $('input:checkbox[name=noAddr]');
		var checkboxNoTel = $('input:checkbox[name=noTel]');
		var inputAddr2 = $('input[name=user_addr_detail]');
		var inputTel3 = $('input[name=tel3]');
		if(checkboxNoAddr.is(":checked") == false && inputAddr2.val() == ''){
			e.preventDefault();
        	alert('주소를 기입하거나 박스에 체크해주세요.');	
		}else if(checkboxNoTel.is(":checked") == false && inputTel3.val() == ''){
			e.preventDefault();
        	alert('전화번호를 기입하거나 박스에 체크해주세요.');	
		}

		var checkMale = $('input#male');
		var checkFemale = $('input#female');
		if(checkMale.is(":checked") == false && checkFemale.is(":checked") == false){
			e.preventDefault();
        	alert('성별을 선택 해주세요.');	
		}
		
		// 필수입력 후 다음단계
		var name = $('input[name=user_name]');
		var email1 = $('input[name=email1]');
		var email2 = $('input[name=email2]');
		var birth = $('input[name=user_birth]');
		var uid = $('input[name=user_id]');
		var password1 = $('input[name=user_pw]');
		var password2 = $('input[name=user_pw2]');
		var hp = $('input[name=user_hp]');

		if(name.val() == ''){
			e.preventDefault();
			alert('이름을 입력하여주세요.');
		}
		if(email1.val() =='' || email2.val() ==''){
			alert('이메일을 입력하여주세요.');
		}
		if(birth.val() ==''){
			alert('생년월일을 입력하여주세요.');
		}
		if(uid.val() == ''){
			e.preventDefault();
			alert('아이디를 입력하여주세요.');
		}
		if(password1.val() =='' || password2.val() ==''){
			alert('비밀번호를 입력하여주세요.');
		}
		if(hp.val() == ''){
			e.preventDefault();
			alert('휴대폰 번호를 입력하여주세요.');
		}


    });
});

// 		var id		= $('input[name=user_id]');
// 		var name	= $('input[name=user_name]');

// 		// 아이디 최소 5자리 이상여부 확인 / 아이디가 한글, 특수문자 포함여부					
// 		if (regId.test(id.val()) == false){
// 			alert('아이디는 영어 소문자, 숫자로 최소 4자 이상이어야 합니다.');
// 			id.val('').focus();
// 			return false;
// 		}

// 		// 이름 한글 여부
// 		if(regName.test(name.val()) == false){
// 			alert('이름은 한글로 최소 2자에서 5자까지 입력하세요.');
// 			name.val('').focus();
// 			return false;
// 		}
		
// 		return true;