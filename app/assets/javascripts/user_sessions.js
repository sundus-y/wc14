// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function () {
    var alert = $('.alert');
    if (alert.length > 0) {
        alert.show().animate({height: alert.outerHeight()}, 200);
        window.setTimeout(function() {
            alert.slideUp();
        }, 3000);
    }
});
