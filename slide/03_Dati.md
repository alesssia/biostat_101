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

<!-- ### Lezione 3 -->
# Le variabili
## &nbsp;

---
## Obiettivi di apprendimento

<span style="display:block; height:50px;"></span>

- Definire cos'&egrave; una variabile
- Definire quali sono le cause della variabilit&agrave; di un'osservazione
- Conoscere le differenze tra i diversi tipi di variabile

---
## Le fasi della ricerca

<!-- <span style="display:block; height:2px;"></span> -->

<center>
<img src="./img/data/PPDAC.png" img height="500px" border="0px"/>
</center>

<div style="font-size: 50%" align="right">

Spiegelhalter, D., *The Art of Statistics: Learning From Data*, Pelican, 2019 (Edizione Italiana: Einaudi, 2020)

</div>

<!-- Nella parte di Planning, il ricercatore decide come rispondere alla domanda di ricerca. Solitamente ignorata, ma assoulutamente cruciale, GARBACE IN, GARBACE OUT. Questo include, 
 i) verificare se esiste una collezione di dati di alta qualit`a che pu`o essere usata, ii) decidere e giustificare perch ́e sia necessario raccogliere nuove collezioni di dati, e quali dati siano necessari e come debbano essere raccolti 
 iii) decidere e giustificare da qua- le Popolazione i dati verranno raccolti, tenendo anche in considerazione considerazione etiche e logistiche (per esempio, questionari che richiedano un tempo troppo lungo per essere completati), 
 iv) decidere e giustificare quando e dove la raccolta dati debba iniziare e finire, 
 v) decidere e giustifi- care i metodi analitici che verranno utilizzati, e 
 vi) definire delle probabili risposte alla domanda di ricerca (ipotesi)
 
 Nella terza fase, i dati vengono raccolti, organizzati, puliti e verificati.  -->

---

<span style="display:block; height:170px;"></span>

<div style="font-size: 140%">


**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; variabile $\longleftrightarrow$ informazione**

<!-- Dato informazione su una variabile di interesse


Un dato corrisponde a un'informazione su un membro di una popolazione (sesso, altezza, numero dei battiti cardiaci, titolo di studio, età,…) , viene codificata in variabili. 
-->

---
## Le variabili...

<span style="display:block; height:1px;"></span>

- sono imperfette: non sempre misurano quello che ci interessa 
  - conoscenza di una materia $\neq$ voto all'esame
  - benessere di un Paese $\neq$ prodotto interno lordo

* variano: da una persona all’altra, da un momento all’altro, $\dots$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e lo fanno in modo apparentemente casuale


<!-- Proxy: chiedendo alla gente quanto si sentisse felice la settimana
scorsa in una scala da 0 a 10 non si coglie piú di tanto il benessere emotivo
del Paese. 


La variabilita' di tali variabili (differenze che vediamo tra le osservazioni) ci dice come le caratteristiche di una paopolazione (eta', sesso, altezza... ) differiscano da individuo a individuo 

Questa variabilita' dipende sia da fattori conosciuti o conoscibili sia da effetti casuali (random noise)
 -->

---
## Da cosa dipende questa variabilit&agrave;?

<div style="font-size: 90%">

- In uno studio sull'et&agrave; neonatale, 18 pediatri misurano la circonferenza cranica di un bambolotto che simula un  bambino di un anno

<img src="./img/data/head_circiference_doll.png" img height="350px" align="left" border="4px"/>

<span style="display:block; height:1px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Perch&eacute; i dati raccolti 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; variano?

</div>

<!-- Given that all nurses were measuring the head of the same doll, all of the head circumference measurements should be the same. In other words, there should be no variability in the measurements. However, the above graph clearly illustrates that there was variability in the measurements. Why was there variability in the measurements of the doll’s head circumference? (Select all that apply.)

Some nurses held the tape measure tighter around the infants head while others held it looser.
Each nurse put the tape measure in a slightly different place on the doll’s head
Some nurses may have misread the tape measure.
The doll’s head changed size between measurements. -->

