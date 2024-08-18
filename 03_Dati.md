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
### Lezione 3
# I dati
## &nbsp;

---
## Obiettivi di apprendimento

<span style="display:block; height:50px;"></span>

- Saper definire cos'e' un dato
- Conoscere le differenze tra i diversi tipi di dati
- Saper pianificare una raccolta dati 

---

<span style="display:block; height:200px;"></span>

## &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dato $\longleftrightarrow$ informazione

---
## Le fonti dei dati

<span style="display:block; height:50px;"></span>

* Rilevazioni periodiche
* Sondaggi
* Esperimenti
* Fonti esterne

<!-- FIXME 
Ogni ospedale o struttura ambulatoriale o assistenziale raccoglie, per controllare il proprio funzionamento dati amministrativi (HAD) 

Informazioni che non sono presenti nei rilevamenti. Per esempio nelle SDO non si dice come uno sia arrivato in clinica

Alcuni dati non possono essere raccolti con dei semplici sondaggi. Per esempio se volessimo sapere quale terapia e' meglio per curare la depressione
-->

---
## Raccogliamo dei dati?

&nbsp;&nbsp;&nbsp;&nbsp;
<br/>

<center>
<img src="./img/data/study_questions.png" img height="300px" border="4px"/>
</center>


<!-- Vediamo come si passa dalla fase "Problem" alla fase "Planning" -->


---
## Raccogliamo dei dati?

- Quali dati raccogliere? 

<center>
<img src="./img/data/study_questions.png" img height="300px" border="4px"/>
</center>

<style>
  #countdown_think {
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  #countdown_think.running {
    background-color: green;
  }
  #countdown_think.finished {
    background-color: red;
  }
</style>

<div align="right"> Think &nbsp;&nbsp;&nbsp; <button id="countdown_think"></button></div>

<script>
<!--
const countdown_think = document.getElementById("countdown_think");
const seconds_think = 120; // seconds_think
let timeLeft_think = seconds_think;
let timerInterval_think = null;

function formatTime_think(seconds_think) {
  const minutes = Math.floor(seconds_think / 60);
  const remainingseconds_think = seconds_think % 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_think).padStart(2, '0')}`;
}

function updateButton_think() {
  countdown_think.textContent = formatTime_think(timeLeft_think);
}

function startTimer_think() {
  if (timerInterval_think === null) {
    countdown_think.classList.add('running');
    countdown_think.classList.remove('finished');
    timerInterval_think = setInterval(() => {
      if (timeLeft_think > 0) {
        timeLeft_think--;
        updateButton_think();
      } else {
        clearInterval(timerInterval_think);
        timerInterval_think = null;
        countdown_think.classList.remove('running');
        countdown_think.classList.add('finished');
        countdown_think.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_think();
  }
}

function pauseTimer_think() {
  clearInterval(timerInterval_think);
  timerInterval_think = null;
  countdown_think.classList.remove('running');
}

function resetTimer_think() {
  timeLeft_think = seconds_think;
  updateButton_think();
  countdown_think.classList.remove('finished');
  countdown_think.classList.remove('running');
  timerInterval_think = null;
}

countdown_think.addEventListener("click", () => {
  if (countdown_think.classList.contains('finished')) {
    resetTimer_think();
  } else {
    startTimer_think();
  }
});

updateButton_think();
-->
</script>

<!-- Think -->

---
## Raccogliamo dei dati?

- Quali dati raccogliere? 

<center>
<img src="./img/data/study_questions.png" img height="300px" border="4px"/>
</center>

<style>
  #countdown_pair {
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  #countdown_pair.running {
    background-color: green;
  }
  #countdown_pair.finished {
    background-color: red;
  }
</style>

<div align="right"> Pair &nbsp;&nbsp;&nbsp; <button id="countdown_pair"></button></div>

<script>
<!--
const countdown_pair = document.getElementById("countdown_pair");
const seconds_pair = 180; // seconds_pair
let timeLeft_pair = seconds_pair;
let timerInterval_pair = null;

function formatTime_pair(seconds_pair) {
  const minutes = Math.floor(seconds_pair / 60);
  const remainingseconds_pair = seconds_pair % 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_pair).padStart(2, '0')}`;
}

function updateButton_pair() {
  countdown_pair.textContent = formatTime_pair(timeLeft_pair);
}

