$(document).ready(function () {

  // 예약상태에 따라 색상 변경
  $("td.specialTd:contains('예약완료')").css("color", "#0888D0");
  $("td.specialTd:contains('예약종료')").css("color", "green");

  // 예약번호 뽑아오기
  $('tbody tr').click(function () {
    var uniqeNo = $(this).find('.uniqeNo').text();
    console.log(uniqeNo);
  });

  $(function () {
    $('#datepicker1').daterangepicker({
      beforeShowDay: function (date) {
        return [(date.getDate() != 1)]
      },
      locale: {
        "separator": " ~ ",
        "format": 'YYYY-MM-DD',
        "applyLabel": "확인",
        "cancelLabel": "취소",
        "weekLabel": "주",
        "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
        "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
        "cancelLabel": "삭제"
      },
      ranges: {
        '오늘': [moment(), moment()],
        '어제': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
        '지난 1주일': [moment().subtract(6, 'days'), moment()],
        '최근 30일': [moment().subtract(29, 'days'), moment()],
        '이번달': [moment().startOf('month'), moment().endOf('month')],
        '저번달': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
      },
      "alwaysShowCalendars": true,
      showDropdowns: true,
      autoApply: true,
      singleDatePicker: false,

    }).on('cancel.daterangepicker', function (ev, picker) {
      $(ev.currentTarget).val('');
    });

  });


  $('.dateBtn').on('click', function () {
    let date = $('#datepicker1').val();
    let startDate = date.substr(0, 10);
    let endDate = date.slice(-10);
    console.log(date.substr(0, 10));
    console.log(date.slice(-10));
  });
  
});