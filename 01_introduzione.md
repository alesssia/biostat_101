---
marp: true
theme: gaia
_class: lead
paginate: false


style: |
  .columns {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 1rem;
  }

---

### Lezione 1 
# Introduzione
## &nbsp;

---
## Informazioni generali

<span style="display:block; height:1px;"></span>

<div style="font-size: 85%">

<div class="columns">
<div>

- **Chi?**
    - Alessia Visconti alessia.visconti@unito.it

- **Cosa?**
    - 16h di lezione (circa)
    - 8h di laboratorio (circa)

- **Dove?**
    - Aula 9

</div>
<div>



- **Quando?**
    - Ogni lunedi' mattina (4h)

- **Cosa (portare a lezione)?**
    - calcolatrice
    - fogli (da consegnare)    
    - laptop (per il laboratorio)

- **Com'e' (l'esame)?**
    - quiz a risposta chiusa (1h)
    - con formulario e calcolatrice

</div>
</div>

<!-- Pesante in lunedi', interrompero' con esercizi -->

---
## Come fare domande/commenti

<!-- <span style="display:block; height:10px;"></span> -->

<!-- <img src="./img/introduction/qr_code.png" img height="300px" align="right" border="4px"/> -->

<span style="display:block; height:60px;"></span>

- Alzando la mano durante la lezione
- All'inizio/fine della lezione e nelle pause
- Prendendo appuntamento via email (alessia.visconti@unito.it)
- (Sperimentale) via note anonime

---
## Cosa pensate di conoscere?

<span style="display:block; height:60px;"></span>

- Scrivete tutto quello che vi viene in mente quando dico "statistica"

<span style="display:block; height:160px;"></span>

<!-- Vorrei che queste lezioni siano il meno noioso possibile, quindi mi serve capire cosa gia' sapete e cosa vorreste imparare.  
Inoltre, quando apprendiamo, lo facciamo andando a connettere i nuovi concetti con quelli che conosciamo gia'.
Quindi e' importante che i concetti che conosciamo siano corretti -->

<style>
  #countdown_queston_1{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_queston_1.running {
    background-color: green;
  }
  #countdown_queston_1.finished {
    background-color: red;
  }
</style>

<button id="countdown_queston_1"></button>

<script>
<!--
const countdown_queston_1= document.getElementById("countdown_queston_1");
const seconds_queston_1= 300; // seconds_queston_1
let timeLeft_queston_1= seconds_queston_1;
let timerInterval_queston_1= null;

function formatTime_queston_1(seconds_queston_1) {
  const minutes = Math.floor(seconds_queston_1/ 60);
  const remainingseconds_queston_1= seconds_queston_1% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_queston_1).padStart(2, '0')}`;
}

function updateButton_queston_1() {
  countdown_queston_1.textContent = formatTime_queston_1(timeLeft_queston_1);
}

function startTimer_queston_1() {
  if (timerInterval_queston_1=== null) {
    countdown_queston_1.classList.add('running');
    countdown_queston_1.classList.remove('finished');
    timerInterval_queston_1= setInterval(() => {
      if (timeLeft_queston_1> 0) {
        timeLeft_queston_1--;
        updateButton_queston_1();
      } else {
        clearInterval(timerInterval_queston_1);
        timerInterval_queston_1= null;
        countdown_queston_1.classList.remove('running');
        countdown_queston_1.classList.add('finished');
        countdown_queston_1.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_queston_1();
  }
}

function pauseTimer_queston_1() {
  clearInterval(timerInterval_queston_1);
  timerInterval_queston_1= null;
  countdown_queston_1.classList.remove('running');
}

function resetTimer_queston_1() {
  timeLeft_queston_1= seconds_queston_1;
  updateButton_queston_1();
  countdown_queston_1.classList.remove('finished');
  countdown_queston_1.classList.remove('running');
  timerInterval_queston_1= null;
}

countdown_queston_1.addEventListener("click", () => {
  if (countdown_queston_1.classList.contains('finished')) {
    resetTimer_queston_1();
  } else {
    startTimer_queston_1();
  }
});

updateButton_queston_1();
-->
</script>


---
## Perche' siamo qui?

<span style="display:block; height:360px;"></span>

<style>
  #countdown_queston_2{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_queston_2.running {
    background-color: green;
  }
  #countdown_queston_2.finished {
    background-color: red;
  }
</style>

<button id="countdown_queston_2"></button>

<script>
<!--
const countdown_queston_2= document.getElementById("countdown_queston_2");
const seconds_queston_2= 300; // seconds_queston_2
let timeLeft_queston_2= seconds_queston_2;
let timerInterval_queston_2= null;

function formatTime_queston_2(seconds_queston_2) {
  const minutes = Math.floor(seconds_queston_2/ 60);
  const remainingseconds_queston_2= seconds_queston_2% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_queston_2).padStart(2, '0')}`;
}

