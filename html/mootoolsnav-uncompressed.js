var MootoolsNav = new Class({

	Implements: [Options],
	Binds: ['startTimer', 'clearTimer', 'hideMenu'],

	options: {
		level: 0,
		trigger: 'mouseover',
		delay: 1500
	},

	activeIndex: -1,

	initialize: function(container, options) {

		this.setOptions(options);

		this.container = document.id(container);
		this.togglers = this.container.getElements(('.level_' + (this.options.level+1) + ' > li.submenu'));
		this.elements = this.togglers.getFirst('ul');

		this.togglers.each( function(el, i) {
			if (el.hasClass('active') || el.hasClass('trail'))
				this.activeIndex = i;
		}.bind(this));

		this.accordion = new Accordion(this.togglers, this.elements, {
			show: this.activeIndex,
			trigger: this.options.trigger,
			onActive: this.clearTimer
		});

		if (this.options.trigger == 'click') {
			this.togglers.getFirst('a,span').addEvent('click', function(e) {e.preventDefault()});
		}
		else if (this.options.trigger == 'mouseenter') {
			this.togglers.addEvents({'mouseleave':this.startTimer, 'mouseenter':this.clearTimer});
		}
	},

	startTimer: function() {
		this.clearTimer();
		this.timer = this.hideMenu.delay(this.options.delay);
	},

	clearTimer: function() {
		clearTimeout(this.timer);
	},

	hideMenu: function() {
		this.accordion.display(this.activeIndex);
	}
});