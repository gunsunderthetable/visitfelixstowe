$(window).load(function() {
	$('.ticker').easyTicker({
		direction: 'down',
		easing: 'swing',
		speed: 'slow',
		interval: 4000,
		height: 'auto',
		visible: 2,
		mousePause: 1,
		controls: {
			up: '',
			down: '',
			toggle: '',
			playText: 'Play',
			stopText: 'Stop'
		}
	});
});
