$().ready(function(){
    var btn = $('.btn_submit');
    var pw1 = $('input[name=user_pw]');
    var pw2 = $('input[name=confirm]');
    btn.click(function(e){
        if(pw1.val() != pw2.val()){
            e.preventDefault();
            alert('비밀번호 확인을 다시 해주세요.');
        }else{
            alert('비밀번호가 변경되었습니다.');
            self.close();
        }
    });
});