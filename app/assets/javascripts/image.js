$(function(){
  $(document).on("change","#myImage", function (e) {
    console.log("a");
    var file = event.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(file){
      return function(e){
        $("#post-box__upload__image").attr("src", e.target.result);
        $("#post-box__upload__image").attr("title", file.name);
      };
    })(file);
    reader.readAsDataURL(file);
  });

  $(document).on("change","#myImage2", function (e) {
    console.log("a");
    var file = event.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(file){
      return function(e){
        $("#post-box__upload__image2").attr("src", e.target.result);
        $("#post-box__upload__image2").attr("title", file.name);
      };
    })(file);
    reader.readAsDataURL(file);
  });

  $(document).on("change","#myImage3", function (e) {
    console.log("a");
    var file = event.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(file){
      return function(e){
        $("#post-box__upload__image3").attr("src", e.target.result);
        $("#post-box__upload__image3").attr("title", file.name);
      };
    })(file);
    reader.readAsDataURL(file);
  });
});