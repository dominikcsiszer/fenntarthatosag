const start = document.querySelector(".start"),
start_btn = document.querySelectorAll(".startBtn button"),
quiz_box = document.querySelector(".quizBox"),
quiz_title = quiz_box.querySelector(".title"),
result_box = document.querySelector(".resultBox"),
option_list = document.querySelector(".optionList")

var currQuiz

// TODO: Azok a kérdések jöjjenek elő amelyk gombra nyomott
start_btn[0].onclick = ()=>{
    start.classList.add("activeStart")
    quiz_box.classList.add("activeQuiz")
    currQuiz = data.elso
    showQuetions(0)
    queCounter(1) 
}
start_btn[1].onclick = ()=>{
    start.classList.add("activeStart")
    quiz_box.classList.add("activeQuiz")
    currQuiz = data.masodik
    showQuetions(0)
    queCounter(1) 
}
start_btn[2].onclick = ()=>{
    start.classList.add("activeStart")
    quiz_box.classList.add("activeQuiz")
    currQuiz = data.harmadik
    showQuetions(0)
    queCounter(1) 
}

let que_count = 0
let que_numb = 1
let userScore = 0


const restart_quiz = result_box.querySelector(".buttons .restart"),
quit_quiz = result_box.querySelector(".buttons .quit")


restart_quiz.onclick = ()=>{
    quiz_box.classList.add("activeQuiz")
    result_box.classList.remove("activeResult")
    que_count = 0
    que_numb = 1
    userScore = 0
    showQuetions(que_count)
    queCounter(que_numb)
    next_btn.classList.remove("show")
}


quit_quiz.onclick = ()=>{
    window.location.reload()
}

const next_btn = document.querySelector("footer .next_btn"),
bottom_ques_counter = document.querySelector("footer .total_que")


next_btn.onclick = ()=>{
    if(que_count < currQuiz.length - 1){ 
        que_count++
        que_numb++
        showQuetions(que_count)
        queCounter(que_numb)
        next_btn.classList.remove("show")
    }else{
        showResult()
    }
}

const file = "assets/json/quiz.json"
var data = ""
function fetchData(file, que_count) {
    fetch(file).then(x => x.json()).then(d => data = d)
}
fetchData(file, que_count)

// TODO: Random jöjjenek a kérdések és random legyen a sorrend
function showQuetions(index){
    const que_text = document.querySelector(".que_text")
    
    let que_tag = '<span>' + currQuiz[index].kerdes +'</span>'
    let option_tag = '<div class="option"><span>'+ currQuiz[index].v1 +'</span></div>'
    + '<div class="option"><span>'+ currQuiz[index].v2 +'</span></div>'
    + '<div class="option"><span>'+ currQuiz[index].v3 +'</span></div>'
    let quizTitle = ""
    if (currQuiz == data.elso)
        quizTitle = "Általános iskolásosoknak kvíz"
    else if (currQuiz == data.masodik)
        quizTitle = "Középiskolásoknak kvíz"
    else if (currQuiz == data.harmadik)
        quizTitle = "Fiatal felnőtteknek kvíz"
    que_text.innerHTML = que_tag
    option_list.innerHTML = option_tag
    quiz_title.innerHTML = quizTitle
    
    const option = option_list.querySelectorAll(".option")

    
    for(i=0; i < option.length; i++){
        option[i].setAttribute("onclick", "optionSelected(this, "+que_count+")")
    }
}

let tickIconTag = '<div class="icon tick"><i class="bx bx-plus"></i></div>'
let crossIconTag = '<div class="icon cross"><i class="bx bx-minus"></i></div>'


function optionSelected(answer, index){
    let userAns = answer.textContent
    let correcAns = currQuiz[index].helyes
    const allOptions = option_list.children.length 
    
    if(userAns == correcAns){ 
        userScore += 1
        answer.classList.add("correct")
        answer.insertAdjacentHTML("beforeend", tickIconTag)
    }else{
        answer.classList.add("incorrect")
        answer.insertAdjacentHTML("beforeend", crossIconTag)

        for(i=0; i < allOptions; i++){
            if(option_list.children[i].textContent == correcAns){ 
                option_list.children[i].setAttribute("class", "option correct")
                option_list.children[i].insertAdjacentHTML("beforeend", tickIconTag)
            }
        }
    }
    for(i=0; i < allOptions; i++){
        option_list.children[i].classList.add("disabled")
    }
    next_btn.classList.add("show")
}

// TODO: SQL-be mentse az eddigi adott válaszokat és átlag alapján értékeljen is
function showResult(){
    quiz_box.classList.remove("activeQuiz")
    result_box.classList.add("activeResult")
    const scoreText = result_box.querySelector(".score_text")
    if (userScore > 3){ 
        
        let scoreTag = '<span>Pontjaid: <p>'+ userScore +'</p> / <p>'+ currQuiz.length +'</p></span>'
        scoreText.innerHTML = scoreTag
    }
    else if(userScore > 1){ 
        let scoreTag = '<span>Pontjaid: <p>'+ userScore +'</p> / <p>'+ currQuiz.length +'</p></span>'
        scoreText.innerHTML = scoreTag
    }
    else{ 
        let scoreTag = '<span>Pontjaid: only <p>'+ userScore +'</p> / <p>'+ currQuiz.length +'</p></span>'
        scoreText.innerHTML = scoreTag
    }
}

function queCounter(index){
    let totalQueCounTag = '<span><p>'+ index +'</p> / <p>'+ currQuiz.length +'</p> kérdés</span>'
    bottom_ques_counter.innerHTML = totalQueCounTag
}