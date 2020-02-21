$(function(){
        var submit = $('.reservation > form');
        submit.submit(function(e){
            var result = confirm('예약사항을 한번 더 확인해주세요!');
            if(result){
                return true;
            }else{
                e.preventDefault();
            }
        });
    });


$(function(){
    var addTravler1= $('.addTravler1');
    var addTravler2= $('.addTravler2');
    var addTravler3= $('.addTravler3');
    var addTravler4= $('.addTravler4');
    
    var purchase_how_many_add= $('input[name=purchase_how_many_add]');
    var purchase_how_many= $('input[name=purchase_how_many]');
    var accompany= $('select[name=purchase_accompany]');
    var clickAdd = $('.addBtn');
    
    var delBtn1= $('.delBtn1');
    var delBtn2= $('.delBtn2');
    var delBtn3= $('.delBtn3');
    var delBtn4= $('.delBtn4');

    var Traveler1_name_kor = $('input[name=purchase_traveler_name_kor_1]');
    var Traveler1_name_eng = $('input[name=purchase_traveler_name_eng_1]');
    var Traveler1_gender = $('input[name=purchase_traveler_gender_1]');
    var Traveler1_male = $('input[id=male1]');
    var Traveler1_female = $('input[id=female1]');
    var Traveler1_hp = $('input[name=purchase_traveler_hp_1]');
    
    var Traveler2_name_kor = $('input[name=purchase_traveler_name_kor_2]');
    var Traveler2_name_eng = $('input[name=purchase_traveler_name_eng_2]');
    var Traveler2_gender = $('input[name=purchase_traveler_gender_2]');
    var Traveler2_male = $('input[id=male2]');
    var Traveler2_female = $('input[id=female2]');
    var Traveler2_hp = $('input[name=purchase_traveler_hp_2]');
    
    var Traveler3_name_kor = $('input[name=purchase_traveler_name_kor_3]');
    var Traveler3_name_eng = $('input[name=purchase_traveler_name_eng_3]');
    var Traveler3_gender = $('input[name=purchase_traveler_gender_3]');
    var Traveler3_male = $('input[id=male3]');
    var Traveler3_female = $('input[id=female3]');
    var Traveler3_hp = $('input[name=purchase_traveler_hp_3]');
    
    var Traveler4_name_kor = $('input[name=purchase_traveler_name_kor_4]');
    var Traveler4_name_eng = $('input[name=purchase_traveler_name_eng_4]');
    var Traveler4_gender = $('input[name=purchase_traveler_gender_4]');
    var Traveler4_male = $('input[id=male4]');
    var Traveler4_female = $('input[id=female4]');
    var Traveler4_hp = $('input[name=purchase_traveler_hp_4]');


    accompany.change(function(){
        var accompanyYesOrNo1 = accompany.val(); 

        

        if(accompanyYesOrNo1==0){
            purchase_how_many_add.val('0');
            purchase_how_many.val('1');
            addTravler1.css('display', 'none');
            addTravler2.css('display', 'none');
            addTravler3.css('display', 'none');
            addTravler4.css('display', 'none');

            Traveler1_name_kor.val(''); 
            Traveler1_name_eng.val(''); 
            Traveler1_male.prop("checked", false);
            Traveler1_female.prop("checked", false);
            Traveler1_hp.val(''); 

        }else{
            purchase_how_many_add.val('1');
            purchase_how_many.val('1');
            addTravler1.css('display', 'block');
            addTravler2.css('display', 'none');
            addTravler3.css('display', 'none');
            addTravler4.css('display', 'none');

            Traveler1_name_kor.val(''); 
            Traveler1_name_eng.val(''); 
            Traveler1_male.prop("checked", false);
            Traveler1_female.prop("checked", false);
            Traveler1_hp.val(''); 
        }
    });
    
    clickAdd.click(function(){
        var accompanyYesOrNo2 = accompany.val();
        var TravelerAmount = purchase_how_many_add.val();
        var addTotal = Number(TravelerAmount)+1;
        purchase_how_many_add.val(addTotal);
        
        if(accompanyYesOrNo2==0){
            var add = Number(purchase_how_many_add.val())+1;
            purchase_how_many.val(add);
            if(addTotal==0){
                addTravler1.css('display', 'none');
                addTravler2.css('display', 'none');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(addTotal==1){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'none');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(addTotal==2){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(addTotal==3){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'block');
                addTravler4.css('display', 'none');
            }else if(addTotal > 3){
                alert('최대 여행인원 수는 4명입니다.');
                purchase_how_many_add.val('3');
                purchase_how_many.val('4');
            }
        }else if(accompanyYesOrNo2==1){
            purchase_how_many.val(purchase_how_many_add.val());
            if(addTotal==1){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'none');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(addTotal==2){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(addTotal==3){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'block');
                addTravler4.css('display', 'none');
            }else if(addTotal==4){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'block');
                addTravler4.css('display', 'block');
            }else if(addTotal > 4){
                alert('최대 여행인원 수는 4명입니다.');
                purchase_how_many_add.val('4');
                purchase_how_many.val('4');
            }
        }
    });
    
    

    delBtn1.click(function(){
        var accompanyYesOrNo3 = accompany.val();
        var TravelerAmount1 = purchase_how_many_add.val();
        var del1 = Number(TravelerAmount1)-1;
        purchase_how_many_add.val(del1);

        if(accompanyYesOrNo3==0){
            purchase_how_many.val(Number(purchase_how_many_add.val())+1);
            
            var Traveler1_genderVal = $('input[name=purchase_traveler_gender_1]:checked').val();
            var Traveler2_genderVal = $('input[name=purchase_traveler_gender_2]:checked').val();
            var Traveler3_genderVal = $('input[name=purchase_traveler_gender_3]:checked').val();
            var Traveler4_genderVal = $('input[name=purchase_traveler_gender_4]:checked').val();

            if(del1==0){
                addTravler1.css('display', 'none');
                addTravler2.css('display', 'none');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del1==1){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'none');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del1==2){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del1==3){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'block');
                addTravler4.css('display', 'none');
            }
            
            
            Traveler1_name_kor.val(Traveler2_name_kor.val()); 
            Traveler1_name_eng.val(Traveler2_name_eng.val()); 

            Traveler1_male.prop("checked", false);
            Traveler1_female.prop("checked", false);

            if(Traveler2_genderVal=='1'){
                Traveler1_male.prop("checked", true);
                Traveler1_female.prop("checked", false);
                Traveler2_male.prop("checked", false);
                Traveler2_female.prop("checked", false);
                
            }else if(Traveler2_genderVal=='2'){
                Traveler1_female.prop("checked", true);
                Traveler1_male.prop("checked", false);
                Traveler2_male.prop("checked", false);
                Traveler2_female.prop("checked", false);
            }

            Traveler1_hp.val(Traveler2_hp.val()); 
            Traveler2_name_kor.val(Traveler3_name_kor.val()); 
            Traveler2_name_eng.val(Traveler3_name_eng.val()); 
            
            if(Traveler3_genderVal=='1'){
                Traveler2_male.prop("checked", true);
                Traveler2_female.prop("checked", false);
                Traveler3_male.prop("checked", false);
                Traveler3_female.prop("checked", false);
                
            }else if(Traveler3_genderVal=='2'){
                Traveler2_female.prop("checked", true);
                Traveler2_male.prop("checked", false);
                Traveler3_male.prop("checked", false);
                Traveler3_female.prop("checked", false);
            }
            
            Traveler2_hp.val(Traveler3_hp.val()); 
            Traveler3_name_kor.val(Traveler4_name_kor.val()); 
            Traveler3_name_eng.val(Traveler4_name_eng.val()); 
            
            if(Traveler4_genderVal=='1'){
                Traveler3_male.prop("checked", true);
                Traveler3_female.prop("checked", false);
                Traveler4_male.prop("checked", false);
                Traveler4_female.prop("checked", false);
                
            }else if(Traveler4_genderVal=='2'){
                Traveler3_female.prop("checked", true);
                Traveler3_male.prop("checked", false);
                Traveler4_male.prop("checked", false);
                Traveler4_female.prop("checked", false);
            }

            Traveler3_hp.val(Traveler4_hp.val()); 
            Traveler4_name_kor.val(''); 
            Traveler4_name_eng.val(''); 

            Traveler4_male.prop("checked", false);
            Traveler4_female.prop("checked", false);

            Traveler4_hp.val(''); 
        }else{
            purchase_how_many.val(Number(purchase_how_many_add.val()));

            var Traveler1_genderVal = $('input[name=purchase_traveler_gender_1]:checked').val();
            var Traveler2_genderVal = $('input[name=purchase_traveler_gender_2]:checked').val();
            var Traveler3_genderVal = $('input[name=purchase_traveler_gender_3]:checked').val();
            var Traveler4_genderVal = $('input[name=purchase_traveler_gender_4]:checked').val();

            if(del1==0){
            del1=1;
            purchase_how_many_add.val(del1);
            purchase_how_many.val(Number(purchase_how_many_add.val()));
            addTravler1.css('display', 'block');
            addTravler2.css('display', 'none');
            addTravler3.css('display', 'none');
            addTravler4.css('display', 'none');
            }else if(del1==1){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'none');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del1==2){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del1==3){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'block');
                addTravler4.css('display', 'none');
            }
            
            Traveler1_name_kor.val(Traveler2_name_kor.val()); 
            Traveler1_name_eng.val(Traveler2_name_eng.val()); 

            Traveler1_male.prop("checked", false);
            Traveler1_female.prop("checked", false);

            if(Traveler2_genderVal=='1'){
                Traveler1_male.prop("checked", true);
                Traveler1_female.prop("checked", false);
                Traveler2_male.prop("checked", false);
                Traveler2_female.prop("checked", false);
                
            }else if(Traveler2_genderVal=='2'){
                Traveler1_female.prop("checked", true);
                Traveler1_male.prop("checked", false);
                Traveler2_male.prop("checked", false);
                Traveler2_female.prop("checked", false);
            }

            Traveler1_hp.val(Traveler2_hp.val()); 
            
            Traveler2_name_kor.val(Traveler3_name_kor.val()); 
            Traveler2_name_eng.val(Traveler3_name_eng.val()); 
            
            if(Traveler3_genderVal=='1'){
                Traveler2_male.prop("checked", true);
                Traveler2_female.prop("checked", false);
                Traveler3_male.prop("checked", false);
                Traveler3_female.prop("checked", false);
                
            }else if(Traveler3_genderVal=='2'){
                Traveler2_female.prop("checked", true);
                Traveler2_male.prop("checked", false);
                Traveler3_male.prop("checked", false);
                Traveler3_female.prop("checked", false);
            }

            Traveler2_hp.val(Traveler3_hp.val()); 
            Traveler3_name_kor.val(Traveler4_name_kor.val()); 
            Traveler3_name_eng.val(Traveler4_name_eng.val()); 
            
            if(Traveler4_genderVal=='1'){
                Traveler3_male.prop("checked", true);
                Traveler3_female.prop("checked", false);
                Traveler4_male.prop("checked", false);
                Traveler4_female.prop("checked", false);
                
            }else if(Traveler4_genderVal=='2'){
                Traveler3_female.prop("checked", true);
                Traveler3_male.prop("checked", false);
                Traveler4_male.prop("checked", false);
                Traveler4_female.prop("checked", false);
            }

            Traveler3_hp.val(Traveler4_hp.val()); 
            Traveler4_name_kor.val(''); 
            Traveler4_name_eng.val(''); 
            
            Traveler4_male.prop("checked", false);
            Traveler4_female.prop("checked", false);

            Traveler4_hp.val(''); 
        }
    });    
    delBtn2.click(function(e){
        var accompanyYesOrNo4 = accompany.val();
        var TravelerAmount2 = purchase_how_many_add.val();
        var del2 = Number(TravelerAmount2)-1;
        purchase_how_many_add.val(del2);

        if(accompanyYesOrNo4==0){
            purchase_how_many.val(Number(purchase_how_many_add.val())+1);

            var Traveler1_genderVal = $('input[name=purchase_traveler_gender_1]:checked').val();
            var Traveler2_genderVal = $('input[name=purchase_traveler_gender_2]:checked').val();
            var Traveler3_genderVal = $('input[name=purchase_traveler_gender_3]:checked').val();
            var Traveler4_genderVal = $('input[name=purchase_traveler_gender_4]:checked').val();

            if(del2==0){
                addTravler1.css('display', 'none');
                addTravler2.css('display', 'none');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del2==1){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'none');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del2==2){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del2==3){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'block');
                addTravler4.css('display', 'none');
            }

            Traveler2_name_kor.val(Traveler3_name_kor.val()); 
            Traveler2_name_eng.val(Traveler3_name_eng.val()); 
            
            if(Traveler3_genderVal=='1'){
                Traveler2_male.prop("checked", true);
                Traveler2_female.prop("checked", false);
                Traveler3_male.prop("checked", false);
                Traveler3_female.prop("checked", false);
                
            }else if(Traveler3_genderVal=='2'){
                Traveler2_female.prop("checked", true);
                Traveler2_male.prop("checked", false);
                Traveler3_male.prop("checked", false);
                Traveler3_female.prop("checked", false);
            }
            
            Traveler2_hp.val(Traveler3_hp.val()); 
            Traveler3_name_kor.val(Traveler4_name_kor.val()); 
            Traveler3_name_eng.val(Traveler4_name_eng.val()); 
            
            if(Traveler4_genderVal=='1'){
                Traveler3_male.prop("checked", true);
                Traveler3_female.prop("checked", false);
                Traveler4_male.prop("checked", false);
                Traveler4_female.prop("checked", false);
                
            }else if(Traveler4_genderVal=='2'){
                Traveler3_female.prop("checked", true);
                Traveler3_male.prop("checked", false);
                Traveler4_male.prop("checked", false);
                Traveler4_female.prop("checked", false);
            }

            Traveler3_hp.val(Traveler4_hp.val()); 
            Traveler4_name_kor.val(''); 
            Traveler4_name_eng.val(''); 

            Traveler4_male.prop("checked", false);
            Traveler4_female.prop("checked", false);

            Traveler4_hp.val(''); 
        }else{
            purchase_how_many.val(Number(purchase_how_many_add.val()));

            var Traveler1_genderVal = $('input[name=purchase_traveler_gender_1]:checked').val();
            var Traveler2_genderVal = $('input[name=purchase_traveler_gender_2]:checked').val();
            var Traveler3_genderVal = $('input[name=purchase_traveler_gender_3]:checked').val();
            var Traveler4_genderVal = $('input[name=purchase_traveler_gender_4]:checked').val();

            if(del2==0){
            del2=1;
            purchase_how_many_add.val(del2);
            purchase_how_many.val(Number(purchase_how_many_add.val()));
            addTravler1.css('display', 'block');
            addTravler2.css('display', 'none');
            addTravler3.css('display', 'none');
            addTravler4.css('display', 'none');
            }else if(del2==1){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'none');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del2==2){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del2==3){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'block');
                addTravler4.css('display', 'none');
            }

            Traveler2_name_kor.val(Traveler3_name_kor.val()); 
            Traveler2_name_eng.val(Traveler3_name_eng.val()); 
            
            if(Traveler3_genderVal=='1'){
                Traveler2_male.prop("checked", true);
                Traveler2_female.prop("checked", false);
                Traveler3_male.prop("checked", false);
                Traveler3_female.prop("checked", false);
                
            }else if(Traveler3_genderVal=='2'){
                Traveler2_female.prop("checked", true);
                Traveler2_male.prop("checked", false);
                Traveler3_male.prop("checked", false);
                Traveler3_female.prop("checked", false);
            }

            Traveler2_hp.val(Traveler3_hp.val()); 
            Traveler3_name_kor.val(Traveler4_name_kor.val()); 
            Traveler3_name_eng.val(Traveler4_name_eng.val()); 
            
            if(Traveler4_genderVal=='1'){
                Traveler3_male.prop("checked", true);
                Traveler3_female.prop("checked", false);
                Traveler4_male.prop("checked", false);
                Traveler4_female.prop("checked", false);
                
            }else if(Traveler4_genderVal=='2'){
                Traveler3_female.prop("checked", true);
                Traveler3_male.prop("checked", false);
                Traveler4_male.prop("checked", false);
                Traveler4_female.prop("checked", false);
            }

            Traveler3_hp.val(Traveler4_hp.val()); 
            Traveler4_name_kor.val(''); 
            Traveler4_name_eng.val(''); 
            
            Traveler4_male.prop("checked", false);
            Traveler4_female.prop("checked", false);

            Traveler4_hp.val('');  
        }
    });    
    delBtn3.click(function(e){
        var accompanyYesOrNo5 = accompany.val();

        var Traveler1_genderVal = $('input[name=purchase_traveler_gender_1]:checked').val();
        var Traveler2_genderVal = $('input[name=purchase_traveler_gender_2]:checked').val();
        var Traveler3_genderVal = $('input[name=purchase_traveler_gender_3]:checked').val();
        var Traveler4_genderVal = $('input[name=purchase_traveler_gender_4]:checked').val();

        var TravelerAmount3 = purchase_how_many_add.val();
        var del3 = Number(TravelerAmount3)-1;
        purchase_how_many_add.val(del3);

        if(accompanyYesOrNo5==0){
            purchase_how_many.val(Number(purchase_how_many_add.val())+1);
            if(del3==0){
                addTravler1.css('display', 'none');
                addTravler2.css('display', 'none');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del3==1){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'none');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del3==2){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del3==3){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'block');
                addTravler4.css('display', 'none');
            }

            Traveler3_name_kor.val(Traveler4_name_kor.val()); 
            Traveler3_name_eng.val(Traveler4_name_eng.val()); 
            
            if(Traveler4_genderVal=='1'){
                Traveler3_male.prop("checked", true);
                Traveler3_female.prop("checked", false);
                Traveler4_male.prop("checked", false);
                Traveler4_female.prop("checked", false);
                
            }else if(Traveler4_genderVal=='2'){
                Traveler3_female.prop("checked", true);
                Traveler3_male.prop("checked", false);
                Traveler4_male.prop("checked", false);
                Traveler4_female.prop("checked", false);
            }

            Traveler3_hp.val(Traveler4_hp.val()); 
            Traveler4_name_kor.val(''); 
            Traveler4_name_eng.val(''); 

            Traveler4_male.prop("checked", false);
            Traveler4_female.prop("checked", false);

            Traveler4_hp.val(''); 
        }else{
            purchase_how_many.val(Number(purchase_how_many_add.val()));

            var Traveler1_genderVal = $('input[name=purchase_traveler_gender_1]:checked').val();
            var Traveler2_genderVal = $('input[name=purchase_traveler_gender_2]:checked').val();
            var Traveler3_genderVal = $('input[name=purchase_traveler_gender_3]:checked').val();
            var Traveler4_genderVal = $('input[name=purchase_traveler_gender_4]:checked').val();

            if(del3==0){
            del3=1;
            purchase_how_many_add.val(del3);
            purchase_how_many.val(Number(purchase_how_many_add.val()));
            addTravler1.css('display', 'block');
            addTravler2.css('display', 'none');
            addTravler3.css('display', 'none');
            addTravler4.css('display', 'none');
            }else if(del3==1){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'none');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del3==2){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del3==3){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'block');
                addTravler4.css('display', 'none');
            }

            Traveler3_name_kor.val(Traveler4_name_kor.val()); 
            Traveler3_name_eng.val(Traveler4_name_eng.val()); 
            
            if(Traveler4_genderVal=='1'){
                Traveler3_male.prop("checked", true);
                Traveler3_female.prop("checked", false);
                Traveler4_male.prop("checked", false);
                Traveler4_female.prop("checked", false);
                
            }else if(Traveler4_genderVal=='2'){
                Traveler3_female.prop("checked", true);
                Traveler3_male.prop("checked", false);
                Traveler4_male.prop("checked", false);
                Traveler4_female.prop("checked", false);
            }

            Traveler3_hp.val(Traveler4_hp.val()); 
            Traveler4_name_kor.val(''); 
            Traveler4_name_eng.val(''); 
            
            Traveler4_male.prop("checked", false);
            Traveler4_female.prop("checked", false);

            Traveler4_hp.val('');  
        }
    });    
    delBtn4.click(function(e){
        var Traveler1_genderVal = $('input[name=purchase_traveler_gender_1]:checked').val();
        var Traveler2_genderVal = $('input[name=purchase_traveler_gender_2]:checked').val();
        var Traveler3_genderVal = $('input[name=purchase_traveler_gender_3]:checked').val();
        var Traveler4_genderVal = $('input[name=purchase_traveler_gender_4]:checked').val();

        var accompanyYesOrNo6 = accompany.val();
        var TravelerAmount4 = purchase_how_many_add.val();
        var del4 = Number(TravelerAmount4)-1;
        purchase_how_many_add.val(del4);

        if(accompanyYesOrNo6==0){
            purchase_how_many.val(Number(purchase_how_many_add.val())+1);
            if(del4==0){
                addTravler1.css('display', 'none');
                addTravler2.css('display', 'none');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del4==1){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'none');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del4==2){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del4==3){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'block');
                addTravler4.css('display', 'none');
            }

            Traveler4_name_kor.val(''); 
            Traveler4_name_eng.val(''); 
            
            Traveler4_male.prop("checked", false);
            Traveler4_female.prop("checked", false);

            Traveler4_hp.val('');  
        }else{
            purchase_how_many.val(Number(purchase_how_many_add.val()));

            var Traveler1_genderVal = $('input[name=purchase_traveler_gender_1]:checked').val();
            var Traveler2_genderVal = $('input[name=purchase_traveler_gender_2]:checked').val();
            var Traveler3_genderVal = $('input[name=purchase_traveler_gender_3]:checked').val();
            var Traveler4_genderVal = $('input[name=purchase_traveler_gender_4]:checked').val();

            if(del4==0){
            del4=1;
            purchase_how_many_add.val(del4);
            purchase_how_many.val(Number(purchase_how_many_add.val()));
            addTravler1.css('display', 'block');
            addTravler2.css('display', 'none');
            addTravler3.css('display', 'none');
            addTravler4.css('display', 'none');
            }else if(del4==1){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'none');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del4==2){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'none');
                addTravler4.css('display', 'none');
            }else if(del4==3){
                addTravler1.css('display', 'block');
                addTravler2.css('display', 'block');
                addTravler3.css('display', 'block');
                addTravler4.css('display', 'none');
            }

            Traveler4_name_kor.val(''); 
            Traveler4_name_eng.val(''); 
            
            Traveler4_male.prop("checked", false);
            Traveler4_female.prop("checked", false);

            Traveler4_hp.val('');  
        }
    });    
});