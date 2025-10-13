---
theme: gaia
_class: lead
paginate: false
marp: true
backgroundColor: #FAFAFA
color: black

style: |
  .columns {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 1rem;
  }

---

<style>
section {
 font-family:  'Atkinson Hyperlegible', 'Helvetica', 'Arial', sans-serif;
}
</style>

<!-- ### Lezione 4 -->
# La statistica descrittiva
## (Parte I: Le variabili categoriche)
## &nbsp;

---
## Obiettivi di apprendimento

<span style="display:block; height:50px;"></span>

- Riassumere i dati categorici numericamente e graficamente
- Interpretare tabelle e figure in articoli scientifici

---
## Le fasi della ricerca

<!-- <span style="display:block; height:2px;"></span> -->

<center>
<img src="./img/descriptive/PPDAC_qualitative.png" img height="500px" border="0px"/>
</center>

<div style="font-size: 50%" align="right">

Spiegelhalter, D., *The Art of Statistics: Learning From Data*, Pelican, 2019 (Edizione Italiana: Einaudi, 2020)

</div>

---
## Di che tipo di variabile si tratta?

<div class="columns">
<div>

:question: &nbsp;&nbsp;&nbsp; Di che tipo sono i dati
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in questa tabella?

<span style="display:block; height:270px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, *Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

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

---
## Perch&eacute; ci interessa?

<div class="columns">
<div>

<span style="display:block; height:120px;"></span>

<center>
<img src="./img/descriptive/Table1_caption.png" img height="120px" border="4px"/>
</center>

<span style="display:block; height:100px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, *Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/descriptive/Table1.png" img height="550px" border="4px"/>
</center>

</div>
</div>

<!-- Perche' il modo in cui andiamo prima a presentare e poi ad analizzare una variabile dipende dal suop tipo.

Numeriche media/SD, categoriche N/% --> 

---
## Variabili categoriche

<div class="columns">
<div>

<span style="display:block; height:40px;"></span>

<div style="font-size: 80%">

**Tabella di frequenza**

- frequenza assoluta (numero)
- frequenza relativa o proporzione (percentuale)

</div>

<span style="display:block; height:100px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, *Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/descriptive/Table1_var_categoriche.png" img height="550px" border="4px"/>
</center>

</div>
</div>

<!-- AssolutaL: numero di volte in cui una certa modalità si manifesta nel campione  
possono assumere valori compresi tra 0 e n (dimensione del campione)
la loro somma è pari a n

Relativa: rapporto tra la frequenza assoluta con cui si manifesta una modalità e la numerosità totale del campione
possono assumere valori compresi tra 0 e 1 (o 0 e 100)
la loro somma è pari a 1

Frequenze assolute e relative forniscono le stesse informazioni sulla distribuzione. 

-->

---
### Esercizio #1

<div class="columns">
<div>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Quale sesso &egrave; predominante?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</div>

<span style="display:block; height:270px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, *Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<span style="display:block; height:100px;"></span>

<center>
<img src="./img/descriptive/Table1_sex.png" img height="250px" border="4px"/>
</center>

<style>
  #countdown_exercize_1{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercize_1.running {
    background-color: green;
  }
  #countdown_exercize_1.finished {
    background-color: red;
  }
</style>

<span style="display:block; height:30px;"></span>

<button id="countdown_exercize_1"></button>

<script>
<!--
const countdown_exercize_1= document.getElementById("countdown_exercize_1");
const seconds_exercize_1= 10; // seconds_exercize_1
let timeLeft_exercize_1= seconds_exercize_1;
let timerInterval_exercize_1= null;

