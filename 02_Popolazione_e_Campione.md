---
theme: gaia
_class: lead
paginate: false
marp: true

style: |
  .columns {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 1rem;
  }
---


### Lezione 2
# Popolazione e Campione
## &nbsp;


---
## Obiettivi di apprendimento

<span style="display:block; height:50px;"></span>

<div style="font-size: 90%">

- Conoscere le differenze tra popolazione e campione
- Conoscere le due maggiori strategie di campionamento
- Individuare errori di campionamento e bias

</div>

---
## Le fasi della ricerca

<span style="display:block; height:2px;"></span>

<center>
<img src="./img/sampling/PPDAC.png" img height="450px" border="0px"/>
</center>

<div style="font-size: 50%" align="right">

Spiegelhalter, D., *The Art of Statistics: Learning From Data*, Pelican, 2019

</div>

<!-- Nella parte di Planning, il ricercatore decide come rispondere alla domanda di ricerca. Solitamente ignorata, ma assoulutamente cruciale, GARBACE IN, GARBACE OUT. Questo include, 
 i) verificare se esiste una collezione di dati di alta qualit`a che pu`o essere usata, ii) decidere e giustificare perch ́e sia necessario raccogliere nuove collezioni di dati, e quali dati siano necessari e come debbano essere raccolti 
 iii) decidere e giustificare da qua- le Popolazione i dati verranno raccolti, tenendo anche in considerazione considerazione etiche e logistiche (per esempio, questionari che richiedano un tempo troppo lungo per essere completati), 
 iv) decidere e giustificare quando e dove la raccolta dati debba iniziare e finire, 
 v) decidere e giustifi- care i metodi analitici che verranno utilizzati, e 
 vi) definire delle probabili risposte alla domanda di ricerca (ipotesi) -->

--- 
## Popolazione *vs*  &nbsp;campione

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
## Popolazione *vs*  &nbsp;campione (nella  clinica)

<span style="display:block; height:2px;"></span>

<center>
<img src="./img/sampling/delirium_2024_underlined.png" img height="450px" border="4px"/>
</center>

<!-- Nella ricerca clinica, la popolazione e' l'insieme di tutti i pazienti che ci interessano

Campione sono quelli che siamo andati a reclutare. 

E’ però necessario sceglierlo “bene” affinché le informazioni che otteniamo sul nostro campione siano poi trasferibili alla popolazione di partenza (inferenza)m quindi con procedimenti e regole che garantiscano la capacità del campione di rappresentare la popolazione
-->



---
## Campione di convenienza 

<span style="display:block; height:30px;"></span>

<div style="font-size: 90%">

:dart: &nbsp;&nbsp;&nbsp; Un campione di convenienza &egrave; un campione estratto da una
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  parte della popolazione a cui abbiamo un facile accesso e 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  che potrebbe non rappresentarla nella sua  interezza


<span style="display:block; height:1px;"></span>

:pushpin: &nbsp;&nbsp;&nbsp; Tutti i pazienti che si presentano in uno specifico ambulatorio, 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in uno specifico ospedale, in un dato periodo di tempo


</div>

<!-- Iniziamo con il distinguere il campionamento probabilistico da quello non probabilistico.

Nel campionamento non-probabilistico, o opportunistico, la selezione del campione avviene in base a criteri di comodo o di praticità, per esempio perché certi individui sono più facilmente contattabili, o per ragioni di costo 

Ricordiamoci che importante e' che sia randomizzato rispetto alla variabile di interesse. Se ci interessa come rispondono, per esempio nel caso del delirio, magari il nostro campione va bene -- sarebbe proprio sfortuna se in quell'intervallo di tempo mi capitassero solo un tipo specifico di pazienti, per esempio molto giovani o con malattie mentali pregresse.

Chiedere le intenzioni di voto alle prime 10 pagine di utenti con il numero di telefono non e' ottimale (persone con lo stesso cognome tendono ad avere le stesse idee politiche), ma accettabile. Farlo ad una protesta contro l'immigrazione invece no! 

-->

---
## Campionamento casuale semplice

<span style="display:block; height:30px;"></span>

<div style="font-size: 90%">

:dart: &nbsp;&nbsp;&nbsp; Nel campionamento casuale semplice tutti i soggetti della  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; popolazione hanno la stessa probabilit&agrave; di venire inclusi 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nel campione

