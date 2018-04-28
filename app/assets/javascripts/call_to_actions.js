
function copyLink(){

  let copyLink = document.getElementById("link-source");
  console.log(copyLink);
  copyLink.focus();
  copyLink.select();
  document.execCommand("Copy");
  alert("Copied the link: " + copyLink.innerHTML);
}

// AJAX to update change in brand logo in CTA create form

 $("#brand-input").change(function(){
      console.log("AJAX ready");
      $.ajax({
          url: "/translate?brand_id=" + this.value,
          method: "post",
          success: function(data){
            $("#brand-output")[0].src = data.url
            $("#cta-new-live-name")[0].innerHTML = data.name
            console.log(data);
            console.log("hallo");
          },
          error: function(error){
            console.log("There is an Error!");
          },
      }); 
  });


// AJAX to update CTA click count

 $("#short-link-page-button").click(function(){
        console.log("AJAX ready");
        $.ajax({
          url:"/counter?cta_id=" + this.value,
          method: "post",
          success: function(data){
            console.log(data.response);
          },
          error: function(error){
            console.log("There is an error adding count!");
            console.log(error);
          },
        });
 });

 
 // Functions for form to create new CTA 

function descLive(){
    let desc_output = document.getElementById("desc-output");
    let desc_input = document.getElementById("desc-input").value;
    desc_output.innerHTML = desc_input;
  }

  function btnTextLive(){
    let btn_text_output = document.getElementById("btn-text-output");
    let btn_text_input = document.getElementById("btn-text-input").value;
    btn_text_output.innerHTML = btn_text_input;
  }

  function buttonLinkLive(){
    let button_link_live = document.getElementById("button-link-live");
    let button_link_input = document.getElementById("button-link-input").value;
    button_link_live.href = button_link_input;
  }

  function positionLive(){
    let position_live = document.getElementById("cta-container");
    let position_input = document.getElementById("position-input").value;
    if (position_input == "left") {
      position_live.style.justifyContent = "flex-start";
    } else if (position_input == "right") {
      position_live.style.justifyContent = "flex-end";
    } else if (position_input == "middle") {
      position_live.style.justifyContent = "center";
    } 
  }

// Background customization functions

  function bgoutlineTypeLive(){
    let bg_outline_type_live = document.getElementById("cta-new-live");
    let bg_outline_type_input = document.getElementById("bg-outline-type-input").value;
    bg_outline_type_live.style.outlineStyle = bg_outline_type_input;
  }

  function bgoutlineSizeLive(){
    let bg_outline_size_live = document.getElementById("cta-new-live");
    let bg_outline_size_input = document.getElementById("bg-outline-size-input").value;
    bg_outline_size_live.style.outlineWidth = bg_outline_size_input + 'px';
  }
  

  function bgRadiusLive(){
    let bg_radius_output = document.getElementById("bg-border-radius-output");
    let bg_radius_input = document.getElementById("bg-border-radius-input").value;
    let bg_radius_live = document.getElementById("cta-new-live");
    bg_radius_output.innerHTML = bg_radius_input;
    bg_radius_live.style.borderRadius = bg_radius_input + "px";
  }

  function bgColorLive(){
    let bg_color_output = document.getElementById("bg-color-output");
    let bg_color_input = document.getElementById("bg-color-input").value;
    let bg_color_live = document.getElementById("cta-new-live");
    bg_color_output.innerHTML = bg_color_input;
    bg_color_live.style.backgroundColor = bg_color_input;
  }

  function bgoutlineColorLive(){
    let bg_outline_color_output = document.getElementById("bg-outline-color-output");
    let bg_outline_color_input = document.getElementById("bg-outline-color-input").value;
    let bg_outline_color_live = document.getElementById("cta-new-live");
    bg_outline_color_output.innerHTML = bg_outline_color_input;
    bg_outline_color_live.style.outlineColor = bg_outline_color_input;
  }


// Button customization function
  function btnColorLive(){
    let btn_color_output = document.getElementById("btn-color-output");
    let btn_color_input = document.getElementById("btn-color-input").value;
    let btn_live = document.getElementById("btn-text-output");
    btn_color_output.innerHTML = btn_color_input;
    btn_live.style.backgroundColor = btn_color_input;
  } 

  function btnRadiusLive(){
    let btn_radius_output = document.getElementById("btn-border-radius-output");
    let btn_radius_input = document.getElementById("btn-border-radius-input").value;
    let btn_live = document.getElementById("btn-text-output");
    btn_radius_output.innerHTML = btn_radius_input;
    btn_live.style.borderRadius = btn_radius_input + "px";
  }

  function btnoutlineTypeLive(){
    let btn_outline_type_live = document.getElementById("btn-text-output");
    let btn_outline_type_input = document.getElementById("btn-outline-type-input").value;
    btn_outline_type_live.style.outlineStyle = btn_outline_type_input;
  }

  function btnoutlineSizeLive(){
    let btn_outline_size_live = document.getElementById("btn-text-output");
    let btn_outline_size_input = document.getElementById("btn-outline-size-input").value;
    btn_outline_size_live.style.outlineWidth = btn_outline_size_input + 'px';
  }

  
  function btnoutlineColorLive(){
    let btn_outline_color_output = document.getElementById("btn-outline-color-output");
    let btn_outline_color_input = document.getElementById("btn-outline-color-input").value;
    let btn_outline_color_live = document.getElementById("btn-text-output");
    btn_outline_color_output.innerHTML = btn_outline_color_input;
    btn_outline_color_live.style.outlineColor = btn_outline_color_input; 
  }
  