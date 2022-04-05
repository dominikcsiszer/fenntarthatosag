var question = document.querySelector(".question"),
a1 = document.querySelector("#a1"),
a2 = document.querySelector("#a2"),
a3 = document.querySelector("#a3"),
quizStatus = document.querySelector(".quizStatus"),
nextBtn = document.querySelector(".quizNext"),
quizChoose = document.querySelector(".quizChoose"),
quiz = document.querySelector(".quiz"),
answers = document.querySelectorAll(".answer")

let file = "quiz/quiz.json", currQuiz = 0, helyes, osszKerdes

function fetchData(file) {
    fetch(file).then(x => x.json()).then(data => quizAdatok(data))
}
fetch(file).then(x => x.json()).then(data => quizAdatok(data))

function quizAdatok(info) {
    question.innerText = info.elso[currQuiz].kerdes
    a1.innerText = info.elso[currQuiz].a1
    a2.innerText = info.elso[currQuiz].a2
    a3.innerText = info.elso[currQuiz].a3
    helyes = info.elso[currQuiz].helyes
    osszKerdes = info.elso.length
    quizStatus.innerText = `${currQuiz+1}/${osszKerdes} kérdés`
}

function quizEllenorzes() {
    for (const btn of answers) {
        let answerText = btn.querySelector(".answerText")
            btn.addEventListener("click", () => {
                if(answerText.innerText == helyes) {
                    btn.classList.add("success")
                    nextBtn.removeAttribute("disabled")
                }
                else {
                    btn.classList.add("error")
                    nextBtn.removeAttribute("disabled")
                }
            })
        }
}

function nextQuiz(){
    currQuiz++
    if(currQuiz != osszKerdes) {
        fetchData(file)
        nextBtn.setAttribute("disabled", "")
        for (const btn of answers) {
            btn.classList.remove("success","error")
        }
        if (currQuiz+1 == osszKerdes) 
            nextBtn.value = "Vége"
    } else {
        window.location.reload()
    }
}

function startQuiz() {
    quizChoose.style.display = "none"
    quiz.style.display = "block"
}