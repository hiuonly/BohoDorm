$(function () {
    $(":file").change(function () {
        if (this.files && this.files[0]) {
            var reader = new FileReader();

            reader.onload = imageIsLoaded;
            reader.readAsDataURL(this.files[0]);
        }
    });
});

function imageIsLoaded(e) {
    $('#myImg').attr('src', e.target.result);
};

var state = false;
function toggle(){
    if(state){
        document.getElementById("password").setAttribute("type","password");
        document.getElementById("eye").className = "fa fa-eye";
        state = false;
    }else{
        document.getElementById("password").setAttribute("type","text");
        document.getElementById("eye").className = "fa fa-eye-slash";
        state = true;
    }
}