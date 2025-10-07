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

<!-- ### Lezione 2 -->
# Popolazione e Campione
## &nbsp;


---
## Obiettivi di apprendimento

<span style="display:block; height:50px;"></span>

<!-- <div style="font-size: 90%"> -->

- Definire correttamente popolazione e campione
- Conoscere le maggiori strategie di campionamento
- Individuare distorsioni sistematiche (o *bias*) nei campioni

<!-- </div> -->

---
## Le fasi della ricerca

<center>
<img src="./img/sampling/PPDAC.png" img height="500px" border="0px"/>
</center>

<div style="font-size: 50%" align="right">

Spiegelhalter, D., *The Art of Statistics: Learning From Data*, Pelican, 2019 (Edizione Italiana: Einaudi, 2020)

</div>

<!-- PLANNING, DISEGNO SPERIMENTALE

È una procedura per la pianificazione di un esperimento scientifico, prodotto prima dell'esecuzione dell'esperimento stesso, che cerca di garantire che i dati raccolti e le analisi condotte possano essere analizzati per fornire conclusioni valide e oggettive, e in cui il ricercatore decide come rispondere alla domanda di ricerca. 

- verificare se esiste una collezione di dati di alta qualità che puòessere riutilizzata
- decidere e giustificare perché sia necessario raccogliere nuove collezioni di dati, e quali dati siano necessari e come debbano essere raccolti (via questionario, analisi strumentali, ,,,)
- decidere e giustificare da quale \gls{population} i dati verranno raccolti, tenendo anche in considerazione considerazione etiche e logistiche (per esempio, questionari che richiedano un tempo troppo lungo per essere completati),
- decidere e giustificare quando e dove la raccolta dati debba iniziare e finire
- decidere e giustificare i metodi analitici che verranno utilizzati, e 
- definire delle probabili risposte alla domanda di ricerca (\gls{hypothesis}) -->

--- 
## Popolazione *vs*  campione

<span style="display:block; height:2px;"></span>

<center>
<img src="./img/sampling/ISTAT.png" img height="450px" border="4px"/>
</center>

<!-- Popolazione e' l'insieme di tutti gli individui per cui vogliamo studiare un fenomeno, e.g., popolazione italiana
La popolazione è, teoricamente, infinita
Se non è infinita è spesso difficile da raggiungere tutta (tempi e costi)

Il modo tradizionale per studiare una popolazione e' il censimento, che pero' ha diversi svantaggi, tra cui il costo,
Dobbiamo quindi scegliere un sottoinsieme della popolazione che possiamo raggiungere

Avveniva ogni 10 anni, ultimo nel 2011 -> dal 2018 permanent census, sotto gruppo della popolazione, quindi quello che chiamiamo un campione statistico 

Altro svantaggio , e b) non e' possibile raccogliere tutte le informazioni possiboli e immaginabili (trauma cranico al nido)
-->

---
## Popolazione *vs*  campione (nella  clinica)

<span style="display:block; height:2px;"></span>

<center>
<img src="./img/sampling/delirium_2024_underlined.png" img height="450px" border="4px"/>
</center>

<!-- Nella ricerca clinica, la popolazione e' l'insieme di tutti i pazienti che ci interessano

Campione sono quelli che siamo andati a reclutare. 

E’ però necessario sceglierlo “bene” affinché le informazioni che otteniamo sul nostro campione siano poi trasferibili alla popolazione di partenza (inferenza)m quindi con procedimenti e regole che garantiscano la capacità del campione di rappresentare la popolazione
-->

---
### Esercizio #1

<span style="display:block; height:30px;"></span>

<div class="columns">
<div>

<img src="./img/sampling/abstract_ex1.png" img height="300px" align="right" border="4px"/>

<span style="display:block; height:400px;"></span>

<div style="font-size: 50%" align="right">

Sikich, L. *et al.*, *Intranasal Oxytocin in Children and Adolescents with Autism Spectrum Disorder*, NEJM, 2021

</div>

</div>
<div>

<div style="font-size: 68%">

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; la popolazione di studio?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Bambini e adolescenti inglesi tra 3-17  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; anni con autismo
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Bambini e adolescenti inglesi
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Bambini e adolescenti con autismo
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Bambini e adolescenti che non 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; presentano sintomi di autismo

