$().ready(function(){
    // url 파라미터 가져오는 소스
    $.urlParam = function(name){
        var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
        if (results==null){
        return null;
        }
        else{
        return results[1] || 0;
        }
    }
    var user = $.urlParam('user');
    var nonUser = $.urlParam('nonUser');
    if(user != null){
        alert('잘못된 정보를 입력하셨습니다.')
    }
    if(nonUser != null){
        alert('잘못된 정보를 입력하셨습니다.')
    }

});