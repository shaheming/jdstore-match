// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap/alert
//= require bootstrap/dropdown
//= require_tree .
//= require bootstrap-sprockets

$(function() {

	//nav affix
	$('#BB-nav').affix({
		offset: {
			top: $('header').height()
		}
	});

	//search form
	//close on escape key
	$(document).keyup(function(e) {
		if (e.which === 27) {
			closeSearch();
		}
	});

	function closeSearch() {
		$('.search-field').val('');
		$('.search-field').hide();
		$('#search-nav').removeClass('active');
		$('#search-nav button[type="reset"]').hide();
		$('#account-nav').show();
	    $('#account-menu').show();
	}

	function openSearch() {
		$('#search-nav').addClass('active');
		$('.search-field').show();
		$('#search-nav button[type="reset"]').show();
		$('#account-nav').hide();
		$('#account-menu').attr('style','display:none !important');
		
	}

	function closeAccount() {
		$('.account-field').hide();
		$('#account-nav button[type="reset"]').hide();
		$('#account-nav').show();
		$('#account-nav').removeClass('active');
		$('#search-nav').show();

	}

	function openAccount() {
		$('.account-field').show().css("display","inline");
		$('#search-nav').hide();
		$('#account-nav button[type="reset"]').show();
		$('#account-nav').addClass('active');
	}
	// Show Search if form is not active or input search empty
	$('#search-nav button[type="submit"]').click(function(event) {
		if (!$("#search-nav").hasClass("active") || $('.search-field').val() === '') {
			event.preventDefault();
			openSearch();
		}
	});

	//close form
	$('#search-nav button[type="reset"]').click(function(event) {
		//event.preventDefault();
		closeSearch();
	});

	$('#account-nav button').click(function(event) {
		if (!$("#account-nav").hasClass("active")) {
			event.preventDefault();
			openAccount();
		}
	});

	//close form
	$('#account-nav button[type="reset"]').click(function(event) {
		//event.preventDefault();
		closeAccount();
	});
});