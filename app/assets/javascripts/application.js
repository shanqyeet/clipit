// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require turbolinks
//= require_tree .
//


$(".click-target").click(function(event){
	event.preventDefault();
	if ($(event.target).closest(".dashboard-clip-list").siblings().first()[0].style.display == ""){
		$(event.target).closest(".dashboard-clip-list").siblings().css("display","flex");		
	} else if ($(event.target).closest(".dashboard-clip-list").siblings().first()[0].style.display == "flex"){
		$(event.target).closest(".dashboard-clip-list").siblings().css("display","");
	}
});

$(".copy-to-clip").click(function(event){
  event.preventDefault();
  let copyLink = $(event.target).closest(".dashboard-clip-list").find("#link-source")[0];
  console.log(copyLink);
  copyLink.focus();
  copyLink.select();
  document.execCommand("Copy");
  alert("Copied the link: " + copyLink.innerHTML);
});

$(".clip-buttons").click(function(event){
	event.preventDefault();
	console.log("Clip Buttons: Prevented Default");
});

//   alert("test");

// function descLive(){
//     let desc_out = document.getElementById("desc-output");
//     let desc = document.getElementById("desc-input").value;
//     desc_out.innerHTML = desc;
//   }

//   function btnTextLive(){
//     let btn_text_output = document.getElementById("btn-text-output");
//     let btn_text_input = document.getElementById("btn-text-input").value;
//     btn_text_output.innerHTML = btn_text_input;
//   }

//   function pageLinkLive(){
//     let page_link_live = document.getElementById("page-link-live");
//     let page_link_input = document.getElementById("page-link-input").value;
//     page_link_live.href = page_link_input;
//   }

//   function positionLive(){
//     let position_live = document.getElementById("cta-new-live");
//     let page_link_input = document.getElementById("position-input").value;
//     if (page_link_input == "left") {
//       position_live.style.left = "32.5%";
//     } else if (page_link_input == "right") {
//       position_live.style.left = "57.5%";
//     } else if (page_link_input == "middle") {
//       position_live.style.left = "45.5%";
//     } 
//   }

// // Background customization functions

//   function bgBorderTypeLive(){
//     let bg_border_type_live = document.getElementById("cta-new-live");
//     let bg_border_type_input = document.getElementById("bg-border-type-input").value;
//     console.log(bg_border_type_input);
//     bg_border_type_live.style.borderType = bg_border_type_input;
//   }

//   function bgBorderSizeLive(){
//     let bg_border_size_live = document.getElementById("cta-new-live");
//     let bg_border_size_input = document.getElementById("bg-border-size-input").value;
//     console.log(bg_border_size_input);
//     bg_border_size_live.style.borderWidth = br_border_size_input;
//   }
  

//   function bgRadiusLive(){
//     let bg_radius_output = document.getElementById("bg-border-radius-output");
//     let bg_raidus_input = document.getElementById("bg-border-radius-input").value;
//     bg_radius_output.innerHTML = bg_raidus_input;
//   }

//   function bgColorLive(){
//     let bg_color_output = document.getElementById("bg-color-output");
//     let bg_color_input = document.getElementById("bg-color-input").value;
//     let bg_color_live = document.getElementById("cta-new-live");
//     bg_color_output.innerHTML = bg_color_input;
//     bg_color_live.style.backgroundColor = bg_color_input;
//   }

//   function bgBorderColorLive(){
//     let bg_border_color_output = document.getElementById("bg-border-color-output");
//     let bg_border_color_input = document.getElementById("bg-border-color-input").value;
//     bg_border_color_output.innerHTML = bg_border_color_input;
//   }


// // Button customization function
//   function btnColorLive(){
//     let btn_color_output = document.getElementById("btn-color-output");
//     let btn_color_input = document.getElementById("btn-color-input").value;
//     btn_color_output.innerHTML = btn_color_input;
//   } 

//   function btnRadiusLive(){
//     let btn_radius_output = document.getElementById("btn-border-radius-output");
//     let btn_raidus_input = document.getElementById("btn-border-radius-input").value;
//     btn_radius_output.innerHTML = btn_raidus_input;
//   }
  
//   function btnBorderColorLive(){
//     let btn_border_color_output = document.getElementById("btn-border-color-output");
//     let btn_border_color_input = document.getElementById("btn-border-color-input").value;
//     btn_border_color_output.innerHTML = btn_border_color_input;
//   }
//   