function formatTime_exercize_1(seconds_exercize_1) {
  const minutes = Math.floor(seconds_exercize_1/ 60);
  const remainingseconds_exercize_1= seconds_exercize_1% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercize_1).padStart(2, '0')}`;
}

function updateButton_exercize_1() {
  countdown_exercize_1.textContent = formatTime_exercize_1(timeLeft_exercize_1);
}

function startTimer_exercize_1() {
  if (timerInterval_exercize_1=== null) {
    countdown_exercize_1.classList.add('running');
    countdown_exercize_1.classList.remove('finished');
    timerInterval_exercize_1= setInterval(() => {
      if (timeLeft_exercize_1> 0) {
        timeLeft_exercize_1--;
        updateButton_exercize_1();
      } else {
        clearInterval(timerInterval_exercize_1);
        timerInterval_exercize_1= null;
        countdown_exercize_1.classList.remove('running');
        countdown_exercize_1.classList.add('finished');
        countdown_exercize_1.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercize_1();
  }
}

function pauseTimer_exercize_1() {
  clearInterval(timerInterval_exercize_1);
  timerInterval_exercize_1= null;
  countdown_exercize_1.classList.remove('running');
}

function resetTimer_exercize_1() {
  timeLeft_exercize_1= seconds_exercize_1;
  updateButton_exercize_1();
  countdown_exercize_1.classList.remove('finished');
  countdown_exercize_1.classList.remove('running');
  timerInterval_exercize_1= null;
}

countdown_exercize_1.addEventListener("click", () => {
  if (countdown_exercize_1.classList.contains('finished')) {
    resetTimer_exercize_1();
  } else {
    startTimer_exercize_1();
  }
});

updateButton_exercize_1();
-->
</script>

</div>
</div>

<!-- Le frequenze relative: facilitano la percezione del peso delle modalità -->

---

### Esercizio #1  -- Soluzione

<div class="columns">
<div>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Quale sesso &egrave; predominante?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</div>

<span style="display:block; height:270px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, *Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<span style="display:block; height:100px;"></span>

<center>
<img src="./img/descriptive/Table1_sex_soluzione.png" img height="250px" border="4px"/>
</center>

</div>
</div>

<!-- Le frequenze relative: facilitano la percezione del peso delle modalità -->

---
## Tabelle di contingenza

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/descriptive/Cbt_sex_abstract.png" img height="350px" border="4px"/>
</center>

<span style="display:block; height:10px;"></span>

<div style="font-size: 50%" align="right">
 
Espie. CA, *et al.*, *Randomized Clinical Effectiveness Trial of Nurse-Administered Small-Group Cognitive Behavior Therapy for Persistent Insomnia in General Practice*, Sleep, 2007, doi:10.1186/s12885-023-10511-3

</div>

<!-- SPIEGARE CHE SI TRATTA DI UN RCT E COSA DIAVOLO E' UN RCT -- Useremo questo studio per costruire e capire cos'e' una tabelle di contingenza 

 `e una tabella a doppia entrata (con righe e colon- ne) in cui si riportano le frequenze congiunte di due variabili.

 Per convenzione, le righe rappresentano le variabili di esposizione e le colonne le variabili di esito. In un RCT l'esposizione è il gruppo di trattamento.

-->

---
### Esercizio #2

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Completa la tabella con le corrette frequenze assolute usando le
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   informazioni contenute nell'abstract

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/Cbt_sex_abstract_numbers.png" img height="100px" border="4px"/>
</center>

<center>

|  | Maschi | Femmine | Totale |
| ----: | ----- | ---- | ----|
| CBT |  |  |  |
| Standard |  |  |  |
| Totale |  |  |  |

</center>

</div>

<style>
  #countdown_exercize_2{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercize_2.running {
    background-color: green;
  }
  #countdown_exercize_2.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercize_2"></button>

<script>
<!--
const countdown_exercize_2= document.getElementById("countdown_exercize_2");
const seconds_exercize_2= 120; // seconds_exercize_2
let timeLeft_exercize_2= seconds_exercize_2;
let timerInterval_exercize_2= null;

function formatTime_exercize_2(seconds_exercize_2) {
  const minutes = Math.floor(seconds_exercize_2/ 60);
  const remainingseconds_exercize_2= seconds_exercize_2% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercize_2).padStart(2, '0')}`;
}

function updateButton_exercize_2() {
  countdown_exercize_2.textContent = formatTime_exercize_2(timeLeft_exercize_2);
}

function startTimer_exercize_2() {
  if (timerInterval_exercize_2=== null) {
    countdown_exercize_2.classList.add('running');
    countdown_exercize_2.classList.remove('finished');
    timerInterval_exercize_2= setInterval(() => {
      if (timeLeft_exercize_2> 0) {
        timeLeft_exercize_2--;
        updateButton_exercize_2();
      } else {
        clearInterval(timerInterval_exercize_2);
        timerInterval_exercize_2= null;
        countdown_exercize_2.classList.remove('running');
        countdown_exercize_2.classList.add('finished');
        countdown_exercize_2.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercize_2();
  }
}

function pauseTimer_exercize_2() {
  clearInterval(timerInterval_exercize_2);
  timerInterval_exercize_2= null;
  countdown_exercize_2.classList.remove('running');
}

function resetTimer_exercize_2() {
  timeLeft_exercize_2= seconds_exercize_2;
  updateButton_exercize_2();
  countdown_exercize_2.classList.remove('finished');
  countdown_exercize_2.classList.remove('running');
  timerInterval_exercize_2= null;
}

countdown_exercize_2.addEventListener("click", () => {
  if (countdown_exercize_2.classList.contains('finished')) {
    resetTimer_exercize_2();
  } else {
    startTimer_exercize_2();
  }
});

updateButton_exercize_2();
-->
</script>

<!--  `e una tabella a doppia entrata (con righe e colon- ne) in cui si riportano le frequenze congiunte di due variabili. 

