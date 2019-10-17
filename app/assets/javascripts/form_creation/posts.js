// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
	// validations for new post
	$("#new_post").validate({
		rules: {
			title: {
				required: true,
      	maxlength: 30
			},
			description: "required",
			created_by: {
				required: true,
      	maxlength: 30
			}, 
		},	
		messages: {
			title: {
				required: "Please enter title",
      	maxlength: "Please enter no more than 30 characters."
			},
			description: "Please enter description",
			created_by: {
				required: "Please enter created_by",
      	maxlength: "Please enter no more than 30 characters."
			},
		},	
	});
	// validations for edit post
	$(".edit_post").validate({
		rules: {
			title: {
				required: true,
      	maxlength: 30
			},
			description: "required",
			created_by: {
				required: true,
      	maxlength: 30
			},
		},	
		messages: {
			title: {
				required: "Please enter title",
      	maxlength: "Please enter no more than 30 characters."
			},
			description: "Please enter description",
			created_by: {
				required: "Please enter created_by",
      	maxlength: "Please enter no more than 30 characters."
			},
		},	
	});
	// Reset modal new form
	$(".close").click(function(){
		$("#new_post")[0].reset();
    var validator = $("#new_post").validate();
		validator.resetForm();
  });
  // Reset modal edit form
  $(".edit_close").click(function(){
    $(".edit_post")[0].reset();
    var validator = $(".edit_post").validate();
		validator.resetForm();
  });
  // when click on body, reset modal new form
  $('#add_post').on('hidden.bs.modal', function () {
  	$("#new_post")[0].reset();
   	var validator = $("#new_post").validate();
		validator.resetForm();
	});
	// when click on body, reset modal edit form
	$('.edit_post-form').on('hidden.bs.modal', function () {
   	$(".edit_post")[0].reset();
    var validator = $(".edit_post").validate();
		validator.resetForm();
	});
});