</div>

<span style="display:block; height:100px;"></span>

<style>
  #countdown_exercise_1{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_1.running {
    background-color: green;
  }
  #countdown_exercise_1.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_1"></button>

<script>
<!--
const countdown_exercise_1= document.getElementById("countdown_exercise_1");
const seconds_exercise_1= 10; // seconds_exercise_1
let timeLeft_exercise_1= seconds_exercise_1;
let timerInterval_exercise_1= null;

function formatTime_exercise_1(seconds_exercise_1) {
  const minutes = Math.floor(seconds_exercise_1/ 60);
  const remainingseconds_exercise_1= seconds_exercise_1% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_1).padStart(2, '0')}`;
}

function updateButton_exercise_1() {
  countdown_exercise_1.textContent = formatTime_exercise_1(timeLeft_exercise_1);
}

function startTimer_exercise_1() {
  if (timerInterval_exercise_1=== null) {
    countdown_exercise_1.classList.add('running');
    countdown_exercise_1.classList.remove('finished');
    timerInterval_exercise_1= setInterval(() => {
      if (timeLeft_exercise_1> 0) {
        timeLeft_exercise_1--;
        updateButton_exercise_1();
      } else {
        clearInterval(timerInterval_exercise_1);
        timerInterval_exercise_1= null;
        countdown_exercise_1.classList.remove('running');
        countdown_exercise_1.classList.add('finished');
        countdown_exercise_1.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_1();
  }
}

function pauseTimer_exercise_1() {
  clearInterval(timerInterval_exercise_1);
  timerInterval_exercise_1= null;
  countdown_exercise_1.classList.remove('running');
}

function resetTimer_exercise_1() {
  timeLeft_exercise_1= seconds_exercise_1;
  updateButton_exercise_1();
  countdown_exercise_1.classList.remove('finished');
  countdown_exercise_1.classList.remove('running');
  timerInterval_exercise_1= null;
}

countdown_exercise_1.addEventListener("click", () => {
  if (countdown_exercise_1.classList.contains('finished')) {
    resetTimer_exercise_1();
  } else {
    startTimer_exercise_1();
  }
});

updateButton_exercise_1();
-->
</script>

</div>
</div>

---
### Esercizio #1 -- Soluzione

<span style="display:block; height:30px;"></span>

<div class="columns">
<div>

<img src="./img/sampling/abstract_ex1.png" img height="300px" align="right" border="4px"/>

<span style="display:block; height:400px;"></span>

<div style="font-size: 50%" align="right">

Sikich, L. *et al.*, *Intranasal Oxytocin in Children and Adolescents with Autism Spectrum Disorder*, NEJM, 2021

</div>

</div>
<div>

<div style="font-size: 68%">

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; la popolazione di studio?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Bambini e adolescenti inglesi tra 3-17  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; anni con autismo
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Bambini e adolescenti inglesi
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Bambini e adolescenti con autismo :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Bambini e adolescenti che non 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; presentano sintomi di autismo

</div>

</div>
</div>

---
### Esercizio #2

<span style="display:block; height:30px;"></span>

<div class="columns">
<div>

<img src="./img/sampling/abstract_ex1.png" img height="300px" align="right" border="4px"/>

<span style="display:block; height:400px;"></span>

<div style="font-size: 50%" align="right">

Sikich, L. *et al.*, *Intranasal Oxytocin in Children and Adolescents with Autism Spectrum Disorder*, NEJM, 2021

</div>

</div>
<div>

<div style="font-size: 68%">

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; il campione selezionato?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Bambini e adolescenti inglesi tra 3-17  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; anni con autismo
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Bambini e adolescenti inglesi
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Bambini e adolescenti con autismo 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Bambini e adolescenti che non 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; presentano sintomi di autismo

</div>

<span style="display:block; height:100px;"></span>

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
const seconds_exercise_2= 10; // seconds_exercise_2
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


</div>
</div>


---
### Esercizio #2 -- Soluzione

<span style="display:block; height:30px;"></span>

<div class="columns">
<div>

<img src="./img/sampling/abstract_ex1.png" img height="300px" align="right" border="4px"/>

<span style="display:block; height:400px;"></span>

<div style="font-size: 50%" align="right">

Sikich, L. *et al.*, *Intranasal Oxytocin in Children and Adolescents with Autism Spectrum Disorder*, NEJM, 2021

</div>

</div>
<div>

<div style="font-size: 68%">

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; il campione selezionato?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Bambini e adolescenti inglesi tra 3-17  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; anni con autismo &nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Bambini e adolescenti inglesi
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Bambini e adolescenti con autismo
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Bambini e adolescenti che non 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; presentano sintomi di autismo

</div>

<span style="display:block; height:100px;"></span>

</div>
</div>

---
### Esercizio #3

<span style="display:block; height:10px;"></span>

<div class="columns">
<div>

<center>
<img src="./img/sampling/table1_exercise.png" img height="410px" border="4px"/>
</center>

<div style="font-size: 50%" align="right">

Sikich, L. *et al.*, *Intranasal Oxytocin in Children and Adolescents with Autism Spectrum Disorder*, NEJM, 2021

</div>

</div>
<div>

<div style="font-size: 70%">

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; la numerosit&agrave; del campione?


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) 277
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) 139
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) 138
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) non &egrave; possibile dirlo  

</div>

<span style="display:block; height:100px;"></span>

<style>
  #countdown_exercise_3{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_3.running {
    background-color: green;
  }
  #countdown_exercise_3.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_3"></button>

<script>
<!--
const countdown_exercise_3= document.getElementById("countdown_exercise_3");
const seconds_exercise_3= 10; // seconds_exercise_3
let timeLeft_exercise_3= seconds_exercise_3;
let timerInterval_exercise_3= null;

function formatTime_exercise_3(seconds_exercise_3) {
  const minutes = Math.floor(seconds_exercise_3/ 60);
  const remainingseconds_exercise_3= seconds_exercise_3% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_3).padStart(2, '0')}`;
}

