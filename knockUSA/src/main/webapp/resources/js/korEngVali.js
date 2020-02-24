$(document).on("keyup", "input.nameKor", function() {
    $(this).val( $(this).val().replace(/[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"\\]/g,"") );
});
$(document).on("keypress", "input.nameKor", function() {
    $(this).val( $(this).val().replace(/[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"\\]/g,"") );
});
$(document).on("keyup", "input.onlyEng", function() {
    $(this).val( $(this).val().replace(/[0-9]|[^\!-z\s]/gi,"") );
});