function startTimer_pair() {
  if (timerInterval_pair === null) {
    countdown_pair.classList.add('running');
    countdown_pair.classList.remove('finished');
    timerInterval_pair = setInterval(() => {
      if (timeLeft_pair > 0) {
        timeLeft_pair--;
        updateButton_pair();
      } else {
        clearInterval(timerInterval_pair);
        timerInterval_pair = null;
        countdown_pair.classList.remove('running');
        countdown_pair.classList.add('finished');
        countdown_pair.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_pair();
  }
}

function pauseTimer_pair() {
  clearInterval(timerInterval_pair);
  timerInterval_pair = null;
  countdown_pair.classList.remove('running');
}

function resetTimer_pair() {
  timeLeft_pair = seconds_pair;
  updateButton_pair();
  countdown_pair.classList.remove('finished');
  countdown_pair.classList.remove('running');
  timerInterval_pair = null;
}

countdown_pair.addEventListener("click", () => {
  if (countdown_pair.classList.contains('finished')) {
    resetTimer_pair();
  } else {
    startTimer_pair();
  }
});

updateButton_pair();
-->
</script>

<!-- Pair -->
---
## Raccogliamo dei dati?

- Quali dati raccogliere? 

<center>
<img src="./img/data/study_questions.png" img height="300px" border="4px"/>
</center>

<style>
  #countdown_share {
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  #countdown_share.running {
    background-color: green;
  }
  #countdown_share.finished {
    background-color: red;
  }
</style>

<div align="right"> Share &nbsp;&nbsp;&nbsp; <button id="countdown_share"></button></div>

<script>
<!--
const countdown_share = document.getElementById("countdown_share");
const seconds_share = 300; // seconds_share
let timeLeft_share = seconds_share;
let timerInterval_share = null;

function formatTime_share(seconds_share) {
  const minutes = Math.floor(seconds_share / 60);
  const remainingseconds_share = seconds_share % 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_share).padStart(2, '0')}`;
}

function updateButton_share() {
  countdown_share.textContent = formatTime_share(timeLeft_share);
}

function startTimer_share() {
  if (timerInterval_share === null) {
    countdown_share.classList.add('running');
    countdown_share.classList.remove('finished');
    timerInterval_share = setInterval(() => {
      if (timeLeft_share > 0) {
        timeLeft_share--;
        updateButton_share();
      } else {
        clearInterval(timerInterval_share);
        timerInterval_share = null;
        countdown_share.classList.remove('running');
        countdown_share.classList.add('finished');
        countdown_share.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_share();
  }
}

function pauseTimer_share() {
  clearInterval(timerInterval_share);
  timerInterval_share = null;
  countdown_share.classList.remove('running');
}

function resetTimer_share() {
  timeLeft_share = seconds_share;
  updateButton_share();
  countdown_share.classList.remove('finished');
  countdown_share.classList.remove('running');
  timerInterval_share = null;
}

countdown_share.addEventListener("click", () => {
  if (countdown_share.classList.contains('finished')) {
    resetTimer_share();
  } else {
    startTimer_share();
  }
});

updateButton_share();
-->
</script>

<!-- Share -->
---
## Raccogliamo dei dati?

- Quali dati raccogliere?
- In che formato?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :pushpin: &nbsp;&nbsp;&nbsp;  Esempio: eta'

---
## Raccogliamo dei dati?

- Quali dati raccogliere?
- In che formato?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :pushpin: &nbsp;&nbsp;&nbsp; Esempio: eta'
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Data di nascita + data visita

---
## Raccogliamo dei dati?

- Quali dati raccogliere?
- In che formato?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :pushpin: &nbsp;&nbsp;&nbsp; Esempio: eta'
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Data di nascita + data visita
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Quanti hanni hai?

---
## Raccogliamo dei dati?

- Quali dati raccogliere?
- In che formato?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :pushpin: &nbsp;&nbsp;&nbsp;  Esempio: eta'
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Data di nascita + data visita
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Quanti hanni hai?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - A quale di queste fasce d'eta' appartieni?

---
## I tipi di dati

<span style="display:block; height:1px;"></span>

<img src="./img/data/variables.png" img height="450px" align="right" border="0px"/>

<!-- Andiamo a dividere i dati in variabili quantitative (o numeriche) o qualitative (o categorighe) 

Numeriche: 
- continue (altezza, peso, BMI, temperatura corporea)
- discrete (numero di pazienti ammessi in PS)

Categoriche si dividono in 2 classi
- Nominali (categorie che non possono essere ordinate) -> due categorie binarie (diabete si/no), piu' categorie (gruppo sanguigno)
- Ordinali (categorie che non possono essere ordinate) -> dati che rappresentano categorie ordinate (giudizi scolastici ("Insufficiente", "Sufficiente", "Buono", "Ottimo:"), "Sottopeso", "Normopeso" ...) -->

---
### Esercizio #1

<div class="columns">
<div>

:question: &nbsp;&nbsp;&nbsp; Di che tipo sono i dati 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in questa tabella?

<span style="display:block; height:200px;"></span>

<style>
  #countdown_exercise {
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  #countdown_exercise.running {
    background-color: green;
  }
  #countdown_exercise.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise"></button>

<script>
<!--
const countdown_exercise = document.getElementById("countdown_exercise");
const seconds_exercise = 120; // seconds_exercise
let timeLeft_exercise = seconds_exercise;
let timerInterval_exercise = null;

function formatTime_exercise(seconds_exercise) {
  const minutes = Math.floor(seconds_exercise / 60);
  const remainingseconds_exercise = seconds_exercise % 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise).padStart(2, '0')}`;
}