function updateButton_exercise_3() {
  countdown_exercise_3.textContent = formatTime_exercise_3(timeLeft_exercise_3);
}

function startTimer_exercise_3() {
  if (timerInterval_exercise_3=== null) {
    countdown_exercise_3.classList.add('running');
    countdown_exercise_3.classList.remove('finished');
    timerInterval_exercise_3= setInterval(() => {
      if (timeLeft_exercise_3> 0) {
        timeLeft_exercise_3--;
        updateButton_exercise_3();
      } else {
        clearInterval(timerInterval_exercise_3);
        timerInterval_exercise_3= null;
        countdown_exercise_3.classList.remove('running');
        countdown_exercise_3.classList.add('finished');
        countdown_exercise_3.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_3();
  }
}

function pauseTimer_exercise_3() {
  clearInterval(timerInterval_exercise_3);
  timerInterval_exercise_3= null;
  countdown_exercise_3.classList.remove('running');
}

function resetTimer_exercise_3() {
  timeLeft_exercise_3= seconds_exercise_3;
  updateButton_exercise_3();
  countdown_exercise_3.classList.remove('finished');
  countdown_exercise_3.classList.remove('running');
  timerInterval_exercise_3= null;
}

countdown_exercise_3.addEventListener("click", () => {
  if (countdown_exercise_3.classList.contains('finished')) {
    resetTimer_exercise_3();
  } else {
    startTimer_exercise_3();
  }
});

updateButton_exercise_3();
-->
</script>


</div>
</div>

---
### Esercizio #3 -- Soluzione 

<span style="display:block; height:10px;"></span>

<div class="columns">
<div>

<center>
<img src="./img/sampling/table1_exercise.png" img height="410px" border="4px"/>
</center>

<div style="font-size: 50%" align="right">

Sikich, L. *et al.*, *Intranasal Oxytocin in Children and Adolescents with Autism Spectrum Disorder*, NEJM, 2021

</div>

</div>
<div>

<div style="font-size: 70%">

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; la numerosit&agrave; del campione?


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) 277 &nbsp;&nbsp; :white_check_mark: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) 139
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) 138
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) non &egrave; possibile dirlo  

</div>

<span style="display:block; height:100px;"></span>

