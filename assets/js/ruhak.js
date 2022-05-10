const kollekcioPanel = document.querySelector(".kollekciokPanel"),
startBtn = document.querySelectorAll(".startBtn button"),
ruhakPanel = document.querySelector(".ruhakPanel"),
ruhakImg = document.querySelector(".ruhakPanel img"),
ruhakTitle = document.querySelector(".ruhaTitle")

const file = "assets/json/ruhak.json"
var data = ""
function fetchData(files) {
    fetch(files).then(x => x.json()).then(d => data = d)
}
fetchData(file)

let ruha

startBtn.forEach(element => {
    element.onclick = ()=> {
        if(element.id == "zero")
            ruha = data.zero
        else
            ruha = data.kreativ
        kollekcioPanel.classList.add("activeKollekcio")
        ruhakPanel.classList.add("activeRuhak")
        showKollekcio(ruha)
    }
});

function showKollekcio(kollekcio) {
    let txt = ""
    kollekcio.forEach(element => {
        ruhakPanel.innerHTML += "<div class='ruha'>" +
         "<img src='"+element.kicsiKepek[0]+"' alt=''>" +
         "<p class='ruhaTervezo' onclick='ruhaNezet(this, "+element.id+")'>Tervező: "+element.tervezo+"</p>" +
         "</div>"
    })

}

function ruhaNezet(ruhaSelected, id) {
    console.log(ruha[id/2].tervezo)
}