function updateButton_exercise() {
  countdown_exercise.textContent = formatTime_exercise(timeLeft_exercise);
}

function startTimer_exercise() {
  if (timerInterval_exercise === null) {
    countdown_exercise.classList.add('running');
    countdown_exercise.classList.remove('finished');
    timerInterval_exercise = setInterval(() => {
      if (timeLeft_exercise > 0) {
        timeLeft_exercise--;
        updateButton_exercise();
      } else {
        clearInterval(timerInterval_exercise);
        timerInterval_exercise = null;
        countdown_exercise.classList.remove('running');
        countdown_exercise.classList.add('finished');
        countdown_exercise.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise();
  }
}

function pauseTimer_exercise() {
  clearInterval(timerInterval_exercise);
  timerInterval_exercise = null;
  countdown_exercise.classList.remove('running');
}

function resetTimer_exercise() {
  timeLeft_exercise = seconds_exercise;
  updateButton_exercise();
  countdown_exercise.classList.remove('finished');
  countdown_exercise.classList.remove('running');
  timerInterval_exercise = null;
}

countdown_exercise.addEventListener("click", () => {
  if (countdown_exercise.classList.contains('finished')) {
    resetTimer_exercise();
  } else {
    startTimer_exercise();
  }
});

updateButton_exercise();
-->
</script>


<div style="font-size: 50%">
	
Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/data/Table1_covered.png" img height="550px" border="4px"/>
</center>

</div>
</div>

<!-- 
Dopo che lo hanno fatto, farli votare e discutere

Lactate dehydrogenase, dichotomized according to the upper limit of normal for each centre.
-->
 
---
### Esercizio #1 -- Soluzione

<div class="columns">
<div>

:question: &nbsp;&nbsp;&nbsp; Di che tipo sono i dati 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in questa tabella?

<span style="display:block; height:280px;"></span>

<div style="font-size: 50%">
	
Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/data/Table1_covered_solutions.png" img height="550px" border="4px"/>
</center>

</div>
</div>

<!-- Sesso: Binaria
Eta'/BMI: continua
BRAF: binaria
Metastatic stage: Ordinale
ECOG score: ordinale (o fully active  5 morto, 4 completamente disabile, 3 capable of only limited selfcare)
ICI teraphy: categorico (con piu' categorie) 
N: discreto

Lactate dehydrogenase, dichotomized according to the upper limit of normal for each centre.
-->

------

<span style="display:block; height:200px;"></span>

## &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dato $\longleftrightarrow$ variabile

<!-- Le caratteristiche di una popolazione che differiscono da individuo a
individuo sono chiamate variabili (sesso, altezza, numero dei battiti
cardiaci, titolo di studio, età,…) 

the inevitable differences that occur between measurements or observations, some of which may be explained by known factors, and the remainder attributed to random noise.

-->

---
### Exercizio #2

<div style="font-size: 85%">

:question: &nbsp;&nbsp;&nbsp; Il sesso e' una variabile categorica dicotomica

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; c) Servono piu' elementi per decidere

:question: &nbsp;&nbsp;&nbsp; Il numero di figli e' una variabile quantitativa discreta 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; c) Servono piu' elementi per decidere

:question: &nbsp;&nbsp;&nbsp; L'indice di massa corporea (BMI) e' una variabile qualitativa 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;multi-categoria

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; c) Servono piu' elementi per decidere

</div>

<style>
  #countdown_exercise_2{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_2.running {
    background-color: green;
  }
  #countdown_exercise_2.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_2"></button>

<script>
<!--
const countdown_exercise_2= document.getElementById("countdown_exercise_2");
const seconds_exercise_2= 120; // seconds_exercise_2
let timeLeft_exercise_2= seconds_exercise_2;
let timerInterval_exercise_2= null;

function formatTime_exercise_2(seconds_exercise_2) {
  const minutes = Math.floor(seconds_exercise_2/ 60);
  const remainingseconds_exercise_2= seconds_exercise_2% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_2).padStart(2, '0')}`;
}

function updateButton_exercise_2() {
  countdown_exercise_2.textContent = formatTime_exercise_2(timeLeft_exercise_2);
}

function startTimer_exercise_2() {
  if (timerInterval_exercise_2=== null) {
    countdown_exercise_2.classList.add('running');
    countdown_exercise_2.classList.remove('finished');
    timerInterval_exercise_2= setInterval(() => {
      if (timeLeft_exercise_2> 0) {
        timeLeft_exercise_2--;
        updateButton_exercise_2();
      } else {
        clearInterval(timerInterval_exercise_2);
        timerInterval_exercise_2= null;
        countdown_exercise_2.classList.remove('running');
        countdown_exercise_2.classList.add('finished');
        countdown_exercise_2.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_2();
  }
}

function pauseTimer_exercise_2() {
  clearInterval(timerInterval_exercise_2);
  timerInterval_exercise_2= null;
  countdown_exercise_2.classList.remove('running');
}

function resetTimer_exercise_2() {
  timeLeft_exercise_2= seconds_exercise_2;
  updateButton_exercise_2();
  countdown_exercise_2.classList.remove('finished');
  countdown_exercise_2.classList.remove('running');
  timerInterval_exercise_2= null;
}

countdown_exercise_2.addEventListener("click", () => {
  if (countdown_exercise_2.classList.contains('finished')) {
    resetTimer_exercise_2();
  } else {
    startTimer_exercise_2();
  }
});

updateButton_exercise_2();
-->
</script>


---
### Exercizio #2 -- Soluzione

<div style="font-size: 85%">

:question: &nbsp;&nbsp;&nbsp; Il sesso e' una variabile categorica dicotomica

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero &nbsp; :white_check_mark:  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; c) Servono piu' elementi per decidere

:question: &nbsp;&nbsp;&nbsp; Il numero di figli e' una variabile quantitativa discreta 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero &nbsp; :white_check_mark:  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; c) Servono piu' elementi per decidere

:question: &nbsp;&nbsp;&nbsp; L'indice di massa corporea (BMI) e' una variabile qualitativa 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;multi-categoria

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp; :white_check_mark:  &nbsp;&nbsp;&nbsp;&nbsp; c) Servono piu' elementi per decidere 
 
</div>


---
## Ma quali dati sono stati raccolti ?

<br/>

<center>
<img src="./img/data/study_questions.png" img height="300px" border="4px"/>
</center>

[Table 1](https://www.thelancet.com/action/showFullTableHTML?isHtml=true&tableId=tbl0001&pii=S2589-5370%2820%2930168-1)
[Table 2](https://www.thelancet.com/action/showFullTableHTML?isHtml=true&tableId=tbl0002&pii=S2589-5370%2820%2930168-1)

---
### Cosa abbiamo imparato in questa lezione?

<span style="display:block; height:10px;"></span>

<div style="font-size: 90%">

- Che l'informazione (o dati) viene codificata in variabili, la cui variabilita' (differenze che vediamo tra le osservazioni) dipende sia da fattori conosciuti o conoscibili sia da effetti casuali (random noise)
- Come pianificare la raccolta dati a partire da un problema
- Le differenze tra i diversi tipi di dati

</div>