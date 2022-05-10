const kollekcioPanel = document.querySelector(".kollekciokPanel"),
startBtn = document.querySelectorAll(".startBtn button"),
ruhakPanel = document.querySelector(".ruhakPanel"),
ruhakImg = document.querySelector(".ruhakPanel img"),
ruhakTitle = document.querySelector(".ruhaTitle")

startBtn[0].onclick = ()=> {
    kollekcioPanel.classList.add("activeKollekcio")
    ruhakPanel.classList.add("activeRuhak")
    showKollekcio(data.zero)
}

startBtn[1].onclick = ()=> {
    kollekcioPanel.classList.add("activeKollekcio")
    ruhakPanel.classList.add("activeRuhak")
    showKollekcio(data.kreativ)
}

const file = "assets/json/ruhak.json"
var data = ""
function fetchData(file) {
    fetch(file).then(x => x.json()).then(d => data = d)
}
fetchData(file)

function showKollekcio(kollekcio) {
    let txt = ""
    kollekcio.forEach(element => {
        ruhakPanel.innerHTML += "<div class='ruha'>"
        ruhakPanel.innerHTML += "<img src='"+element.kicsiKepek[0]+"' alt=''>"
        ruhakPanel.innerHTML += "<p>"+element.tervezo+"</p>"
        ruhakPanel.innerHTML += "</div>"
    
    });
}