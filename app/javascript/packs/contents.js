$(document).ready(function(){
    console.log("hello")
    $('a[data-toggle="tab"]').on('show.bs.tab', function(e){
        console.log("is it execute?1")
        var activeTab = $(e.target).text(); // Get the name of active tab
        $(".jumbotron h1").html(activeTab);
    });
});