$(function () {
    function display(bool) {
        if (bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }
    })
   
    $("#close").click(function () {
        $.post('http://curse-clothingmenu/exit', JSON.stringify({}));
        return
    })
   
    $("#police").click(function () {
       $.post('http://curse-clothingmenu/police', JSON.stringify({}));
       $.post('http://curse-clothingmenu/exit', JSON.stringify({}));  
    })
    $("#fire").click(function () {
        $.post('http://curse-clothingmenu/fire', JSON.stringify({}));
        $.post('http://curse-clothingmenu/exit', JSON.stringify({}));
        
     })
     $("#sheriff").click(function () {
        $.post('http://curse-clothingmenu/sheriff', JSON.stringify({}));
        $.post('http://curse-clothingmenu/exit', JSON.stringify({}));
        
     })
     $("#paramedic").click(function () {
        $.post('http://curse-clothingmenu/paramedic', JSON.stringify({}));
        $.post('http://curse-clothingmenu/exit', JSON.stringify({}));
        
     })
     $("#extra2").click(function () {
        $.post('http://curse-clothingmenu/extra2', JSON.stringify({}));
        $.post('http://curse-clothingmenu/exit', JSON.stringify({}));
        
     })
     $("#cancel").click(function () {
        $.post('http://curse-clothingmenu/exit', JSON.stringify({}));
        
     })
})
