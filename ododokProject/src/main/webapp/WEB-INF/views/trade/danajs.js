$(function() {
    $('#searchBox').autocomplete({
        source : function(reuqest, response) {
            $.ajax({
                type : 'get',
                url: '/json',
                dataType : 'json',
                success : function(data) {
                    // 서버에서 json 데이터 response 후 목록 추가
                    response(
                        $.map(data, function(item) {
                            return {
                                label : item + 'label',
                                value : item,
                                test : item + 'test'
                            }
                        })
                    );
                }
            });
        },
        select : function(event, ui) {
            console.log(ui);
            console.log(ui.item.label);
            console.log(ui.item.value);
            console.log(ui.item.test);
        },
        focus : function(event, ui) {
            return false;
        },
        minLength : 1,
        autoFocus : true,
        classes : {
            'ui-autocomplete': 'highlight'
        },
        delay : 500,
        position : { my : 'right top', at : 'right bottom' },
        close : function(event) {
            console.log(event);
        }
    });
});