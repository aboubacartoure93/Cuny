$(function() {
    var faye = new Faye.Client('http://cunyversity.com/faye');
    faye.subscribe('/comments/new', function (data) {
        eval(data);
    });
});