La CBT (in italiano: terapia cognitivo-comportamentale) è una forma di psicoterapia "focalizzata sul problema" e "orientata all'azione". Essa si concentra sul cambiamento delle distorsioni cognitive (come pensieri, convinzioni e atteggiamenti) e sui comportamenti ad esse associati, per migliorare la regolazione emotiva[1][2] e sviluppare adeguate strategie di coping. 
-->

---
### Esercizio #2 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Completa la tabella con le corrette frequenze assolute usando le
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   informazioni contenute nell'abstract

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/Cbt_sex_abstract_numbers.png" img height="100px" border="4px"/>
</center>

<center>

|  | Maschi | Femmine | Totale |
| ----: | ----- | ---- | ----|
| CBT |  | 72 |  107 |
| Standard |  | 65 | 94 |
| Totale |  |  | 201 |

</center>

</div>

---
### Esercizio #2 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Completa la tabella con le corrette frequenze assolute usando le
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   informazioni contenute nell'abstract

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/Cbt_sex_abstract_numbers.png" img height="100px" border="4px"/>
</center>

<center>

|  | Maschi | Femmine | Totale |
| ----: | ----- | ---- | ----|
| CBT | 35 | 72 |  107 |
| Standard | 29 | 65 | 94 |
| Totale |  |  |  201 |

</center>

</div>

---
### Esercizio #2 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Completa la tabella con le corrette frequenze assolute usando le
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   informazioni contenute nell'abstract

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/Cbt_sex_abstract_numbers.png" img height="100px" border="4px"/>
</center>

<center>

|  | Maschi | Femmine | Totale |
| ----: | ----- | ---- | ----|
| CBT | 35 | 72 |  107 |
| Standard | 29 | 65 | 94 |
| Totale | 64 | 137 |  201 |

</center>

</div>

<div style="font-size: 80%" align="right">

Abbiamo completato la nostra Tabella di Contingenza (con frequenze assolute)

</div>

<!--  `e una tabella a doppia entrata (con righe e colon- ne) in cui si riportano le frequenze congiunte di due variabili.  -->

---
### Esercizio #3

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Completa la tabella con le corrette frequenze relative<sup>*</sup> usando la tabella
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; di contingenza con le frequenze assolute appena calcolate

<span style="display:block; height:1px;"></span>


<center>

|  | Maschi | Femmine | Totale |
| ----: | ----- | ---- | ----|
| CBT | 35 | 72 |  107 |
| Standard | 29 | 65 | 94 |
| Totale | 64 | 137 |  201 |

</center>

</div>

<span style="display:block; height:60px;"></span>

<style>
  #countdown_exercize_3{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercize_3.running {
    background-color: green;
  }
  #countdown_exercize_3.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercize_3"></button>

<script>
<!--
const countdown_exercize_3= document.getElementById("countdown_exercize_3");
const seconds_exercize_3= 120; // seconds_exercize_3
let timeLeft_exercize_3= seconds_exercize_3;
let timerInterval_exercize_3= null;

function formatTime_exercize_3(seconds_exercize_3) {
  const minutes = Math.floor(seconds_exercize_3/ 60);
  const remainingseconds_exercize_3= seconds_exercize_3% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercize_3).padStart(2, '0')}`;
}

function updateButton_exercize_3() {
  countdown_exercize_3.textContent = formatTime_exercize_3(timeLeft_exercize_3);
}

