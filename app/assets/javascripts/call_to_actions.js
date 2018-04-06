
function descLive(){
    let desc_out = document.getElementById("desc-output");
    let desc = document.getElementById("desc-input").value;
    desc_out.innerHTML = desc;
  }

  function btnTextLive(){
    let btn_text_output = document.getElementById("btn-text-output");
    let btn_text_input = document.getElementById("btn-text-input").value;
    btn_text_output.innerHTML = btn_text_input;
  }

  function pageLinkLive(){
    let page_link_live = document.getElementById("page-link-live");
    let page_link_input = document.getElementById("page-link-input").value;
    page_link_live.href = page_link_input;
  }

  function positionLive(){
    let position_live = document.getElementById("cta-new-live");
    let page_link_input = document.getElementById("position-input").value;
    if (page_link_input == "left") {
      position_live.style.left = "32.5%";
    } else if (page_link_input == "right") {
      position_live.style.left = "57.5%";
    } else if (page_link_input == "middle") {
      position_live.style.left = "45.5%";
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
  