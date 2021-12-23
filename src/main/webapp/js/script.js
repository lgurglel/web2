$(document).ready(function () {
    let x = undefined;
    let y = undefined;

    const svgSize = 300;
    const rValue = 50;

    function doRequest(x, y, r) {
        $.ajax({
            type: "GET",
            url: "controller",
            data: {
                "x": x,
                "y": y,
                "r": r
            },
            success: function () {
                document.location.reload();
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert("Server Side Validation!");
            }
        });
    }

    $('svg').mousedown(function (e) {
        let r = $('select[name=r-select]').val()
        if (r) {
            const position = $('.svg-wrapper').offset();
            const rowX = e.pageX - position.left;
            const rowY = e.pageY - position.top;
            const x = (((r / 50) * (svgSize / 2 - rowX) * -1) / 2).toFixed(1);
            const y = (((r / 50) * (svgSize / 2 - rowY)) / 2).toFixed(1);
            const calcX = x / r * rValue + svgSize / 2;
            const calcY = svgSize / 2 - y / r * rValue;

            $('#target-dot').attr({
                'cx': x.toString(),
                'cy': y.toString(),
            })
            doRequest(x, y, r);

        } else alert("Выберите R")
    })

    $('.checkbox').click(function () {
        $('body input:checkbox').prop('checked', false);
        $(this).prop('checked', true);
        x = Number($(this).attr('id'));
    });

    $('#check-btn').on('click', function () {
        let r = $('select[name=r-select]').val()
        let value = $('#input-y').val().replace(',', '.').trim();
        if (value !== '') {
            value = Number(value);
            if (value > -3 && value < 5) {
                y = value;
            } else {
                alert("Введен некорректный Y");
                $('#input-y').val('');
                return;
            }
        }

        if (x !== undefined && y !== undefined && r !== undefined) {
            doRequest(x, y, r);
        } else {
            alert("Не все поля заполнены");
        }
    })
})