function updateButton_queston_2() {
  countdown_queston_2.textContent = formatTime_queston_2(timeLeft_queston_2);
}

function startTimer_queston_2() {
  if (timerInterval_queston_2=== null) {
    countdown_queston_2.classList.add('running');
    countdown_queston_2.classList.remove('finished');
    timerInterval_queston_2= setInterval(() => {
      if (timeLeft_queston_2> 0) {
        timeLeft_queston_2--;
        updateButton_queston_2();
      } else {
        clearInterval(timerInterval_queston_2);
        timerInterval_queston_2= null;
        countdown_queston_2.classList.remove('running');
        countdown_queston_2.classList.add('finished');
        countdown_queston_2.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_queston_2();
  }
}

function pauseTimer_queston_2() {
  clearInterval(timerInterval_queston_2);
  timerInterval_queston_2= null;
  countdown_queston_2.classList.remove('running');
}

function resetTimer_queston_2() {
  timeLeft_queston_2= seconds_queston_2;
  updateButton_queston_2();
  countdown_queston_2.classList.remove('finished');
  countdown_queston_2.classList.remove('running');
  timerInterval_queston_2= null;
}

countdown_queston_2.addEventListener("click", () => {
  if (countdown_queston_2.classList.contains('finished')) {
    resetTimer_queston_2();
  } else {
    startTimer_queston_2();
  }
});

updateButton_queston_2();
-->
</script>


---
## Comprereste questo colluttorio?


<span style="display:block; height:10px;"></span>

<center>
<img src="./img/introduction/colluttorio.png" img height="480px" border="4px"/>
</center>

---
## Cosa ci dice questo grafico?

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/introduction/autism.png" img height="420px" border="4px"/>
</center>

<div style="font-size: 50%" align="right">
<br/>Jensen, C.M., et al, Time Trends Over 16 Years in Incidence-Rates of Autism Spectrum Disorders Across the Lifespan Based on Nationwide Danish Register Data. J Autism Dev Disord (2014). doi:10.1007/s10803-014-2053-6
<div>

---
## Siamo d'accordo?

<span style="display:block; height:60px;"></span>

<center>
<img src="./img/introduction/autism_epidemic.png" img height="220px" border="4px"/>
</center>

---
## Come prosegue questo grafico?

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/introduction/lefthandness_covered.png" img height="480px" border="4px"/>
</center>

---
## Cosa ci dice questo grafico?

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/introduction/lefthandness.png" img height="480px" border="4px"/>
</center>

---
## Educazione civica, 1935 (ca)

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/introduction/lefthandess_2.jpeg" img height="480px" border="4px"/>
</center>

---
## Correlation is not causation

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/introduction/storks.png" img height="420px" border="4px"/>
</center>

<div style="font-size: 50%" align="right">
<br/>
Sies, H. A new parameter for sex education. Nature 332, 495 (1988). doi:10.1038/332495a0
<div>


---
## Correlation is not causation

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/introduction/correlation_meme.jpg" img height="420px" border="4px"/>
</center>

---
## Perche' siamo qui?

<span style="display:block; height:10px;"></span>

<div class="columns"> 
<div>

- perché i "numeri" (o meglio, il modo in cui sono presentati) a volte ingannano!

</div>
<div>

</div>
</div>

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/introduction/correlation.png" img height="200px" border="4px"/>
</center>

---
## Chi e' questa persona?

<div class="columns">
<div>

</div>
<div>

<center>
<img src="./img/introduction/220px-Florence_Nightingale_(H_Hering_NPG_x82368).jpg" img height="500px" align="right" border="4px"/>
</center>

</div>
</div>

---
## Florence Nightingale

<div class="columns"> 
<div>

</div>
<div>

<center>
<img src="./img/introduction/220px-Florence_Nightingale_(H_Hering_NPG_x82368).jpg" img height="500px" align="right" border="4px"/>
</center>

</div>
</div>

<!-- Florence Nightingale era un'infermiera britannica che e' considerata la madre dell'infermieristica come la intendiamo oggi, un titolo che si e' guadagnato durante la guerra di Crimea, quando era sovrintendente di un ospedale di Instambul. 

Appena arrivata ad Instabul, Florence, si accorge subito delle pessime condizioni di sovraffollameto e pulizia, ma oltre a cercare di mettere una pezza, pulendo e disinfettando tutto con le sue infermiere, si mette anche a raccogliere dati, soprattutto sulle cause di morte dei soldati. -->

---
## Florence Nightingale

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/introduction/Nightingale-mortality.png" img height="500px"  border="4px"/>
</center>

<!-- E questi dati non solo li raccoglie, ma li riassume e presenta anche sotto forma di polar diagram, che spedisce regolarmente al governo britannico. 

Come si legge il grafico. Blu = malattie infettive, Rosso = ferite riportate in battaglia, nero = altre cause

E cosa concludiamo? 
Che migliorare le condizioni igenice (pulizia, luce, ventilazione, ...) degli ospedali, aumenta le possibilita' di salvare il paziente. 

E se questo e' ovvio oggi, lo dobbiamo alla sua abilita' nel raccogliere e presentare i dati, e nel prendere delle decisioni basate su di essi. Insomma, grazie alla statistica. -->

---
## Perche' siamo qui?

<span style="display:block; height:30px;"></span>

<div class="columns"> 
<div>

- perché i "numeri" (o meglio, il modo in cui sono presentati) a volte ingannano!
- perche' i "numeri" (e il modo in cui sono presentati) possono fare la differenza

</div>
<div>

<center>
<img src="./img/introduction/Hygiene-Signs.png" img height="400px" align="right" b0order="0px"/>
</center>

</div>
</div>

---
## Perche' siamo qui?

<span style="display:block; height:30px;"></span>

- per imparare a leggere, comprendere e analizzare criticamente documenti scientifici o divulgativi
- per essere in grado di effettuare ricerche che comportino l’acquisizione, l’elaborazione e l’analisi di dati

---
## Cos'e' la statistica?

<span style="display:block; height:30px;"></span>

* La raccolta, organizzazione, sintesi, e analisi dei dati <br/> &nbsp;&nbsp;&nbsp; &rarr; statistica *Descrittiva* 

* Processo mediante il quale vengono effettuate deduzioni su
grandi gruppi sulla base di dati raccolti in gruppi piu' ristretti  <br/> &nbsp;&nbsp;&nbsp; &rarr; statistica *Inferenziale* 

<!-- - Individuare in maniera efficiente i tratti importanti delle informazioni che sono state raccolte

- Partire dal particolare per capire come le informazioni si possono estendere alla totalità -->

---
## Cosa vorreste imparare?

<span style="display:block; height:60px;"></span>

- Scrivete almeno 3 argomenti che vorreste imparare e/o approfondire

<span style="display:block; height:160px;"></span>


<style>
  #countdown_queston_3{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_queston_3.running {
    background-color: green;
  }
  #countdown_queston_3.finished {
    background-color: red;
  }
</style>

<button id="countdown_queston_3"></button>

<script>
<!--
const countdown_queston_3= document.getElementById("countdown_queston_3");
const seconds_queston_3= 300; // seconds_queston_3
let timeLeft_queston_3= seconds_queston_3;
let timerInterval_queston_3= null;

function formatTime_queston_3(seconds_queston_3) {
  const minutes = Math.floor(seconds_queston_3/ 60);
  const remainingseconds_queston_3= seconds_queston_3% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_queston_3).padStart(2, '0')}`;
}

function updateButton_queston_3() {
  countdown_queston_3.textContent = formatTime_queston_3(timeLeft_queston_3);
}

function startTimer_queston_3() {
  if (timerInterval_queston_3=== null) {
    countdown_queston_3.classList.add('running');
    countdown_queston_3.classList.remove('finished');
    timerInterval_queston_3= setInterval(() => {
      if (timeLeft_queston_3> 0) {
        timeLeft_queston_3--;
        updateButton_queston_3();
      } else {
        clearInterval(timerInterval_queston_3);
        timerInterval_queston_3= null;
        countdown_queston_3.classList.remove('running');
        countdown_queston_3.classList.add('finished');
        countdown_queston_3.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_queston_3();
  }
}

function pauseTimer_queston_3() {
  clearInterval(timerInterval_queston_3);
  timerInterval_queston_3= null;
  countdown_queston_3.classList.remove('running');
}

function resetTimer_queston_3() {
  timeLeft_queston_3= seconds_queston_3;
  updateButton_queston_3();
  countdown_queston_3.classList.remove('finished');
  countdown_queston_3.classList.remove('running');
  timerInterval_queston_3= null;
}

countdown_queston_3.addEventListener("click", () => {
  if (countdown_queston_3.classList.contains('finished')) {
    resetTimer_queston_3();
  } else {
    startTimer_queston_3();
  }
});

updateButton_queston_3();
-->
</script>

---

## Perche' siamo qui?

<span style="display:block; height:40px;"></span>

> *Se mi rimanesse una sola ora di vita vorrei trascorrerla assistendo ad una lezione di statistica perchè mi sembrerebbe durare per sempre*

<div align="right">
(un&#601; Student&#601;)
</div>