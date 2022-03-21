
function SetMyPage(data) {
    var tble_data = JSON.parse(data);
    var markup = "";
    for (var i = 0; i < tble_data.length; i++)
    {
        var j = i + 1;
        markup += "<tr><th scope='row'>" + j + "</td>";
        markup += "<td>" + tble_data[i].fname + "</td>";
        markup += "<td>" + tble_data[i].lname + "</td>";
        markup += "<td>" + tble_data[i].class + "</td></tr>";
    }

    tableBody = $("table tbody");
    tableBody.append(markup);
}


function func_Save() {

    var s_first_name = $('#inputStdfirstName').val();
    var s_last_name = $('#inputStdlastName').val();
    var cls = $('#inputClass').val();
    var roll = $('#inputRoll').val();
    var percent = $('#inputpercentage').val();

    

    if (s_first_name == '' || s_last_name == '' || cls == '' || roll == '' || percent == '') {
        window.alert("Enter values Please");
    }
    else {
        $.ajax({
            type: "POST",
            url: 'Register_Student.aspx/SaveStudent',
            data: '{fname:' + JSON.stringify(s_first_name) + ',lname: ' + JSON.stringify(s_last_name) + ',cls: ' + JSON.stringify(cls) + ',roll: ' + JSON.stringify(roll) + ',percent:' + JSON.stringify(percent) + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                
            },
            error: function (e) {
                alert("Some error occured in addition.");
            }
        });

        func_Reset();
    }
}

function func_Reset() {
    $('#inputStdfirstName').val('');
    $('#inputStdlastName').val('');
    $('#inputClass').val('');
    $('#inputRoll').val('');
    $('#inputpercentage').val('');
    id = 0;
    flag = 0;
    window.location.reload(true);
}