<span style="display:block; height:10px;"></span>

:pushpin: &nbsp;&nbsp;&nbsp; Un sottoinsieme estratto in modo casuale dall'elenco dei 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pazienti con la malattia

<!-- Nel campionamento probabilistico ogni unità della popolazione in studio ha una probabilità NOTA di essere estratta (non distorto o viziato) 

 Necessaria la lista (base di campionamento) esaustiva di tutta la popolazione
 Estrazione dei soggetti tramite sorteggio (tavole numeri casuali, computer)\

Nel campionamento casuale semplice tutte le unità della popolazione hanno la stessa probabilità di essere estratte:

data una popolazione di N individui ed un campione di dimensione n  la probabilità che l’i-esimo individuo entri nel campione è “n/N” 

-->

---
## Campionamento casuale semplice

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

:pushpin: &nbsp;&nbsp;&nbsp;  $N=90$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n=10$ 

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
## Campionamento casuale semplice

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

:pushpin: &nbsp;&nbsp;&nbsp;  $N=90$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n=10$ 

<span style="display:block; height:30px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $49, 65, 25, 74, 18$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $90, 47, 24, 71, 37$
</div>
<div>

<span style="display:block; height:10px;"></span>

<img src="./img/sampling/numbers-tombola_simple.jpg" img height="400px" align="right" border="0px"/>

</div>
</div>

<!--  Estrarre le unità tramite sorteggio casuale o tavole dei numeri casuali (costruite in modo da non avere vizi sistematici. Sono delle serie di numeri tra 0 e 9 disposti a caso e caratterizzati dall’avere una distribuzione uniforme) -->

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

<div style="font-size: 70%">

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; la popolazione di studio?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Bambini e adolescenti tra 3-17 anni 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; con autismo
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Bambini e adolescenti in Inghilterra
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Bambini e adolescenti con autismo
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Bambini e adolescenti che non 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; presentano sintomi di autismo

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
const seconds_exercise_1= 120; // seconds_exercise_1
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

<div style="font-size: 70%">

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; la popolazione di studio?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Bambini e adolescenti tra 3-17 anni 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; con autismo
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Bambini e adolescenti in Inghilterra
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Bambini e adolescenti con autismo &nbsp;&nbsp; :white_check_mark: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Bambini e adolescenti che non 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; presentano sintomi di autismo

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

<div style="font-size: 70%">

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; il campione selezionato?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Bambini e adolescenti tra 3-17 anni 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; con autismo
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Bambini e adolescenti in Inghilterra
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Bambini e adolescenti con autismo
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Bambini e adolescenti che non 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; presentano sintomi di autismo

</div>

<span style="display:block; height:100px;"></span>

<style>
  #countdown_exercise_1bis{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_1bis.running {
    background-color: green;
  }
  #countdown_exercise_1bis.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_1bis"></button>

<script>
<!--
const countdown_exercise_1bis= document.getElementById("countdown_exercise_1bis");
const seconds_exercise_1bis= 60; // seconds_exercise_1bis
let timeLeft_exercise_1bis= seconds_exercise_1bis;
let timerInterval_exercise_1bis= null;