function startTimer_exercize_3() {
  if (timerInterval_exercize_3=== null) {
    countdown_exercize_3.classList.add('running');
    countdown_exercize_3.classList.remove('finished');
    timerInterval_exercize_3= setInterval(() => {
      if (timeLeft_exercize_3> 0) {
        timeLeft_exercize_3--;
        updateButton_exercize_3();
      } else {
        clearInterval(timerInterval_exercize_3);
        timerInterval_exercize_3= null;
        countdown_exercize_3.classList.remove('running');
        countdown_exercize_3.classList.add('finished');
        countdown_exercize_3.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercize_3();
  }
}

function pauseTimer_exercize_3() {
  clearInterval(timerInterval_exercize_3);
  timerInterval_exercize_3= null;
  countdown_exercize_3.classList.remove('running');
}

function resetTimer_exercize_3() {
  timeLeft_exercize_3= seconds_exercize_3;
  updateButton_exercize_3();
  countdown_exercize_3.classList.remove('finished');
  countdown_exercize_3.classList.remove('running');
  timerInterval_exercize_3= null;
}

countdown_exercize_3.addEventListener("click", () => {
  if (countdown_exercize_3.classList.contains('finished')) {
    resetTimer_exercize_3();
  } else {
    startTimer_exercize_3();
  }
});

updateButton_exercize_3();
-->
</script>

<div style="font-size: 70%">

<sup>*</sup> Per convenzione si calcolano le frequenze per riga

</div>

---
### Esercizio #3 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Completa la tabella con le corrette frequenze relative<sup>*</sup> usando la tabella
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; di contingenza con le frequenze assolute appena calcolate

<span style="display:block; height:1px;"></span>

<center>

|  | Maschi | Femmine | Totale |
| ----: | ----- | ---- | ----|
| CBT | 35 (35/107) | 72 (72/107) |  107 |
| Standard | 29 (29/94) | 65 (65/94) | 94 |
| Totale | 64 (64/201) | 137 (137/201) |  201 |

</center>

</div>

<span style="display:block; height:80px;"></span>

<div style="font-size: 70%">

<sup>*</sup> Per convenzione si calcolano le frequenze per riga

</div>


---
### Esercizio #3 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Completa la tabella con le corrette frequenze relative<sup>*</sup> usando la tabella
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; di contingenza con le frequenze assolute appena calcolate

<span style="display:block; height:1px;"></span>


<center>

|  | Maschi | Femmine | Totale |
| ----: | ----- | ---- | ----|
| CBT | 35 (32.7%) | 72 (67.3%) |  107 |
| Standard | 29 (30.9%) | 65 (69.1%) | 94 |
| Totale | 64 (31.8%) | 137 (68.2%) |  201 |


</center>

</div>

<span style="display:block; height:80px;"></span>

<div style="font-size: 70%">

<sup>*</sup> Per convenzione si calcolano le frequenze per riga

</div>

---
### Esercizio #4

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; La proporzione di uomini e donne nel campione &egrave; simile?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; c) Servono pi&ugrave; elementi per decidere

:question: &nbsp;&nbsp;&nbsp; La proporzione di uomini nei due bracci &egrave; simile?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; c) Servono pi&ugrave; elementi per decidere

<center>

|  | Maschi | Femmine | Totale |
| ----: | ----- | ---- | ----|
| CBT | 35 (32.7%) | 72 (67.3%) |  107 |
| Standard | 29 (30.9%) | 65 (69.1%) | 94 |
| Totale | 64 (31.8%) | 137 (68.2%) |  201 |

</center>

<div>

<style>
  #countdown_exercise_4{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_4.running {
    background-color: green;
  }
  #countdown_exercise_4.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_4"></button>

<script>
<!--
const countdown_exercise_4= document.getElementById("countdown_exercise_4");
const seconds_exercise_4= 30; // seconds_exercise_4
let timeLeft_exercise_4= seconds_exercise_4;
let timerInterval_exercise_4= null;