---
## Da cosa dipende questa variabilit&agrave;?

<div style="font-size: 90%">

-  In uno studio sull'et&agrave; neonatale, 18 pediatri misurano la circonferenza cranica di un bambolotto che simula un bambino di un anno

<img src="./img/data/head_circiference_doll.png" img height="350px" align="left" border="4px"/>

<span style="display:block; height:1px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Perch&eacute; i dati raccolti 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; variano?

</div>

<span style="display:block; height:20px;"></span>

<div style="font-size: 85%" align="right">

**Errori di misurazione**

</div>

<!--  the above question, all of the variability in scores was created by measurement error because everyone was measuring the same thing and, therefore, should have obtained the same score. Unfortunately, measurement error is always present. No matter what you are measuring, you will never be able to measure it perfectly every time. You can, however, reduce the amount of measurement error. In the context of measuring an infant’s head circumference, how could the developmental psychologist and/or nurses reduce the variability in scores created by measurement error (i.e., what could they do to increase the accuracy/reliability of each measurement?). Select all that apply.

Give the nurses a lot of practice measuring different dolls’ heads.
Train the nurses to use a consistent degree of tension in the tape measure. -->

---
## Da cosa dipende questa variabilit&agrave;?

<div style="font-size: 90%">

- Nello stesso studio sull'et&agrave; neonatale, un pediatria misura la circonferenza cranica di 35 bambini di un anno

<img src="./img/data/head_circiference_children.png" img height="350px" align="left" border="4px"/>

<span style="display:block; height:1px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Perch&eacute; i dati raccolti 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; variano?

</div>

---
## Da cosa dipende questa variabilit&agrave;?

<div style="font-size: 90%">

- Nello stesso studio sull'et&agrave; neonatale, un pediatria misura la circonferenza cranica di 35 bambini di un anno

<img src="./img/data/head_circiference_children.png" img height="350px" align="left" border="4px"/>

<span style="display:block; height:1px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Perch&eacute; i dati raccolti 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; variano?

<span style="display:block; height:20px;"></span>

</div>

<div style="font-size: 90%" align="right">

**Differenze individuali**

</div>

<!-- Anche qui rimangono errori di misurazione -->

---
## Da cosa dipende questa variabilit&agrave;?

<div style="font-size: 90%">

- Nello stesso studio sull'et&agrave; neonatale, lo stesso pediatra misura altri 35 bambini di un anno che sono per&ograve; esposti al fumo passivo

<img src="./img/data/head_circiference_children_groups.png" img height="350px" align="left" border="4px"/>

<span style="display:block; height:1px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Perch&eacute; i dati raccolti 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; variano?

</div>

<!-- Anche qui rimangono errori di misurazione e variabilita' individuale -->

---
## Da cosa dipende questa variabilit&agrave;?

<div style="font-size: 90%">

- Nello stesso studio sull'et&agrave; neonatale, lo stesso pediatra misura altri 35 bambini di un anno che sono per&ograve; esposti al fumo passivo

<img src="./img/data/head_circiference_children_groups.png" img height="350px" align="left" border="4px"/>

<span style="display:block; height:1px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Perch&eacute; i dati raccolti 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; variano?

</div>

<span style="display:block; height:20px;"></span>

<div style="font-size: 90%" align="right">

**Diversa esposizione o condizione sperimentale?**

</div>

---
## Perch&eacute; dobbiamo conoscere la differenza?


<div style="font-size: 90%">

- Vedremo come determinare se la variabilit&agrave; dipende dalle condizioni  sperimentali o se dipende da differenze individuali e/o da errori di misurazione

<span style="display:block; height:20px;"></span>

<center>
<img src="./img/data/head_circiference_doll.png" img height="190px"  border="4px"/> 
<img src="./img/data/head_circiference_children.png" img height="190px"  border="4px"/>
<img src="./img/data/head_circiference_children_groups.png" img height="190px" border="4px"/>
</center>

</div>