function formatTime_exercise_1bis(seconds_exercise_1bis) {
  const minutes = Math.floor(seconds_exercise_1bis/ 60);
  const remainingseconds_exercise_1bis= seconds_exercise_1bis% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_1bis).padStart(2, '0')}`;
}

function updateButton_exercise_1bis() {
  countdown_exercise_1bis.textContent = formatTime_exercise_1bis(timeLeft_exercise_1bis);
}

function startTimer_exercise_1bis() {
  if (timerInterval_exercise_1bis=== null) {
    countdown_exercise_1bis.classList.add('running');
    countdown_exercise_1bis.classList.remove('finished');
    timerInterval_exercise_1bis= setInterval(() => {
      if (timeLeft_exercise_1bis> 0) {
        timeLeft_exercise_1bis--;
        updateButton_exercise_1bis();
      } else {
        clearInterval(timerInterval_exercise_1bis);
        timerInterval_exercise_1bis= null;
        countdown_exercise_1bis.classList.remove('running');
        countdown_exercise_1bis.classList.add('finished');
        countdown_exercise_1bis.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_1bis();
  }
}

function pauseTimer_exercise_1bis() {
  clearInterval(timerInterval_exercise_1bis);
  timerInterval_exercise_1bis= null;
  countdown_exercise_1bis.classList.remove('running');
}

function resetTimer_exercise_1bis() {
  timeLeft_exercise_1bis= seconds_exercise_1bis;
  updateButton_exercise_1bis();
  countdown_exercise_1bis.classList.remove('finished');
  countdown_exercise_1bis.classList.remove('running');
  timerInterval_exercise_1bis= null;
}

countdown_exercise_1bis.addEventListener("click", () => {
  if (countdown_exercise_1bis.classList.contains('finished')) {
    resetTimer_exercise_1bis();
  } else {
    startTimer_exercise_1bis();
  }
});

updateButton_exercise_1bis();
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

<div style="font-size: 70%">

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; il campione selezionato?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Bambini e adolescenti tra 3-17 anni 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; con autismo &nbsp;&nbsp; :white_check_mark: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Bambini e adolescenti in Inghilterra
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Bambini e adolescenti con autismo
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Bambini e adolescenti che non 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; presentano sintomi di autismo

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

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; la numerosit&agrave; del campione


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) 277
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) 139
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) 130
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Non &egrave; possibile desumerlo dalla tabella 

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

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; la numerosit&agrave; del campione


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) 277 &nbsp;&nbsp; :white_check_mark: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) 139
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) 130
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Non &egrave; possibile desumerlo dalla tabella 

</div>

<span style="display:block; height:100px;"></span>

</div>
</div>


---
## Bias nella selezione del campione

<div class="columns">
<div>

<span style="display:block; height:50px;"></span>
- Survivor bias

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

<div class="columns">
<div>

<span style="display:block; height:50px;"></span>
- Survivor bias
- Volunteer bias
* Lost to follow up bias
* $\dots$

</div>
<div>

<img src="./img/sampling/sampling_bias_comics.jpeg" img height="450px" align="right" border="0px"/>

</div>
</div>

<!-- - occorre quando i volontari hanno caratteristiche diverse rispet- to alla Popolazione che si vuole studiare.  volontari alsop SES e soprattuto donne
- occorre quando uno o piu` soggetti di uno studio di- ventano irreperibili durante lo studio stesso sto testando un nuovo farmaco, le persone che hanno i side effect peggiori possono interromperlo, o quelli per cui non funziona possono morire -->

---
### Esercizio #4

<span style="display:block; height:50px;"></span>

<div class="columns">
<div>

<img src="./img/sampling/abstract_methods_ex1.png" img height="210px" align="right" border="4px"/>

<span style="display:block; height:380px;"></span>

<div style="font-size: 50%" align="right">

Sikich, L. *et al.*, *Intranasal Oxytocin in Children and Adolescents with Autism Spectrum Disorder*, NEJM, 2021

</div>

</div>
<div>

<div style="font-size: 70%">

:question: &nbsp;&nbsp;&nbsp; Lo studio soffre di qualche bias?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) No
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Survivor bias
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Volunterr bias
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Lost to follow up bias 

</div>

<span style="display:block; height:100px;"></span>

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
const seconds_exercise_4= 120; // seconds_exercise_4
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

</div>
</div>

---
### Esercizio #4 -- Soluzione

<span style="display:block; height:50px;"></span>

<div class="columns">
<div>

<img src="./img/sampling/abstract_methods_ex1.png" img height="210px" align="right" border="4px"/>

<span style="display:block; height:380px;"></span>

<div style="font-size: 50%" align="right">

Sikich, L. *et al.*, *Intranasal Oxytocin in Children and Adolescents with Autism Spectrum Disorder*, NEJM, 2021

</div>

</div>
<div>

<div style="font-size: 70%">

:question: &nbsp;&nbsp;&nbsp; Lo studio soffre di qualche bias?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) No
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Survivor bias
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Volunterr bias
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Lost to follow up bias &nbsp;&nbsp; :white_check_mark: 

</div>

</div>
</div>

---
### Cosa abbiamo imparato in questa lezione?

<span style="display:block; height:10px;"></span>

<div style="font-size: 90%">

- La popolazione &egrave; l'insieme di tutti gli individui per cui vogliamo studiare un fenomeno ed è, teoricamente, infinita
- Il campione &egrave; un sotto insieme (rappresentativo?) della popolazione
- Anche con campioni rappresentativi (casuali) possono esserci errori e/o bias

</div>
