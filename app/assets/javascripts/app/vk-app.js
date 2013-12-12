$(document).ready(function(){

    var api = new vk_api(

        'SRplcxaXW9o1C8dWUKjf',

        function() {

            api.makeSettings(api.SETT_AUDIO || api.SETT_STATUS);

        }

    );

    $('#change_settings').click(function(e){

        api.makeSettings(api.SETT_AUDIO || api.SETT_STATUS);

        e.preventDefault();

    });

});