---
## Variabili di esito e di esposizione<sup>*</sup>

<span style="display:block; height:2px;"></span>

- la variabile di cui studiamo la variazione  $\longrightarrow$ variabile di esito
  - Esempio: la circonferenza cranica

- le cause della variabilit&agrave; $\longrightarrow$ variabili di esposizione
  - Esempio: il fumo passivo

<span style="display:block; height:90px;"></span>

<div style="font-size: 65%">

<sup>*</sup> o dipendenti e indipendenti, o di risposta ed esplicative  o (in uno studio caso-controllo), stato e fattore di rischio. In uno studio clinico randomizzato, l'esposizione &egrave; il gruppo di trattamento.

</div>

<!-- In order to choose appropriate data displays and statistical methods, it is very important to distinguish between outcome and exposure variables, in addition to identifying the types of each of the variables in the data set. The outcome variable is the variable that is the focus of our attention, whose variation or occurrence we are seeking to understand. In particular we are interested in identifying factors, or exposures, that may influence the size or the occurrence of the outcome variable.

The purpose of a statistical analysis is to quantify the magnitude of the association between one or more exposure variables and the outcome variable

Outcome variable -> Exposure variable
Response variable -> Explanatory variable
Dependent variable -> Independent variable
y-variable -> x-variable
Case–control group -> Risk factor/Treatment group

o studio caso-controllo, è un tipo di studio retrospettivp in cui le persone con una malattia o che presentano un outcome di interesse (i casi) vengono appaiati e confrontati con una o più persone che non hanno la malattia o l'outcome di interesse (i controlli) allo scopo di individuare differenze tra esposizioni e/o fattori di rischio che potrebbero essere alla base della malattia/outcome.

o studio clinico randomizzato, è un disegno sperimentale in cui un gruppo di individui viene assegnato in modo casuale a diversi trattamenti, assicurando che i diversi gruppi (bracci dell'esperimento) siano ragionevolmente bilanciati per fattori conosciuti e sconosciuti. 

 -->

---
### Esercizio #1

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Un ricercatore si chiede se il numero di figli dipenda dal livello di educazione.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Per rispondere a questa domanda divide le persone in 4 categorie (licenza
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  media e/o elementare, diploma, laurea, dottorato) e ne trascrive il numero
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  di figli.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qual &egrave; la variabile di esito? Quale di esposizione?


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Educazione &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: .....................
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Numero di figli &nbsp;: .....................

</div>

<span style="display:block; height:80px;"></span>

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
const seconds_exercise_1= 20; // seconds_exercise_1
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

---
### Esercizio #1 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Un ricercatore si chiede se il numero di figli dipenda dal livello di educazione.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Per rispondere a questa domanda divide le persone in 4 categorie (licenza
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  media e/o elementare, diploma, laurea, dottorato) e ne trascrive il numero
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  di figli.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qual &egrave; la variabile di esito? Quale di esposizione?


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Educazione &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: esposizione
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Numero di figli &nbsp;: esito

</div>



---
### Esercizio #2

<div style="font-size: 78%">

:question: &nbsp;&nbsp;&nbsp; Un ricercatore disegna uno studio in cui pazienti con alti livelli di colesterolo 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sono assegnati in modo casuale a prendere o un nuovo farmaco o un placebo.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I livelli di colesterolo e vengono misurati prima e dopo 3 mesi di trattamento

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qual &egrave; la variabile di esito? Quale di esposizione?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Trattamento &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: .....................
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Livelli di colesterolo : .....................

</div>

<span style="display:block; height:80px;"></span>

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
const seconds_exercise_2= 20; // seconds_exercise_2
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
### Esercizio #2

<div style="font-size: 78%">

:question: &nbsp;&nbsp;&nbsp; Un ricercatore disegna uno studio in cui pazienti con alti livelli di colesterolo 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sono assegnati in modo casuale a prendere o un nuovo farmaco o un placebo.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I livelli di colesterolo e vengono misurati prima e dopo 3 mesi di trattamento

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qual &egrave; la variabile di esito? Quale di esposizione?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Trattamento &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: esposizione
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Livelli di colesterolo : esito

