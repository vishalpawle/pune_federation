$(document).ready(function() {
$('input[type="radio"]').click(function() {
if($(this).attr('id') == 'team_category_officer') {
$('#team_post').hide();
}
else {

}
});
});