function updateClock() {
    //moment() means I'm calling moment.js
    var now = moment(),
        second = now.seconds();
    document.getElementById("time").innerText = "Time : " + now.hours() + "h : " + now.minutes() + "m : " + now.seconds() + "s";

    //updates the clock every 1000ms (1s)
    var t = setInterval(updateClock, 1000);
}