</div>


---
## I tipi di variabile

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
## Di che tipo di variabile si tratta?

<div class="columns">
<div>


</div>
<div>

<span style="display:block; height:1px;"></span>

<img src="./img/data/select_data_type.drawio.png" img height="450px" align="right" border="0px"/>

</div>
</div>

---
## Di che tipo di variabile si tratta?

<div class="columns">
<div>

<div style="font-size: 80%">

<span style="display:block; height:40px;"></span>

:question: &nbsp;&nbsp;&nbsp; La taglia di una maglietta

</div>

</div>
<div>

<span style="display:block; height:1px;"></span>

<img src="./img/data/select_data_type.drawio.png" img height="450px" align="right" border="0px"/>

</div>
</div>

---
## Di che tipo di variabile si tratta?

<div class="columns">
<div>

<div style="font-size: 80%">

<span style="display:block; height:40px;"></span>

:question: &nbsp;&nbsp;&nbsp; Il numero di studenti in un corso

</div>

</div>
<div>

<span style="display:block; height:1px;"></span>

<img src="./img/data/select_data_type.drawio.png" img height="450px" align="right" border="0px"/>

</div>
</div>

---
## Di che tipo di variabile si tratta?

<div class="columns">
<div>

<div style="font-size: 80%">

<span style="display:block; height:40px;"></span>

:question: &nbsp;&nbsp;&nbsp; La nazionalit&agrave;

</div>

</div>
<div>

<span style="display:block; height:1px;"></span>

<img src="./img/data/select_data_type.drawio.png" img height="450px" align="right" border="0px"/>

</div>
</div>

---
## Di che tipo di variabile si tratta?

<div class="columns">
<div>

<div style="font-size: 80%">

<span style="display:block; height:40px;"></span>

:question: &nbsp;&nbsp;&nbsp; La temperatura corporea

</div>

</div>
<div>

<span style="display:block; height:1px;"></span>

<img src="./img/data/select_data_type.drawio.png" img height="450px" align="right" border="0px"/>

</div>
</div>

---
## Di che tipo di variabile si tratta?

<div class="columns">
<div>

<div style="font-size: 80%">

<span style="display:block; height:40px;"></span>

:question: &nbsp;&nbsp;&nbsp; L'esito del lancio di una moneta

</div>

</div>
<div>

<span style="display:block; height:1px;"></span>

<img src="./img/data/select_data_type.drawio.png" img height="450px" align="right" border="0px"/>

</div>
</div>

---
### Esercizio #3

<div class="columns">
<div>

:question: &nbsp;&nbsp;&nbsp; Di che tipo sono le variabili
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in questa tabella?

<span style="display:block; height:170px;"></span>

<style>
  #countdown_exercise_3 {
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
const countdown_exercise_3 = document.getElementById("countdown_exercise_3");
const seconds_exercise_3 = 90; // seconds_exercise_3
let timeLeft_exercise_3 = seconds_exercise_3;
let timerInterval_exercise_3 = null;

