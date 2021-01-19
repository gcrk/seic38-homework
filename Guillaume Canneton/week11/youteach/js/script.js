let size = 200
let topPosition = 125
$(document).ready(function() {
  $(window).on('scroll', () => {
    const scrollTop = $(window).scrollTop();
    const scrollMax = ($(document).height() - (window.innerHeight))
    const ratio = scrollTop / scrollMax
    $('#bubble').css('top', topPosition + ratio * (window.innerHeight - 300))
    $('#bubble').css('left', 125 + (200 - (size - ratio * 160))/2)
    $('#bubble').css('width', size - ratio * 160)
    $('#bubble').css('height', size - ratio * 160)
    // $('#boat').css('top', 120 + Math.random()*10)
    $('#boat').css('left', 500 + ratio*1500)
    $('#fish').css('top', 600 + ratio*1000)
    $('#fish').css('left', 400 + ratio*200)
    $('#octo').css('top', 1500 - ratio*1400)
    $('#octo').css('left', 300 + ratio*1000)
    $('#sub').css('top', 750 + ratio*1700)
    $('#sub').css('left', 900 - ratio*900)
    $('#inflate').on('click', () => {
      size = 360
      topPosition = 25
      $('#bubble').css('top', topPosition + ratio * (window.innerHeight - 300))
      $('#bubble').css('left', 125 + (200 - (size - ratio * 160))/2)
      $('#bubble').css('width', size - ratio * 160)
      $('#bubble').css('height', size - ratio * 160)
    })
  });
})