</div>
</div>

<!-- The trial was conducted from August 2014 through June 2017. Of the 355 children and adolescents who underwent screening, 290 met the eligibility criteria, were randomly assigned to a trial group, received at least one dose of oxytocin or placebo, and were included in the safety analyses. The efficacy analyses excluded 11 participants who had no ABC-mSW assessments after randomization and 2 who did not have a baseline ABC-mSW score, which yielded 277 participants for the modified intention-to-treat analysis. -->


---
## Strategie di campionamento

<span style="display:block; height:2px;"></span>

<div style="font-size: 90%">

:dart: &nbsp;&nbsp;&nbsp; Un **campione di convenienza** &egrave; un campione estratto da una
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  parte della popolazione facilmente accessibile che potrebbe 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; per&ograve;  non rappresentarla adeguatamente


<span style="display:block; height:50px;"></span>

* Esempio: tutti i pazienti che si presentano in uno specifico ambulatorio, in uno specifico ospedale, in un dato periodo di tempo


</div>

<!-- Iniziamo con il distinguere il campionamento probabilistico da quello non probabilistico.

Nel campionamento non-probabilistico, o opportunistico, la selezione del campione avviene in base a criteri di comodo o di praticità, per esempio perché certi individui sono più facilmente contattabili, o per ragioni di costo 

Ricordiamoci che importante e' che sia randomizzato rispetto alla variabile di interesse. Se ci interessa come rispondono, per esempio nel caso del delirio, magari il nostro campione va bene -- sarebbe proprio sfortuna se in quell'intervallo di tempo mi capitassero solo un tipo specifico di pazienti, per esempio molto giovani o con malattie mentali pregresse.

Chiedere le intenzioni di voto alle prime 10 pagine di utenti con il numero di telefono non e' ottimale (persone con lo stesso cognome tendono ad avere le stesse idee politiche), ma accettabile. Farlo ad una protesta contro l'immigrazione invece no! 

-->

---
## Strategie di campionamento

<span style="display:block; height:2px;"></span>

<div style="font-size: 90%">

:dart: &nbsp;&nbsp;&nbsp; In un **campionamento probabilistico** tutti i soggetti della  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; popolazione hanno la stessa probabilit&agrave; di venire inclusi 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nel campione

<span style="display:block; height:50px;"></span>

* Esempio: un sottoinsieme estratto casualmente dall’elenco dei pazienti affetti dalla malattia

<!-- Nel campionamento probabilistico ogni unità della popolazione in studio ha una probabilità NOTA di essere estratta (non distorto o viziato) 

 Necessaria la lista (base di campionamento) esaustiva di tutta la popolazione
 Estrazione dei soggetti tramite sorteggio (tavole numeri casuali, computer)\

Nel campionamento casuale semplice tutte le unità della popolazione hanno la stessa probabilità di essere estratte:

data una popolazione di N individui ed un campione di dimensione n  la probabilità che l’i-esimo individuo entri nel campione è “n/N” 

-->

---
### Strategia #1: Campionamento casuale semplice

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

:pushpin: &nbsp;&nbsp;&nbsp;  $N=90$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n=10$ 

<span style="display:block; height:30px;"></span>

</div>
<div>

<span style="display:block; height:10px;"></span>

<img src="./img/sampling/numbers-tombola.jpg" img height="400px" align="right" border="0px"/>

</div>
</div> 

<!-- Disporre di un elenco completo di tutti i soggetti della popolazione e una loro numerazione

n piccolo e' la nostra numerosita' campionaria

Decidere quante unità si vogliono selezionare e calcolare la frazione di campionamento -->

---
### Strategia #1: Campionamento casuale semplice

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

:pushpin: &nbsp;&nbsp;&nbsp;  $N=90$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n=10$ 

<span style="display:block; height:30px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $49, 65, 25, 74, 18$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $90, 47, 24, 71, 37$
</div>
<div>

<span style="display:block; height:10px;"></span>

<img src="./img/sampling/numbers-tombola_simple.jpg" img height="400px" align="right" border="0px"/>

</div>
</div>