function formatTime_exercise_3(seconds_exercise_3) {
  const minutes = Math.floor(seconds_exercise_3 / 60);
  const remainingseconds_exercise_3 = seconds_exercise_3 % 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_3).padStart(2, '0')}`;
}

function updateButton_exercise_3() {
  countdown_exercise_3.textContent = formatTime_exercise_3(timeLeft_exercise_3);
}

function startTimer_exercise_3() {
  if (timerInterval_exercise_3 === null) {
    countdown_exercise_3.classList.add('running');
    countdown_exercise_3.classList.remove('finished');
    timerInterval_exercise_3 = setInterval(() => {
      if (timeLeft_exercise_3 > 0) {
        timeLeft_exercise_3--;
        updateButton_exercise_3();
      } else {
        clearInterval(timerInterval_exercise_3);
        timerInterval_exercise_3 = null;
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
  timerInterval_exercise_3 = null;
  countdown_exercise_3.classList.remove('running');
}

function resetTimer_exercise_3() {
  timeLeft_exercise_3 = seconds_exercise_3;
  updateButton_exercise_3();
  countdown_exercise_3.classList.remove('finished');
  countdown_exercise_3.classList.remove('running');
  timerInterval_exercise_3 = null;
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


<div style="font-size: 50%">
	
<br/><br/><br/> Visconti A., *et al.*, *Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

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
### Esercizio #3 -- Soluzione

<div class="columns">
<div>

:question: &nbsp;&nbsp;&nbsp; Di che tipo sono le variabili
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in questa tabella?

<span style="display:block; height:260px;"></span>

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
### Esercizio #4

<div style="font-size: 85%">

:question: &nbsp;&nbsp;&nbsp; Avere una diagnosi di dislessia &egrave; una variabile categorica dicotomica?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Falso

:question: &nbsp;&nbsp;&nbsp; Il numero di iscritti a un evento &egrave; una variabile quantitativa discreta?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Falso 

:question: &nbsp;&nbsp;&nbsp; Il record nel salto in alto &egrave; una variabile qualitativa ordinale?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Falso 

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


---
### Esercizio #4 -- Soluzione

<div style="font-size: 85%">

:question: &nbsp;&nbsp;&nbsp; Avere una diagnosi di dislessia &egrave; una variabile categorica dicotomica?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero &nbsp; :white_check_mark:  &nbsp;&nbsp;&nbsp; b) Falso 

:question: &nbsp;&nbsp;&nbsp; Il numero di iscritti a un evento &egrave; una variabile quantitativa discreta?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Falso 

:question: &nbsp;&nbsp;&nbsp; Il record nel salto in alto &egrave; una  variabile qualitativa ordinale?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Falso
 
</div>


---
### Esercizio #4 -- Soluzione

<div style="font-size: 85%">

:question: &nbsp;&nbsp;&nbsp; Avere una diagnosi di dislessia &egrave; una variabile categorica dicotomica?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero &nbsp; :white_check_mark:  &nbsp;&nbsp;&nbsp; b) Falso 

:question: &nbsp;&nbsp;&nbsp; Il numero di iscritti a un evento &egrave; una variabile quantitativa discreta?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero &nbsp; :white_check_mark:  &nbsp;&nbsp;&nbsp; b) Falso 

:question: &nbsp;&nbsp;&nbsp; Il record nel salto in alto &egrave; una  variabile qualitativa ordinale?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Falso 
</div>


---
### Esercizio #4 -- Soluzione

<div style="font-size: 85%">

:question: &nbsp;&nbsp;&nbsp; Avere una diagnosi di dislessia &egrave; una variabile categorica dicotomica?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero &nbsp; :white_check_mark:  &nbsp;&nbsp;&nbsp; b) Falso 

:question: &nbsp;&nbsp;&nbsp; Il numero di iscritti a un evento &egrave; una variabile quantitativa discreta?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero &nbsp; :white_check_mark:  &nbsp;&nbsp;&nbsp; b) Falso 

:question: &nbsp;&nbsp;&nbsp; Il record nel salto in alto &egrave; una  variabile qualitativa ordinale?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp; :white_check_mark:  &nbsp;&nbsp;&nbsp;&nbsp; 
 
</div>

---
### Esercizio #5

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Un ricercatore si chiede se il numero di figli dipenda dal livello di educazione.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Per rispondere a questa domanda divide le persone in 4 categorie (licenza
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  media e/o elementare, diploma, laurea, dottorato) e ne trascrive il numero
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  di figli.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Che tipo di variabili raccoglie?

</div>

<div class="columns">
<div>

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Educazione

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) multi-categoria 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) ordinale
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) discreta 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) continua

</div>

</div>

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numero di figli

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) multi-categoria 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) ordinale
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) discreta 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) continua

</div>

</div>
</div>


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


</div>
</div>

---
### Esercizio #5 -- Soluzione


<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Un ricercatore si chiede se il numero di figli dipenda dal livello di educazione.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Per rispondere a questa domanda divide le persone in 4 categorie (licenza
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  media e/o elementare, diploma, laurea, dottorato) e ne trascrive il numero
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  di figli.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Che tipo di variabili raccoglie?

</div>

<div class="columns">
<div>

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Educazione

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) multi-categoria 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) ordinale &nbsp;&nbsp; :white_check_mark: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) discreta 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) continua

</div>

</div>

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numero di figli

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) multi-categoria 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) ordinale
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) discreta 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) continua

</div>

</div>
</div>

---
### Esercizio #5 -- Soluzione


<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Un ricercatore si chiede se il numero di figli dipenda dal livello di educazione.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Per rispondere a questa domanda divide le persone in 4 categorie (licenza
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  media e/o elementare, diploma, laurea, dottorato) e ne trascrive il numero
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  di figli.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Che tipo di variabili raccoglie?

</div>

<div class="columns">
<div>

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Educazione

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) multi-categoria 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) ordinale &nbsp;&nbsp; :white_check_mark: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) discreta 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) continua

</div>

</div>

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numero di figli

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) multi-categoria 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) ordinale
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) discreta  &nbsp;&nbsp; :white_check_mark: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) continua

</div>

</div>
</div>

---
### Esercizio #6

<div style="font-size: 78%">

:question: &nbsp;&nbsp;&nbsp; Un ricercatore disegna uno studio in cui pazienti con alti livelli di colesterolo 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sono assegnati in modo casuale a prendere o un nuovo farmaco o un placebo.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sapendo che c'&egrave; una differenza nel modo in cui uomini e donne rispondono 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; al trattamento, ne registra il sesso. I livelli di colesterolo e vengono misurati 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; prima e dopo 3 mesi di trattamento

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Che tipo di variabili raccoglie?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Trattamento &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: .....................
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Sesso &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: .....................
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Livelli di colesterolo : .....................


</div>

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
const seconds_exercise_6= 20; // seconds_exercise_6
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

<div style="font-size: 78%">

:question: &nbsp;&nbsp;&nbsp; Un ricercatore disegna uno studio in cui pazienti con alti livelli di colesterolo 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sono assegnati in modo casuale a prendere o un nuovo farmaco o un placebo.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sapendo che c'&egrave; una differenza nel modo in cui uomini e donne rispondono 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; al trattamento, ne registra il sesso. I livelli di colesterolo e vengono misurati 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; prima e dopo 3 mesi di trattamento

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Che tipo di variabili raccoglie?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Trattamento &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: binaria
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Sesso &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: binaria
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Livelli di colesterolo : continua

</div>

---
## Una sola variabile, tanti tipi

<span style="display:block; height:10px;"></span>

:pushpin: &nbsp;&nbsp;&nbsp;  Esempio: et&agrave;

---
## Una sola variabile, tanti tipi

<span style="display:block; height:10px;"></span>

:pushpin: &nbsp;&nbsp;&nbsp;  Esempio: et&agrave;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Data di nascita + data visita

---
## Una sola variabile, tanti tipi

<span style="display:block; height:10px;"></span>

:pushpin: &nbsp;&nbsp;&nbsp;  Esempio: et&agrave;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Data di nascita + data visita
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Quanti anni hai?

---
## Una sola variabile, tanti tipi

<span style="display:block; height:10px;"></span>

:pushpin: &nbsp;&nbsp;&nbsp;  Esempio: et&agrave;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Data di nascita + data visita
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Quanti anni hai?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - A quale di queste fasce d'et&agrave; appartieni?

---
## Discretizzazione

<div class="columns">
<div>

<span style="display:block; height:40px;"></span>

<div style="font-size: 80%">

- Da una serie di valori continui a intervalli (o classi)
- La scelta del numero di classi e degli estremi è arbitraria
- Le classi devono essere mutualmente esclusive
- Riportate anche le classi nulle (frequenza zero)

</div>

</div>
<div>

<div style="font-size: 90%">

:pushpin: &nbsp;&nbsp;&nbsp; $\text{IMC (BMI)} = \frac{\text{peso}_\text{kg}}{\text{altezza}_m^2}$

| IMC (BMI) | Classificazione
| ----: | -----: |
|< 18,5 | Sottopeso
18,5 – 24, 9 | Normopeso
25,0 – 29,9 | Sovrappeso
30,0 – 34,9  | Obesità 1° grado
35,0 – 39,9 | Obesità 2° grado
| > 39,9 | Obesità 3° grado

</div>

</div>
</div>

<!-- Frequenze si usato per dati qualitativi, ma cosa facciamo se abbiamo dati quantitativi?

In questo caso si possono ancora usare, ma la frequenza non è riferita ad un singolo valore, ma ad intervalli (o classi) di valori. 

ESEMPIO QUI DEL BMI

La scelta del numero di classi e degli estremi è arbitraria. Entrambi vengono determinati in base a criteri di convenienza.

Il numero di classi può oscillare e dipende dalla numerosità dei dati (in genere utilizzare da 5 a 20 classi).

Scegliere estremi che siano clinicamente/biologicamente significativi o naturali e, preferibilmente, di uguale ampiezza.

Le classi debbono essere mutuamente esclusive (fate attenzione agli estremi!!).

-->

---
## Discretizzazione

<span style="display:block; height:20px;"></span>

<center>
<img src="./img/data/Table1_discrete.png" img height="300px" border="4px"/>
</center>

<span style="display:block; height:70px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, *Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

<!-- Lactate dehydrogenase, dichotomized according to the upper limit of normal for each centre. -->


---
### Esercizio #7

<span style="display:block; height:10px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Un ricercatore ha registrato l'et&agrave; come una variabile discreta. 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Pu&ograve; trasformarla in una variabile categorica ordinale?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) S&igrave;, sempre 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Dipende dal contesto
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) No, mai

</div>

<span style="display:block; height:60px;"></span>

<style>
  #countdown_exercise_7{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_7.running {
    background-color: green;
  }
  #countdown_exercise_7.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_7"></button>

<script>
<!--
const countdown_exercise_7= document.getElementById("countdown_exercise_7");
const seconds_exercise_7= 10; // seconds_exercise_7
let timeLeft_exercise_7= seconds_exercise_7;
let timerInterval_exercise_7= null;

function formatTime_exercise_7(seconds_exercise_7) {
  const minutes = Math.floor(seconds_exercise_7/ 60);
  const remainingseconds_exercise_7= seconds_exercise_7% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_7).padStart(2, '0')}`;
}

