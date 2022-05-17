const kollekcioPanel = document.querySelector(".kollekciokPanel"),
startBtn = document.querySelectorAll(".startBtn button"),
ruhakPanel = document.querySelector(".ruhakPanel"),
ruhaPanel = document.querySelector(".ruhaPanel"),
ruhakImg = document.querySelector(".ruhakPanel img"),
ruhakTitle = document.querySelector(".ruhaTitle"),
backBtn = document.querySelector(".backBtn")

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
        backBtn.classList.add("activeBtn")
        showKollekcio(ruha)
    }
});

backBtn.onclick = () => {
    kollekcioPanel.classList.remove("activeKollekcio")
    ruhakPanel.classList.remove("activeRuhak")
    ruhaPanel.classList.remove("activeRuha")
    backBtn.classList.remove("activeBtn")
}

function showKollekcio(kollekcio) {
    console.log(ruha)
    kollekcio.forEach(element => {
        console.log(element)
        ruhakPanel.innerHTML += "<div class='ruha' onclick='ruhaNezet("+element.id+")'>" +
         "<img src='"+element.kicsiKepek[0]+"' alt='Modell: "+element.modell+"'>" +
         "<p class='ruhaTervezo'>Tervező: "+element.tervezo+"</p>" +
         "</div>"
    })
}

function ruhaNezet(id) {
    let ruhaNezet = ruha[parseInt(id/2)]
    ruhakPanel.classList.remove("activeRuhak")
    ruhaPanel.classList.add("activeRuha")

    let txt = ""

    txt = "<div class='ruhaNezet'>"
    txt += "<h1 class='textAlign'>"+ruhaNezet.tervezo+" ruhája</h1>"
    txt += "<hr>"
    txt += "<p>"+ruhaNezet.szoveg+"</p>"
    txt += "<div class='ruhaKepek'>"
    ruhaNezet.kicsiKepek.forEach(element => {
        txt += "<img src='"+element+"' alt='Modell: '>"
    })
    txt += "</div>"
    txt += "<h3>Ruha adatai:</h3>"
    txt += "<p>Tervező: "+ruhaNezet.tervezo+"<br>"
    txt += "Fotós: "+ruhaNezet.fotosnev+"<br>"
    txt += "Modell: "+ruhaNezet.modell+"<br>"
    txt += "Kollekció: "+ruhaNezet.kollekcio+"</p>"
    txt += "</div>"
    ruhaPanel.innerHTML = txt
}