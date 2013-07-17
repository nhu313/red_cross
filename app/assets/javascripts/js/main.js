(function () {
    var $form = $('#main_form'),
        i = 0, m = 1, familyArr = [];

    function getGeolocation () {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
                var pos =  {
                    latitude: position.coords.latitude,
                    longitude: position.coords.longitude
                };
                
            });
        }
    }

    $.fn.serializeObject = function() {
        var o = {};
        var a = this.serializeArray();
        $.each(a, function() {
            if (o[this.name] !== undefined) {
                if (!o[this.name].push) {
                    o[this.name] = [o[this.name]];
                }
                o[this.name].push(this.value || '');
            } else {
                o[this.name] = this.value || '';
            }
        });
        return o;
    };

    $form.submit(function (e) {
        // e.preventDefault();
        i++;

        var url  = $form.attr('action'),
            data = $form.serializeObject();

        localStorage[i] = data;

        if (navigator.onLine) {
            $.ajax({
                url : url,
                dataType : "text",
                type : "POST",
                data : data,
                success : function() {
                    localStorage[i]['sent'] = true;
                    $form.reset();
                },
                error : function () {
                    $form.append('<p>There has been an error</p>');
                }
            });
        } else {
            localStorage[i]['sent'] = false;
        }
        return false;
    });
    
$('#add_member').click(function () {
    e.preventDefault();
        
    return function () {
        m++
        $last = $('.client').last();
        clientName = $('[name=client_name]').last().val();
        clientNum = $('[name=client_number]').last().val();
        var client = {
            name : clientName,
            number: clientNum
        }
        familyArr.push(client)
        console.log(client);
        console.log($last);
        $last.after($('<label>' + m + '</label><input name="client_name" class="span5 client" placeholder="Name"><input name="client_number" class="span5 client" placeholder="Phone number">'));
    }();
});

// fields = 0;
// function addInput() {
//     if (fields != 10) {
//     document.getElementById('text').innerHTML += "<input type='file' value='' /><br />";
// fields += 1;
// } else {
// document.getElementById('text').innerHTML += "<br />Only 10 upload fields allowed.";
// document.form.add.disabled=true;
// }
// }
// $('#add').click(function() {
//     var p = $(this).closest('p'),
//         i = p.index() + 1;
    
//     $(p).before('<textarea class="span5" name="all_clients" placeholder="Name(s)/Location(s) and Phone Number(s) of ALL Client(s):"></textarea>');    
//     return false; 
// });

})();