function updateButton_exercise_7() {
  countdown_exercise_7.textContent = formatTime_exercise_7(timeLeft_exercise_7);
}

function startTimer_exercise_7() {
  if (timerInterval_exercise_7=== null) {
    countdown_exercise_7.classList.add('running');
    countdown_exercise_7.classList.remove('finished');
    timerInterval_exercise_7= setInterval(() => {
      if (timeLeft_exercise_7> 0) {
        timeLeft_exercise_7--;
        updateButton_exercise_7();
      } else {
        clearInterval(timerInterval_exercise_7);
        timerInterval_exercise_7= null;
        countdown_exercise_7.classList.remove('running');
        countdown_exercise_7.classList.add('finished');
        countdown_exercise_7.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_7();
  }
}

function pauseTimer_exercise_7() {
  clearInterval(timerInterval_exercise_7);
  timerInterval_exercise_7= null;
  countdown_exercise_7.classList.remove('running');
}

function resetTimer_exercise_7() {
  timeLeft_exercise_7= seconds_exercise_7;
  updateButton_exercise_7();
  countdown_exercise_7.classList.remove('finished');
  countdown_exercise_7.classList.remove('running');
  timerInterval_exercise_7= null;
}

countdown_exercise_7.addEventListener("click", () => {
  if (countdown_exercise_7.classList.contains('finished')) {
    resetTimer_exercise_7();
  } else {
    startTimer_exercise_7();
  }
});

updateButton_exercise_7();
-->
</script>



---
### Esercizio #7 -- Soluzione

<span style="display:block; height:10px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Un ricercatore ha registrato l'et&agrave; come una variabile discreta. 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Pu&ograve; trasformarla in una variabile categorica ordinale?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) S&igrave;, sempre &nbsp;&nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Dipende dal contesto
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) No, mai

</div>

---
### Esercizio #8

<span style="display:block; height:10px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Un ricercatore ha registrato l'et&agrave; come una variabile categorica 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ordinale.  Pu&ograve; riottenere l'esatta informazione numerica?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) S&igrave;, sempre 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Dipende dal contesto
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) No, mai

</div>

<span style="display:block; height:60px;"></span>

<style>
  #countdown_exercise_8{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_8.running {
    background-color: green;
  }
  #countdown_exercise_8.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_8"></button>

