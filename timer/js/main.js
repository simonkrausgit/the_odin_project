$(function(){

    $timer = $('#timer');
    $timer.html('<span id="hours">00</span><span class="colon">:</span><span id="minutes">00</span><span class="colon">:</span><span id="seconds">00</span><span id="milliseconds"></span>');
    $hours = $timer.find('#hours');
    $minutes = $timer.find('#minutes');
    $seconds = $timer.find('#seconds');
    $milliseconds = $timer.find('#milliseconds');
    hours = 0;
    minutes = 0;
    seconds = 0;
    milliseconds = 0;
    var last = new Date().getTime();
    elapsed = 0;
    function display_time(time_int, string){
        time_string = '' +time_int;
        if (time_int<10){
            time_string = '0' + time_int;
        }
        string.html(time_string);
    }
    /*var time = new Date().getTime()

    hours = time
    display_time(hours,0,0)*/
    window.setInterval(function()
    {
        milliseconds++;
        if (milliseconds >=10){
            milliseconds = 0;
            seconds ++;
            display_time(seconds,$seconds);
        }
        if (seconds >60){
            seconds = 0;
            minutes ++;
            display_time(seconds,$seconds);
            display_time(minutes,$minutes);
        }
        if (minutes >=60){
            minutes = 0;
            hours ++;
            display_time(minutes,$minutes);
            display_time(hours,$hours);
        }
        $milliseconds.html(milliseconds);
    }, 100);

    window.setInterval(function(){
        var time = new Date().getTime() - last;
        elapsed = Math.floor(time / 100) / 10;
        console.log(elapsed)
        last = new Date().getTime();
    },5000);
});