<!--  Estrarre le unità tramite sorteggio casuale o tavole dei numeri casuali (costruite in modo da non avere vizi sistematici. Sono delle serie di numeri tra 0 e 9 disposti a caso e caratterizzati dall’avere una distribuzione uniforme) -->

---
### Strategia #2: Campionamento stratificato

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:dart: &nbsp;&nbsp;&nbsp; La popolazione &egrave; divisa in gruppi omogenei (strata) assicurandosi
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  che siano tutti adeguatamente rappresentati.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Una variazione prevede che il numero di elementi estratti da ciascun
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gruppo sia proporzionale alla frequenza di quel gruppo

<!-- a simple random sample is taken from a number of distinct subgroups, or strata, of the population in order to ensure that they are all adequately represented. If different sampling fractions are used in the different strata, simple summary statistics will not be representative of the whole popu- 
lation. -->

---
### Strategia #2: Campionamento stratificato

<div class="columns">
<div>

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:pushpin: &nbsp;&nbsp;&nbsp;  $N=90$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $N_{female}=60$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $N_{male}=30$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n=9$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n_{female} = 6$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n_{male} = 3$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $Females: 46, 20, 26,$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $50, 47,  3$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $Males: 69, 85, 87$

</div>

</div>
<div>

<span style="display:block; height:10px;"></span>

<img src="./img/sampling/numbers-tombola_stratified.jpg" img height="400px" align="right" border="0px"/>

</div>
</div>

<!-- Esempi di strata : sesso, eta', condizione sociale -->

---
### Strategia #3: Campionamento a grappolo 

<span style="display:block; height:10px;"></span>

:dart: &nbsp;&nbsp;&nbsp; La popolazione &egrave; divisa in gruppi gerarchici (cluster) da cui 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; viene poi estratto il campione (si estrae il gruppo e non il 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; singolo elemento).
 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - A uno stadio&nbsp;: osservo tutti gli elementi nel cluster
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - A due stadi&nbsp;&nbsp;&nbsp;: campiono tra gli elementi del cluster

<!-- Le unità della popolazione sono suddivise in CLUSTER o GRAPPOLI in base a circostanze organizzative, strutturali, geografiche.
All’interno dei cluster le unità possono essere molto diverse tra di loro.

Il campione si forma estraendo casualmente un numero prestabilito di cluster, dopodichè si possono includere tutte le unità che appartengono al cluster (1 stadio) o solo una parte (2 stadi, usano campionamento semplice o stratificato)
 -->

---
### Strategia #3: Campionamento a grappolo 

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/sampling/google-earth-torino.jpg" img height="450px" border="0px"/>
</center>

--- 
## Campionamento nel mondo reale

<div class="columns">
<div>

<span style="display:block; height:450px;"></span>

<div style="font-size: 80%" align="right">
https://hbsc.org
</div>

</div>
<div>

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/sampling/hbsc.jpg" img height="500px" border="4px"/>
</center>

</div>

<!--  Health beavious in school aged children 
Studio internazionale che si tiene ogni 4 anni e che raccoglie informazioni sui ragazzi di 11, 13, 15 e, recentemente anche 17 anni (che sono la mia popolazione) 
Ma non li raccoglie tutti, ne raccoglie un campione.

Innanzitutto li devo dividere per regioni (stratificato), poi vado a identifcare le scuole (cluster)
All'interno delle scuole vado a fare un ulteriore strato per grado/eta' e poi prpcedo con un sistematic sampling all'interno di ciascuno strato per identiicare le classi (di cui scelgo TUTTI gli studenti della classe)

Countries may choose to stratify their samples to ensure representation by, for example, geographic location,
ethnic group or school type.
-->


---
### Esercizio #4

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Un rappresentante sta conducendo un sondaggio sul gradimento di 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; un nuovo prodotto intervistando un cliente ogni cinque che entra 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; all'ipermercato vicino alla ditta per la quale lavora

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Che strategia di campionamento sta usando??

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Casuale semplice
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Sistematico
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Stratificato
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Di convenienza

</div>


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
const seconds_exercise_4= 20; // seconds_exercise_4
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