function formatTime_exercise_4(seconds_exercise_4) {
  const minutes = Math.floor(seconds_exercise_4/ 60);
  const remainingseconds_exercise_4= seconds_exercise_4% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_4).padStart(2, '0')}`;
}

function updateButton_exercise_4() {
  countdown_exercise_4.textContent = formatTime_exercise_4(timeLeft_exercise_4);
}

function startTimer_exercise_4() {
  if (timerInterval_exercise_4=== null) {
    countdown_exercise_4.classList.add('running');
    countdown_exercise_4.classList.remove('finished');
    timerInterval_exercise_4= setInterval(() => {
      if (timeLeft_exercise_4> 0) {
        timeLeft_exercise_4--;
        updateButton_exercise_4();
      } else {
        clearInterval(timerInterval_exercise_4);
        timerInterval_exercise_4= null;
        countdown_exercise_4.classList.remove('running');
        countdown_exercise_4.classList.add('finished');
        countdown_exercise_4.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_4();
  }
}

function pauseTimer_exercise_4() {
  clearInterval(timerInterval_exercise_4);
  timerInterval_exercise_4= null;
  countdown_exercise_4.classList.remove('running');
}

function resetTimer_exercise_4() {
  timeLeft_exercise_4= seconds_exercise_4;
  updateButton_exercise_4();
  countdown_exercise_4.classList.remove('finished');
  countdown_exercise_4.classList.remove('running');
  timerInterval_exercise_4= null;
}

countdown_exercise_4.addEventListener("click", () => {
  if (countdown_exercise_4.classList.contains('finished')) {
    resetTimer_exercise_4();
  } else {
    startTimer_exercise_4();
  }
});

updateButton_exercise_4();
-->
</script>

<!-- Le frequenze relative consentono di confrontare la distribuzione di una variabile in campioni di diversa numerosità 

LEGGERE PRIMA DI DARE LA SOLUZIONE Nel campione, quindi vado a vedere la colonna dei totali, Le donne sono il doppio degli uomini. No, non sono uguali
-->

---
### Esercizio #4 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; La proporzione di uomini e donne nel campione &egrave; simile?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp; :white_check_mark: &nbsp;&nbsp;&nbsp;&nbsp; c) Servono pi&ugrave; elementi per decidere

:question: &nbsp;&nbsp;&nbsp; La proporzione di uomini nei due bracci &egrave; simile?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero &nbsp;   &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; c) Servono pi&ugrave; elementi per decidere

<center>

|  | Maschi | Femmine | Totale |
| ----: | ----- | ---- | ----|
| CBT | 35 (32.7%) | 72 (67.3%) |  107 |
| Standard | 29 (30.9%) | 65 (69.1%) | 94 |
| Totale | 64 (31.8%) | 137 (68.2%) |  201 |

</center>

<!-- Le frequenze relative consentono di confrontare la distribuzione di una variabile in campioni di diversa numerosità 

Nel campione, quindi vado a vedere la colonna dei totali, Le donne sono il doppio degli uomini. No, non sono uguali

LEGGERE PRIMA DI DARE LA SOLUZIONE DELLA SECONDA Nel due bracci dell'esperimento, quindi vado a confrontare le due colonne, la proporzione di donne e' sempre il 70% e di uomini e' sempre il 30%, quindi si', sono simili

-->

</div>

---
### Esercizio #4 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; La proporzione di uomini e donne nel campione &egrave; simile?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp; :white_check_mark: &nbsp;&nbsp;&nbsp;&nbsp; c) Servono pi&ugrave; elementi per decidere

:question: &nbsp;&nbsp;&nbsp; La proporzione di uomini nei due bracci &egrave; simile?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero &nbsp; :white_check_mark:  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; c) Servono pi&ugrave; elementi per decidere

<center>


|  | Maschi | Femmine | Totale |
| ----: | ----- | ---- | ----|
| CBT | 35 (32.7%) | 72 (67.3%) |  107 |
| Standard | 29 (30.9%) | 65 (69.1%) | 94 |
| Totale | 64 (31.8%) | 137 (68.2%) |  201 |

</center>

<!-- Le frequenze relative consentono di confrontare la distribuzione di una variabile in campioni di diversa numerosità 


Nel due bracci dell'esperimento, quindi vado a confrontare le due colonne, la proporzione di donne e' sempre il 70% e di uomini e' sempre il 30%, quindi si', sono simili
-->

</div>

---
### Esercizio #5

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Tra 279, 230 e 130 professionisti sanitari che lavorano nei reparti di
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; medicina, chirurgia e in altri settori (ad esempio laboratori o altri
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reparti di  servizi ospedalieri), sono stati individuati 122, 107 e 51 astemi

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Completa la tabella con le  frequenze assolute

<center>

|  | Astemio | Non astemio  | Totale |
| ----: | -----: | ----: | ----: |
| Medicina |   |    |    |
| Chirurgia |   |    |  |
| Altro |  |   |  |
| Totale |  |   |  |

</center>

</div>

<div class="columns">
<div>

<div style="font-size: 50%" align="left">

 Albano, L. *et al.*, *Alcohol consumption in a sample of Italian healthcare workers: A cross-sectional study*, Archives of Environmental & Occupational Health, 2020

</div>


</div>
<div>

<style>
  #countdown_exercise_5{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_5.running {
    background-color: green;
  }
  #countdown_exercise_5.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_5"></button>

<script>
<!--
const countdown_exercise_5= document.getElementById("countdown_exercise_5");
const seconds_exercise_5= 120; // seconds_exercise_5
let timeLeft_exercise_5= seconds_exercise_5;
let timerInterval_exercise_5= null;

function formatTime_exercise_5(seconds_exercise_5) {
  const minutes = Math.floor(seconds_exercise_5/ 60);
  const remainingseconds_exercise_5= seconds_exercise_5% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_5).padStart(2, '0')}`;
}

function updateButton_exercise_5() {
  countdown_exercise_5.textContent = formatTime_exercise_5(timeLeft_exercise_5);
}

