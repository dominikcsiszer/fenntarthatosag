const kepekDiv = document.querySelectorAll(".fotosKepei .kepek")

kep(15, "joszaa", 0)
kep(18, "fehersz", 1)
kep(11, "gallr", 2)
function kep(meret, fotos, kepekIndex) {
    for (let i = 1; i <= meret; i++) {
        let folder = "assets/img/ruhak/"+fotos+"/ruha"+i+"/kicsi/";
        console.log(folder)
        $.ajax({
            url : folder,
            success: function (data) {
                    $(data).find("a").attr("href", function (i, val) {
                        console.log(val)
                        if( val.match(/\.(jpe?g|png|gif)$/) ) { 
                            kepekDiv[kepekIndex].innerHTML +=  "<img src='"+ folder + val +"'>";
                        } 
                    })
                }
            })
    }
}