---
### Esercizio #4 -- Soluzione

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Un rappresentante sta conducendo un sondaggio sul gradimento di 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; un nuovo prodotto intervistando un cliente ogni cinque che entra 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; all'ipermercato vicino alla ditta per la quale lavora

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Che strategia di campionamento sta usando??

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Casuale semplice
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Sistematico
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Stratificato
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Di convenienza &nbsp; :white_check_mark:

</div>

---
### Esercizio #5

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Quale tra i seguenti esempi si può definire campione di convenienza  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; per un'indagine sierologica sul COVID-19 nella popolazione italiana?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Un campione scelto in maniera casuale dalla popolazione
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Il campione selezionato per l’indagine sierologica COVID-19
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; avviata dal Ministero della Salute (campione composto da 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 150.000 persone residenti in 2000 Comuni)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Un campione selezionato tra  gli studenti di UniTO
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Nessuno dei precedenti 

</div>

<span style="display:block; height:10px;"></span>

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
const seconds_exercise_5= 20; // seconds_exercise_5
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

---
### Esercizio #5 -- Soluzione

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Quale tra i seguenti esempi si può definire campione di convenienza  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; per un'indagine sierologica sul COVID-19 nella popolazione italiana?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Un campione scelto in maniera casuale dalla popolazione
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Il campione selezionato per l’indagine sierologica COVID-19
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; avviata dal Ministero della Salute (campione composto da 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 150.000 persone residenti in 2000 Comuni)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Un campione selezionato tra gli studenti di UniTO :white_check_mark: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Nessuno dei precedenti 

</div>

---
## E se il campione non &egrave; rappresentativo?

<!-- <span style="display:block; height:1px;"></span> -->

- Le conclusioni **non** possono generalizzate

<center>
<img src="./img/sampling/ATD_Family.png" img height="300px" border="0px"/>
<center>


<!-- Per anni il manichino e' stato solo male, nonostante le donne comprino il 62% delle auto in nord-america e il "female" dummy e' un downsize del male e provato solo nel sedile del passeggero 

Le donne soffrono maggiori colpi di frusta

primo test con vero manichino donna nel 2023


consider a vaccine trial carried out using student volunteers. If it is reasonable to assume that in their response to the vaccine and exposure to disease students are typical of the community at large, the results will have general applicability. If, on the other hand, students differ in any respect which may materially affect their response to the vaccine or exposure to disease, the conclusions from the trial are restricted to the population of students and do not have general applicability. Deciding whether or not ‘students are typical’ is not a statistical issue, but depends on an informed judgement taking into account relevant biological and epidemiological knowledge.
-->

<span style="display:block; height:30px;"></span>

<div style="font-size: 50%" align="right">

Caroline Criado-Perez, *Invisible Women: Exposing Data Bias in a World Designed for Men*, Ballantine Books, 2019

</div>

---
## In pratica: dalla popolazione...

<center>
<img src="./img/sampling/Beinasco.png" img height="550px" border="4px"/>
<center>


<!-- Supponiamo che tu debba valutare il gradimento di un centro di salute mentale che ha aperto, in via sperimentale, lo scorso anno a Beinasco. 

Beinasco ha una \textbf{popolazione} di circa 18,000 abitanti e hai accesso ad un estratto dell'elenco telefonico
 -->
---
## ... attraverso la finestra di campionamento 

<center>
<img src="./img/sampling/Elenco_page1.png" img height="500px" border="4px"/>

<img src="./img/sampling/Elenco_page2.png" img height="500px" border="4px"/>
</center>

<!-- e l'elenco di tutti gli individui in una popolazione da cui si scelgono soggetti che faranno parte del campione 

Come facciamo a scegliere chi estrarre?

-->

---
## ... al campione


<center>
<img src="./img/sampling/Elenco_page1_sampled.png" img height="500px" border="4px"/>

<img src="./img/sampling/Elenco_page2_sampled.png" img height="500px" border="4px"/>
</center>


---
## Abbiamo finito?

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

- chi non &egrave; eleggibile?

</div>
<div>

<span style="display:block; height:50px;"></span>

<img src="./img/sampling/Ineligible.png" img height="200px" border="4px"/>

</div>
</div>