function startTimer_exercise_5() {
  if (timerInterval_exercise_5=== null) {
    countdown_exercise_5.classList.add('running');
    countdown_exercise_5.classList.remove('finished');
    timerInterval_exercise_5= setInterval(() => {
      if (timeLeft_exercise_5> 0) {
        timeLeft_exercise_5--;
        updateButton_exercise_5();
      } else {
        clearInterval(timerInterval_exercise_5);
        timerInterval_exercise_5= null;
        countdown_exercise_5.classList.remove('running');
        countdown_exercise_5.classList.add('finished');
        countdown_exercise_5.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_5();
  }
}

function pauseTimer_exercise_5() {
  clearInterval(timerInterval_exercise_5);
  timerInterval_exercise_5= null;
  countdown_exercise_5.classList.remove('running');
}

function resetTimer_exercise_5() {
  timeLeft_exercise_5= seconds_exercise_5;
  updateButton_exercise_5();
  countdown_exercise_5.classList.remove('finished');
  countdown_exercise_5.classList.remove('running');
  timerInterval_exercise_5= null;
}

countdown_exercise_5.addEventListener("click", () => {
  if (countdown_exercise_5.classList.contains('finished')) {
    resetTimer_exercise_5();
  } else {
    startTimer_exercise_5();
  }
});

updateButton_exercise_5();
-->
</script>

</div>
</div>


<!-- Row exposure (il reparto) colonna ourcomes (essere avvinazzati o meno) -->



---
### Esercizio #5 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Tra 279, 230 e 130 professionisti sanitari che lavorano nei reparti di
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; medicina, chirurgia e in altri settori (ad esempio laboratori o altri
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reparti di  servizi ospedalieri), sono stati individuati 122, 107 e 51 astemi

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Completa la tabella con le  frequenze assolute

<center>

|  | Astemio | Non astemio  | Totale |
| ----: | -----: | ----: | ----: |
| Medicina | 122  |    |  279  |
| Chirurgia | 107  |    | 230 |
| Altro | 51 |   | 130 |
| Totale |  |   |  |

</center>

</div>

---
### Esercizio #5 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Tra 279, 230 e 130 professionisti sanitari che lavorano nei reparti di
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; medicina, chirurgia e in altri settori (ad esempio laboratori o altri
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reparti di  servizi ospedalieri), sono stati individuati 122, 107 e 51 astemi

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Completa la tabella con le  frequenze assolute

<center>

|  | Astemio | Non astemio  | Totale |
| ----: | -----: | ----: | ----: |
| Medicina | 122  |  157  |  279  |
| Chirurgia | 107  | 123   | 230 |
| Altro | 51 | 79  | 130 |
| Totale |  |   |  |

</center>

</div>

---
### Esercizio #5 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Tra 279, 230 e 130 professionisti sanitari che lavorano nei reparti di
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; medicina, chirurgia e in altri settori (ad esempio laboratori o altri
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reparti di  servizi ospedalieri), sono stati individuati 122, 107 e 51 astemi

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Completa la tabella con le  frequenze assolute

<center>

|  | Astemio | Non astemio  | Totale |
| ----: | -----: | ----: | ----: |
| Medicina | 122  |  157  |  279  |
| Chirurgia | 107  | 123   | 230 |
| Altro | 51 |  79 | 130 |
| Totale | 280 | 359  | 639 |

</center>

</div>

---
### Esercizio #6

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp;  Calcola ora le  frequenze relative

<br/>

<center>

|  | Astemio | Non astemio  | Totale |
| ----: | -----: | ----: | ----: |
| Medicina | 122  |  157  |  279  |
| Chirurgia | 107  | 123   | 230 |
| Altro | 51 |  79 | 130 |
| Totale | 280 | 359  | 639 |

</center>

</div>

<span style="display:block; height:40px;"></span>

<style>
  #countdown_exercise_6{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_6.running {
    background-color: green;
  }
  #countdown_exercise_6.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_6"></button>

<script>
<!--
const countdown_exercise_6= document.getElementById("countdown_exercise_6");
const seconds_exercise_6= 120; // seconds_exercise_6
let timeLeft_exercise_6= seconds_exercise_6;
let timerInterval_exercise_6= null;

function formatTime_exercise_6(seconds_exercise_6) {
  const minutes = Math.floor(seconds_exercise_6/ 60);
  const remainingseconds_exercise_6= seconds_exercise_6% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_6).padStart(2, '0')}`;
}

function updateButton_exercise_6() {
  countdown_exercise_6.textContent = formatTime_exercise_6(timeLeft_exercise_6);
}

function startTimer_exercise_6() {
  if (timerInterval_exercise_6=== null) {
    countdown_exercise_6.classList.add('running');
    countdown_exercise_6.classList.remove('finished');
    timerInterval_exercise_6= setInterval(() => {
      if (timeLeft_exercise_6> 0) {
        timeLeft_exercise_6--;
        updateButton_exercise_6();
      } else {
        clearInterval(timerInterval_exercise_6);
        timerInterval_exercise_6= null;
        countdown_exercise_6.classList.remove('running');
        countdown_exercise_6.classList.add('finished');
        countdown_exercise_6.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_6();
  }
}

function pauseTimer_exercise_6() {
  clearInterval(timerInterval_exercise_6);
  timerInterval_exercise_6= null;
  countdown_exercise_6.classList.remove('running');
}

function resetTimer_exercise_6() {
  timeLeft_exercise_6= seconds_exercise_6;
  updateButton_exercise_6();
  countdown_exercise_6.classList.remove('finished');
  countdown_exercise_6.classList.remove('running');
  timerInterval_exercise_6= null;
}

countdown_exercise_6.addEventListener("click", () => {
  if (countdown_exercise_6.classList.contains('finished')) {
    resetTimer_exercise_6();
  } else {
    startTimer_exercise_6();
  }
});

updateButton_exercise_6();
-->
</script>


---
### Esercizio #6 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp;  Calcola ora le  frequenze relative

<br/>

<center>

|  | Astemio | Non astemio  | Totale |
| ----: | -----: | ----: | ----: |
| Medicina | 122 (122/279)  |  157 (157/279)  |  279  |
| Chirurgia | 107 (107/230)  | 123 (123/230)   | 230 |
| Altro | 51 (51/130) |  79 (79/130) | 130 |
| Totale | 280 (280/639) | 359 (359/639)  | 639 |

</center>

</div>

---
### Esercizio #6 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp;  Calcola ora le  frequenze relative

<br/>

<center>

|  | Astemio | Non astemio  | Totale |
| ----: | -----: | ----: | ----: |
| Medicina | 122 (43.7%)  |  157 (56.3%)  |  279  |
| Chirurgia | 107 (46.5%)  | 123 (53.5%)   | 230 |
| Altro | 51 (39.2%) |  79 (60.7%) | 130 |
| Totale | 280 (43.8%) | 359 (56.2%)  | 639 |

</center>

<div>



---
<span style="display:block; height:200px;"></span>

## La visualizzazione dei dati categorici

---
## Bar chart

<div class="columns">
<div>

<span style="display:block; height:40px;"></span>

<div style="font-size: 90%">

- frequenza assoluta
- frequenza relativa

</div>

<span style="display:block; height:160px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/MStage_barplot_vertical.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- Diagramma a barre 

Qui vi mostro lo stage metastatico della corte dell'esempio precedente, che e' divisa in 5 classi.

E` considerata uno delle visualizzazioni piu` efficaci per rappresentare dati categorici, anche se noiso

Ciascuna Modalit`a viene rappresentata da una barra, la cui dimensione `e proporzionale alla sua frequenza, assoluta o relativa. 

NON DIRLO: Perch ́e le dimensioni delle barre siano esattamente proporzionali, `e necessario che l’asse delle ordinate inizi dallo zero e non da un punto arbitrario (a questo riguardo vedi anche: Statisticulation).

Sorting bars often add insight.
Avoid filling with color palettes.

Long labels? Think of an horizontal version.
-->

---
## Horizontal bar chart

<div class="columns">
<div>

<span style="display:block; height:40px;"></span>

<div style="font-size: 90%">

- frequenza assoluta
- frequenza relativa

</div>

<span style="display:block; height:160px;"></span>

<div style="font-size: 50%">

Visconti A., *et al.*, *Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/MStage_barplot_horizontal.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- Diagramma a barre orizzontali 
variazione ulteriore: Circular bar chart, lollipop -->

---
## Horizontal bar chart

<div class="columns">
<div>

<span style="display:block; height:40px;"></span>

<div style="font-size: 90%">

- frequenza assoluta
- frequenza relativa

</div>

<span style="display:block; height:160px;"></span>

<div style="font-size: 50%">

Visconti A., *et al.*, *Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/ICI_therapy_barplot_horizotal.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- Diagramma a barre orizzontali 
variazione ulteriore: Circular bar chart, lollipop -->

---
## Cosa ci dice questo grafico?

- Da 1 a 10, quanto eri felice ieri?

<center>
<img src="./img/visualization/wellbeing_cropped.png" img height="400px" border="4px"/>
</center>

<!-- To demonstrate, let’s take a look at the 16 to 19 and 20 to 24 age groups. It’s natural for people to compare lengths so looking at these two bars you might think that 16 to 19 year olds were almost twice as happy as 20 to 14 year olds, when actually they’re pretty similar – only a difference of 0.27. -->

---

## Cosa ci dice questo grafico?

- Da 1 a 10, quanto eri felice ieri?

<center>
<img src="./img/visualization/wellbeing_from_zero.png" img height="400px" border="4px"/>
</center>

<!-- 
16 to 19 year olds were almost twice as happy as 20 to 14 year olds, when actually they’re pretty similar – only a difference of 0.27.

Ciascuna Modalit`a viene rappresentata da una barra, la cui dimensione `e proporzionale alla sua frequenza, assoluta o relativa. 

Perch ́e le dimensioni delle barre siano esattamente proporzionali, `e necessario che l’asse delle ordinate inizi dallo zero e non da un punto arbitrario (a questo riguardo vedi anche: Statisticulation).

Non e' necessariamente fatto per ingannare, ma i grafici pensavano di migliorare la visualizzazione

Wow, that’s a lot of orange. Any patterns in the data just seem to be dominated the fact that there are lots of bars. So what can we do to focus more on the pattern in the data? 

 -->
---
## Cosa ci dice questo grafico?

- Da 1 a 10, quanto eri felice ieri?

<center>
<img src="./img/visualization/wellbeing_dots.png" img height="400px" border="4px"/>
</center>

<!-- ne way of managing this would be to move away from using bars entirely, for example, using the position of a dot to mark each data point. The length aspect no longer exists and the reader is forced to look at the position of the data point relative to the x-axis in order to make a comparison between categories. -->


---
### L'asse y deve partire dallo zero, ma non cos&igrave;...

<span style="display:block; height:40px;"></span>

<center>
<img src="./img/visualization/gemini_sleep.jpeg" img height="400px" border="4px"/>
</center>


---
## Lollipop chart

<div class="columns">
<div>

<span style="display:block; height:40px;"></span>

<div style="font-size: 90%">

- frequenza assoluta
- frequenza relativa

</div>

<span style="display:block; height:160px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, *Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/MStage_lollipop_horizontal.png" img height="500px" border="4px"/>
</center>

</div>
</div>

---
## Pie chart

<div class="columns">
<div>

<span style="display:block; height:40px;"></span>

<div style="font-size: 90%">

- frequenza relativa

</div>

<span style="display:block; height:200px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, *Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/MStage_piechart.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- Diagramma a torta

A pie chart is a circle divided into sectors that each represent a proportion of the whole. It is often used to show proportion, where the sum of the sectors equal 100%.

Pie charts are highly critized and must be avoided as much as possible. Human is very bad at translating angles towards values. 

Don't use it
Don't use 3D.
Don't use a legend, annotate directly each slice.
If displaying proportion, sum must add up to 100.
Don't put several pie charts one beside each other to compare them.

-->

---
## Donut chart

<div class="columns">
<div>

<span style="display:block; height:40px;"></span>

<div style="font-size: 90%">

- frequenza relativa

</div>

<span style="display:block; height:200px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, *Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/MStage_Donut.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- Diagramma a ciambella - cugino di primo grado. 
Ho migliorato la grafica andando ad annotare le percentuali -->

---
## Waffle chart

<div class="columns">
<div>

<span style="display:block; height:40px;"></span>

<div style="font-size: 90%">

- frequenza relativa

</div>

<span style="display:block; height:200px;"></span>

<div style="font-size: 50%">
 
*Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/MStage_waffle.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- A Waffle Chart visually represents categorical data through a grid of small squares, resembling a waffle. Each category is assigned a unique color, and the number of squares allocated to each category corresponds to its proportional share of the total data count. 

They are often 10 by 10 grids, where each cell represents 1%. Despite the name, circles, pictograms (such as of people), and other shapes may be used instead of squares. One major benefit to square charts is that smaller percentages, difficult to see on traditional pie charts, can be easily depicted.

Common Mistakes
 sum must add up to 100.

 Possiamo anche farlo con i pittogrammi
 -->

---
## Infographics

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/visualization/waffle_with_icons.png" img height="350px" border="0px"/>
</center>

<span style="display:block; height:1px;"></span>

<div style="font-size: 50%" align="right">

Spiegelhalter, D., *The Art of Statistics: Learning From Data*, Pelican, 2019 (Edizione Italiana: Einaudi, 2020)

</div>

<!-- Figure 1.4 uses icon arrays to directly represent the expected frequencies of bowel cancer in 100 people.

In Figure 1.4 the ‘cancer’ icons are randomly scattered among the 100. While such scatter has been shown to increase the impression of unpredictability, it should only be used when there is a single additional highlighted icon. There should be no need to count icons in order to make a quick visual comparison.

 -->

---
## Mosaic plot

<div class="columns">
<div>

<span style="display:block; height:40px;"></span>

<div style="font-size: 90%">

- frequenza relativa


</div>

<span style="display:block; height:200px;"></span>

<div style="font-size: 50%">
 
*Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/mosaic_plot.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- Mosaic plots provide an ideal method both for visualizing contingency tables.

Sono la proporzione sul totale.  

round(prop.table(freq_a)*100, 0)

      Females Males
  M0        1     1
  M1a       7     9
  M1b       7    12
  M1c      10    26
  M1d      10    16
 -->

---
### Cosa abbiamo imparato?

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

- Le variabili categoriche possono essere rappresentate numericamente con le loro frequenze (assolute o relative)
- Le tabelle di frequenze e di contingenza ci aiutano a valutare le modalit&agrave; di una o pi&ugrave; variabili
- Le variabili categoriche possono essere rappresentate graficamente in diversi modi, ma i bar chart sono da preferire, seguiti dai waffle chart

</div>

