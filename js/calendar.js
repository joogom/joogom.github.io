$(document).ready(function () {
    var calendarEl = $('#calendar')[0];
    var calendar = new FullCalendar.Calendar(calendarEl, {
        expandRows: true, // 화면에 맞게 높이 재설정
        headerToolbar: {
            left: 'prev,next today',
            center: 'title',
            right: 'dayGridMonth,listYear'
        },
        initialView: 'dayGridMonth',
        locale: 'ko',
        // 이벤트 
        events: [
            {
                title: '10시 ~ 4시, 서코',
                start: '2023-10-07',
            },
            {
                title: '10시 ~ 4시, 서코',
                start: '2023-10-08',
            },
            {
                title: '1시 ~ 6시, 화성행궁, 여민각, 매향교, 방화수류정',
                start: '2023-10-21',
            },
            {
                title: '3시 ~ 5시, 할로윈_루나스 스튜디오',
                start: '2023-11-04',
            },
            {
                title: '1시 ~ 4시, 크리스마스_루나스 스튜디오',
                start: '2023-11-18',
            },
            {
                title: '2시 ~ 5시, 분당 야탑 자연광',
                start: '2023-11-27',
            },
            {
                title: 'AGF',
                start: '2023-12-02',
            },
            {
                title: 'AGF?',
                start: '2023-12-03',
            },
            {
                title: '빙 크리스마스',
                start: '2023-12-07',
            },
            {
                title: '아랑_컨셉 정하기 대화',
                start: '2023-12-15',
            },
            {
                title: '서코',
                start: '2023-12-16',
            },
            {
                title: '서코?',
                start: '2023-12-17',
            },
            {
                title: '빙님과 대화중_기모노?',
                start: '2023-12-21',
            },
            {
                title: '빙님과 대화중_기모노?',
                start: '2023-12-28',
            },
            {
                title: '아랑_컨셉 미정',
                start: '2023-12-23',
            },
            {
                title: '니지산지 언젠지 부정확',
                start: '2024-04-01',
            },
        ]
    });
    // 캘린더 랜더링
    calendar.render();
});