<!-- An ineligible sampling unit is an individual or entity selected through a sampling process but does not meet the specific eligibility criteria for the survey or study. These units are identified during data collection, often through a screening process, and are then removed from the sample so they do not skew results. Reasons for ineligibility include being outside a geographic boundary, failing to meet demographic requirements (e.g., age), or being a business when the survey targets individuals -->

---
## Abbiamo finito?

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

- chi non &egrave; eleggibile?
- chi non risponde?

</div>
<div>


</div>
</div>

---
## Abbiamo finito?

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

- chi non &egrave; eleggibile?
- chi non risponde?

</div>
<div>

<span style="display:block; height:50px;"></span>

<img src="./img/sampling/sampling_schema.png" img height="450px" align="right" border="0px"/>

</div>
</div>

---
## Bias nella selezione del campione

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

- **Non-response bias**

</div>
<div>


</div>
</div>

<!-- Faccio domande molto personali (uso di cannabis) 

Surveys asking for personal, legal, or other sensitive information are prone to non-response bias, simply because there is some information respondents don’t feel comfortable disclosing.
-->


---
## Bias nella selezione del campione

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

- **Survivor bias**

</div>
<div>

<span style="display:block; height:5px;"></span>

<img src="./img/sampling/Survivorship-bias.svg.png" img height="450px" align="right" border="0px"/>

</div>
</div>

<!-- Anche se facciamo attenzione i nostri sample possono avere delle distorsioni

- voglio andare a vedere dove gli aerei da guerra vengono colpiti per rinforzarli
e l’errore logico che si commette quando si prendano in considerazione solo gli elementi che hanno superato un determinato pro- cesso di selezione, trascurando i restanti; tipicamente ci`o avviene poich ́e i primi sono fisicamente disponibili/visibili e i secondi no. -->

---
## Bias nella selezione del campione

<span style="display:block; height:1px;"></span>

- **Survivor bias**

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *"Una volta gli edifici erano pi&ugrave; belli/resistenti"*

</div>

<!-- Just as new buildings are being built every day and older structures are constantly torn down, the story of most civil and urban architecture involves a process of constant renewal, renovation, and revolution. Only the most beautiful, useful, and structurally sound buildings survive from one generation to the next. This creates a selection effect where the ugliest and weakest buildings of history have been eradicated (disappearing from public view, leaving the visible impression that all earlier buildings were more beautiful and better built).
-->

---
## Bias nella selezione del campione

<span style="display:block; height:1px;"></span>

- **Survivor bias**

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *"Una volta gli edifici erano pi&ugrave; belli/resistenti"*

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *"Non capisco perch&eacute; oggigiorno bisogni fare X, io non l'ho mai  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fatto eppure sono ancora qui"*

<div>

<!-- 

X indossare una cintura di sicurezza, mettere le sicurezze sul lavoro... when helmets became standard gear, the amount of people being treated for head wounds skyrocketed. But thats because they would have been killed without the helmet. 
-->

---
## Bias nella selezione del campione

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

- **Volunteer bias**

</div>
<div>

<span style="display:block; height:10px;"></span>

<img src="./img/sampling/sampling_bias_comics.jpeg" img height="450px" align="right" border="4px"/>

</div>
</div>

<!-- - occorre quando i volontari hanno caratteristiche diverse rispet- to alla Popolazione che si vuole studiare.  volontari alsop SES e soprattuto donne
- occorre quando uno o piu` soggetti di uno studio di- ventano irreperibili durante lo studio stesso sto testando un nuovo farmaco, le persone che hanno i side effect peggiori possono interromperlo, o quelli per cui non funziona possono morire -->

---
## Bias nella selezione del campione

<span style="display:block; height:1px;"></span>

- **Volunteer bias**

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Un insegnante si chiede se delle esercitazioni possano  migliorare il 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; agli esami. Organizza quindi delle lezioni aggiuntive e invita gli  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; studenti interessati a iscriversi. 

</div>


<!-- Self-selection bias is likely because students who are more serious about school are more likely to sign up 

Potrei dividervi lato destro dell'aula fa esercitazione e sinistro no e poi confronto i risultati dell'esame per vedere se quelli a destra hanno un voto piu' alto -- qui siamo nella statistica inferenziale!
 -->


---
## Bias nella selezione del campione