<script>
<!--
const countdown_exercise_8= document.getElementById("countdown_exercise_8");
const seconds_exercise_8= 10; // seconds_exercise_8
let timeLeft_exercise_8= seconds_exercise_8;
let timerInterval_exercise_8= null;

function formatTime_exercise_8(seconds_exercise_8) {
  const minutes = Math.floor(seconds_exercise_8/ 60);
  const remainingseconds_exercise_8= seconds_exercise_8% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_8).padStart(2, '0')}`;
}

function updateButton_exercise_8() {
  countdown_exercise_8.textContent = formatTime_exercise_8(timeLeft_exercise_8);
}

function startTimer_exercise_8() {
  if (timerInterval_exercise_8=== null) {
    countdown_exercise_8.classList.add('running');
    countdown_exercise_8.classList.remove('finished');
    timerInterval_exercise_8= setInterval(() => {
      if (timeLeft_exercise_8> 0) {
        timeLeft_exercise_8--;
        updateButton_exercise_8();
      } else {
        clearInterval(timerInterval_exercise_8);
        timerInterval_exercise_8= null;
        countdown_exercise_8.classList.remove('running');
        countdown_exercise_8.classList.add('finished');
        countdown_exercise_8.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_8();
  }
}

function pauseTimer_exercise_8() {
  clearInterval(timerInterval_exercise_8);
  timerInterval_exercise_8= null;
  countdown_exercise_8.classList.remove('running');
}

function resetTimer_exercise_8() {
  timeLeft_exercise_8= seconds_exercise_8;
  updateButton_exercise_8();
  countdown_exercise_8.classList.remove('finished');
  countdown_exercise_8.classList.remove('running');
  timerInterval_exercise_8= null;
}

countdown_exercise_8.addEventListener("click", () => {
  if (countdown_exercise_8.classList.contains('finished')) {
    resetTimer_exercise_8();
  } else {
    startTimer_exercise_8();
  }
});

updateButton_exercise_8();
-->
</script>

---
### Esercizio #8 -- Soluzione

<span style="display:block; height:10px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Un ricercatore ha registrato l'et&agrave; come una variabile categorica 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ordinale.  Pu&ograve; riottenere l'esatta informazione numerica?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) S&igrave;, sempre 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Dipende dal contesto
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) No, mai &nbsp;&nbsp; :white_check_mark:

</div>

---
### Cosa abbiamo imparato?

<!-- <span style="display:block; height:px;"></span> -->

<div style="font-size: 90%">

- Le variabili descrivono delle caratteristiche di interesse
- Le differenze che esistono tra le osservazioni (variabilit&agrave;) dipendono sia da fattori noti o conoscibili (come le differenze individuali e le condizioni sperimentali), sia da effetti casuali (rumore statistico, come gli errori di misurazione)
- Le variabili possono essere di diverso tipo, a seconda della caratteristica che descrivono
- Le variabili numeriche possono essere sempre discretizzate (quindi trasformate in variabili categoriche ordinali)

</div>