<span style="display:block; height:1px;"></span>

- **Lost to follow up bias**

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Una ditta sta valutando l'efficacia di un nuovo farmaco su una corte di 100 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pazienti oncologici reclutati in un certo di eccellenza. Trenta pazienti non si 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; presentano alla visita di controllo.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cosa possiamo concludere se vi dico   che queste 30 persone...

</div>

---
## Bias nella selezione del campione

<span style="display:block; height:1px;"></span>

- **Lost to follow up bias**

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Una ditta sta valutando l'efficacia di un nuovo farmaco su una corte di 100 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pazienti oncologici reclutati in un certo di eccellenza. Trenta pazienti non si 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; presentano alla visita di controllo.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cosa possiamo concludere se vi dico   che queste 30 persone...
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - sono morte?

</div>


---
## Bias nella selezione del campione

<span style="display:block; height:1px;"></span>

- **Lost to follow up bias**

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Una ditta sta valutando l'efficacia di un nuovo farmaco su una corte di 100 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pazienti oncologici reclutati in un certo di eccellenza. Trenta pazienti non si 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; presentano alla visita di controllo.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cosa possiamo concludere se vi dico   che queste 30 persone...
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - sono morte?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - hanno smesso di prendere il farmaco?

</div>

---
## Bias nella selezione del campione

<span style="display:block; height:1px;"></span>

- **Lost to follow up bias**

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Una ditta sta valutando l'efficacia di un nuovo farmaco su una corte di 100 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pazienti oncologici reclutati in un certo di eccellenza. Trenta pazienti non si 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; presentano alla visita di controllo.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cosa possiamo concludere se vi dico   che queste 30 persone...
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - sono morte?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - hanno smesso di prendere il farmaco?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -  sono ritornate alla loro citt&agrave; di origine?

</div>


---
## Campioni indipendenti & dipendenti

<span style="display:block; height:60px;"></span>

<center>
<img src="./img/sampling/independent_vs_paired.png" img height="300px" border="0px"/>
</center>

<!-- Sino ad ora abbiamo lavorato su Campioni indipendenti: non vi è relazione tra osservazioni appartenenti a campioni diversi

Per esempio 
- peso nei pazienti diabetici e nei sani
- lato sinistro e destro dell'aula nel test se le esercitazioni aiutano

Esistiono per&ograve; anche campioni appaiati, in cui dati di un campione sono associati con quelli dell’altro. Ad ogni osservazione nel primo gruppo corrisponde un’osservazione nel secondo

Per esempio
- peso nei pazienti diabetici alla diagnosi e dopo 10 anni 
- voto di esame prima e dopo le esercitazioni
-->

---
## Campioni indipendenti & dipendenti

<span style="display:block; height:60px;"></span>

<center>
<img src="./img/sampling/independent_vs_paired_2.png" img height="300px" border="0px"/>
</center>

<!-- I capioni appaiati possono anche essere essere persone diverse ma matchate per caratteristiche salienti (eta', sesso, peso corporeo, ...) 

Per esempio:
- accoppio una persona che ha preso 100 all'esame di maturità nel gruppo "esercitazioni" con una che a preso 100 nel gruppo "lezione normale"

o studio caso-controllo, è un tipo di studio retrospettivp in cui le persone con una malattia o che presentano un outcome di interesse (i casi) vengono appaiati e confrontati con una o più persone che non hanno la malattia o l'outcome di interesse (i controlli) allo scopo di individuare differenze tra esposizioni e/o fattori di rischio che potrebbero essere alla base della malattia/outcome.

 -->

---
### Cosa abbiamo imparato?

<span style="display:block; height:10px;"></span>

<div style="font-size: 90%">

- La popolazione &egrave; l'insieme di tutti gli individui per cui vogliamo studiare un fenomeno ed &egrave;, teoricamente, infinita
- Il campione &egrave; un sotto insieme (rappresentativo?) della popolazione
- Pi&ugrave; un campione &egrave; rappresentativo della popolazione, pi&ugrave; le nostre conclusioni sono robuste
- Anche campioni rappresentativi (casuali) possono soffrire di bias
- Esistono diversi disegni sperimentali

</div>
