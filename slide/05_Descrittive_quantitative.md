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


<!-- ### Lezione 5 -->
# La statistica descrittiva
## (Parte II: Le variabili numeriche)
## &nbsp;

---
## Obiettivi di apprendimento

<span style="display:block; height:50px;"></span>

- Riassumere i dati numerici utilizzando misure di centralit&agrave;, dispersione e correlazione
- Riassumere i dati numerici utilizzando rappresentazioni grafiche
- Interpretare tabelle e figure in articoli scientifici

---
## Le fasi della ricerca

<!-- <span style="display:block; height:2px;"></span> -->

<center>
<img src="./img/descriptive/PPDAC_quantitative.png" img height="500px" border="0px"/>
</center>

<div style="font-size: 50%" align="right">

Spiegelhalter, D., *The Art of Statistics: Learning From Data*, Pelican, 2019 (Edizione Italiana: Einaudi, 2020)

</div>

---
## Misure di centralit&agrave; e dispersione

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/descriptive/descriptive.png" img height="400px" border="0px"/>
</center>

<!--   Per le variabili quantitative è necessario descrivere i dati raccolti anche numericamente… Poiché generalmente il problema è che i dati sono tanti, può risultare più semplice sintetizzarli e ridurli a pochi numeri, più facili da comprendere, utilizzare e comunicare.

Le tabelle di frequenza dopo una procedura di discretizzazione non sono pero' il modo piu' consono per rappresentare i dati quantitativi. E' meglio usare

Tendenza centrale (o posizione) -> Individuano il valore intorno al quale i dati sono raggruppati

Dispersione o variabilita'  -> Forniscono un’indicazione della dispersione delle osservazioni intorno al valore centrale -->

---
## Misure di centralit&agrave;: la moda

<span style="display:block; height:1px;"></span>

:dart: &nbsp;&nbsp;&nbsp; L'elemento pi&ugrave; frequente

<span style="display:block; height:20px;"></span>

<center>
<img src="./img/descriptive/range.png" img height="65px" border="0px"/>
</center>

<span style="display:block; height:1px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; moda = 26

---
### Esercizio #1

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; la moda dei seguenti insiemi?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $x= \{1, 1, 1, 3, 4, 4, 4, 7, 8, 8, 9, 9\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{moda}(x)= \text{ } ?$

<span style="display:block; height:1px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $y= \{1, 3, 4, 7, 8, 9, 11, 17, 21, 42\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{moda}(y)= \text{ } ?$

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
const seconds_exercise_1= 60; // seconds_exercise_1
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

<!-- se ciascun valore si presenta una volta sola, le nostre osservazioni non hanno moda

Si usa soprattutto per i dati categorici -->

---
### Esercizio #1 -- Soluzione

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; la moda dei seguenti insiemi?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $x= \{1, 1, 1, 3, 4, 4, 4, 7, 8, 8, 9, 9\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{moda}(x)=1 \text{ e }   4$

<span style="display:block; height:1px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $y= \{1, 3, 4, 7, 8, 9, 11, 17, 21, 42\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{moda}(y)= \text{Non esiste}$

<!-- se ciascun valore si presenta una volta sola, le nostre osservazioni non hanno moda
Ci possono essere piu' mode (la distribuzione e' detta multi modale)

Si usa soprattutto per i dati categorici -->

---
## Misure di centralit&agrave;: la mediana

<span style="display:block; height:1px;"></span>

:dart: &nbsp;&nbsp;&nbsp;Il valore "in mezzo"

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/descriptive/median.png" img height="250px" border="0px"/>
</center>

<div style="font-size: 90%" align="right">

:warning: I dati devono essere ordinati!

</div>

<!-- Divide l'insieme di dati in due parti uguali, con il numero osservazioni <= mediana uguale a quello >= 

Quando il numero di osservazioni e' pari, ci sono due valori mediani, e in questo caso si prende la loro media aritmetica
-->

---
### Esercizio #2

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Quali sono le mediane di questi insiemi?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $x= \{40, 6, 75, 55, 34\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{mediana}(x)= \text{ ?}$ 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $y= \{40, 6, 175, 55, 34\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{mediana}(y)=\text{ ?}$ 

</div>

<span style="display:block; height:40px;"></span>

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
const seconds_exercise_2= 60; // seconds_exercise_2
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



<!-- La mediana non e' influenzata da valori estremi o estremi (outliers) -->

---
### Esercizio #2 -- Soluzione

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Quali sono le mediane di questi insiemi?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $x= \{40, 6, 75, 55, 34\}$ $\rightarrow$  $x'= \{6, 34, 40, 55, 75\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{mediana}(x)=x_3=40$ 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $y= \{40, 6, 175, 55, 34\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{mediana}(y)=\text{ ?}$


</div>

<div style="font-size: 90%" align="right">

<span style="display:block; height:40px;"></span>

:warning: I dati devono essere ordinati!

</div>


<!-- La mediana non e' influenzata da valori estremi o estremi (outliers) -->

---
### Esercizio #2 -- Soluzione

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Quali sono le mediane di questi insiemi?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $x= \{40, 6, 75, 55, 34\}$ $\rightarrow$  $x'= \{6, 34, 40, 55, 75\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{mediana}(x)=x_3=40$ 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $y= \{40, 6, 175, 55, 34\}$ $\rightarrow$  $y'= \{6, 34, 40, 55, 175\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{mediana}(y)=y_3=40$ 



</div>

<div style="font-size: 90%" align="right">

<span style="display:block; height:40px;"></span>

:warning: I dati devono essere ordinati!

</div>


<!-- La mediana non e' influenzata da valori estremi o estremi (outliers) -->

---
## Mediana e valori estremi

<center>
<img src="./img/descriptive/median_outlier.png" img height="500px" border="0px"/>
</center>

---
## Quartili

<span style="display:block; height:60px;"></span>

<center>
<img src="./img/descriptive/quartiles.png" img height="250px" border="0px"/>
</center>

<!-- Mentre la mediana divide i dati in due meta' esatte, molto usati sono anche i quartili, che dividono i dati in 4 parti uguali -->

<span style="display:block; height:40px;"></span>

<div style="font-size: 90%" align="right">

:warning: I dati devono essere ordinati!

</div>

<!-- I quartili sono robusti rispetto ai valori anomal, anche se l'ultimo fosse 1000 e il primo -1000 non cambierebbero -->

---
## Percentili

<span style="display:block; height:20px;"></span>

<center>
<img src="./img/descriptive/percentile.png" img height="350px" border="0px"/>
</center>

<!-- Mentre la mediana divide i dati in due meta' esatte, molto usati sono anche i quartili, che dividono i dati in 4 parti uguali -->

<span style="display:block; height:10px;"></span>

<div style="font-size: 90%" align="right">

:warning: I dati devono essere ordinati!

</div>

<!-- I quartili sono robusti rispetto ai valori anomal, anche se l'ultimo fosse 1000 e il primo -1000 non cambierebbero -->

---
### Esercizio #3

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Maria ha ricevuto un punteggio di 70 a un esame, posizionandosi 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nel 45$^o$ percentile.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; L'esame &egrave; andato...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) bene: ha ricevuto un voto superiore a pi&ugrave; di met&agrave; delle  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; persone che hanno dato quell'esame
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) non benissimo: ha ricevuto un voto inferiore a pi&ugrave; di met&agrave; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; delle persone che hanno dato quell'esame
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) non ho abbastanza elementi per decidere

</div>

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
const seconds_exercise_3= 15; // seconds_exercise_3
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

---
### Esercizio #3 -- Soluzione

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Maria ha ricevuto un punteggio di 70 a un esame, posizionandosi 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nel 45$^o$ percentile.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; L'esame &egrave; andato...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) bene: ha ricevuto un voto superiore a pi&ugrave; di met&agrave; delle  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; persone che hanno dato quell'esame
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) non benissimo: ha ricevuto un voto inferiore a pi&ugrave; di met&agrave; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; delle persone che hanno dato quell'esame &nbsp;&nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) non ho abbastanza elementi per decidere

</div>

---
## Misure di centralit&agrave;: la media

<div style="font-size: 95%">

:dart: &nbsp;&nbsp;&nbsp; Media (aritmetica)

$$
{\bar {x}}= {\frac {1}{n}}\left(\sum _{i=1}^{n}{x_{i}}\right)=
{\frac {x_{1}+x_{2}+\dots +x_{n}}{n}}
$$

<span style="display:block; height:30px;"></span>

<center>
<img src="./img/descriptive/range.png" img height="65px" border="0px"/>
</center>

<span style="display:block; height:1px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${\bar {x}}= \frac{5+18+20+22+24+25+25+26+26+26+27+27+28+29+30}{15}=23.9$

</div>

<!-- Somma dei singoli valori diviso il numero di osservazioni 

in generla la media e' la misura piu' usata per descrivere la tendenza centrale per la sua unicita' (c'e' solo una media) e semplicita'
 -->

---
### Esercizio #4

<span style="display:block; height:1px;"></span>

<div style="font-size: 95%">

:question: &nbsp;&nbsp;&nbsp; Quali sono le medie di questi insiemi?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $x= \{40, 6, 75, 55, 34\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${\bar {x}} = \text{ ?}$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $y= \{40, 6, 175, 55, 34\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${\bar {y}} = \text{ ?}$

<div>

<span style="display:block; height:10px;"></span>

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
const seconds_exercise_4= 300; // seconds_exercise_4
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


<!-- La media non e' particolarmente robusta rispetto agli outliers. Il valore atipico SOVRADIMENSIONA la media.

Vedremo piu' avanti, con le misure di dispersione, come accopagnare altri valori alla media per evidenziare queste situazioni  -->

---
### Esercizio #4 -- Soluzione

<span style="display:block; height:1px;"></span>

<div style="font-size: 95%">

:question: &nbsp;&nbsp;&nbsp; Quali sono le medie di questi insiemi?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $x= \{40, 6, 75, 55, 34\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${\bar {x}} = {\frac {1}{n}}\left(\sum _{i=1}^{n}{x_{i}}\right) = \frac{40 + 6 + 75 + 55 + 34}{5} = 42$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $y= \{40, 6, 175, 55, 34\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${\bar {y}} = {\frac {1}{n}}\left(\sum _{i=1}^{n}{y_{i}}\right) = \frac{40 + 6 + 175 + 55 + 34}{5} = 62$

</div>

<!-- La media non e' particolarmente robusta rispetto agli outliers. Il valore atipico SOVRADIMENSIONA la media.

Vedremo piu' avanti, con le misure di dispersione, come accopagnare altri valori alla media per evidenziare queste situazioni  -->

---
## Media e valori estremi

<center>
<img src="./img/descriptive/mean_outlier.png" img height="500px" border="0px"/>
</center>

---
## La forma delle distribuzioni

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/descriptive/Relationship_between_mean_and_median_under_different_skewness.png" img height="450px" border="0px"/>
</center>


<!-- La posizione di moda media e mediana va a definire anche quella che e' la forma della distribuzione, che descrive come una Distribuzione empirica e/o Di- stribuzione di popolazione si distribuisce. 

Si dice che una distribuzione abbia una forma simmetrica quando Moda, Mediana e Media coincidono e dividono la distribuzione stessa in due parti identiche. 

Qualora que- sta condizione non si verificasse, la forma della distribuzione viene detta asimmetrica. 
Una distribuzione asimmetrica positiva `e caratterizzata da una curva in cui i valori sono raggruppati nella parte sinistra, con una lunga coda a destra (anche detta: asimmetrica a destra). 
Viceversa, una distribuzione asimmetrica negativa `e caratterizzata da una curva in cui i valori sono raggruppati nella parte destra, con una lunga coda a sinistra (anche detta: asimmetrica a sinistra). --->


---
## La forma delle distribuzioni

<span style="display:block; height:40px;"></span>

<center>
<img src="./img/descriptive/Bimodal.png" img height="420px" border="0px"/>
</center>

<!-- Si dice che una distribuzione sia bi- o multi-modale quando presenta due o piu` gobbe corrispondenti ai diversi valori che la moda puo` assumere nel campione.
 -->

 ---
## La forma delle distribuzioni

<span style="display:block; height:40px;"></span>

<center>
<img src="./img/descriptive/Bimodal_two_distro.png" img height="420px" border="0px"/>
</center>

<!-- Solitamente una distribuzione con piu' mode e' l'unione di due distribuzioni distinti (per esempio la circonferenza cranica dei bambini esposti o non esposti al fumo passivo, o i voti di chi ha frequentato o non ha frequentato le lezioni di statistica)
 -->

---
### Esercizio #5

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Nei risultati di uno studio è riportata la seguente frase:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *The mean length of stay was 22.4 days (median: 14 days).*

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; La distribuzione empirica ha una forma...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) simmetrica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) asimmetrica a destra 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) asimmetrica a sinistra
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) nessuna delle precedenti

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
const seconds_exercise_5= 60; // seconds_exercise_5
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
### Esercizio 5 -- Soluzione

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Nei risultati di uno studio è riportata la seguente frase:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *The mean length of stay was 22.4 days (median: 14 days).*

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; La distribuzione empirica ha una forma...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) simmetrica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) asimmetrica a destra &nbsp;&nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) asimmetrica a sinistra
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) nessuna delle precedenti

</div>

---
## Vox populi <sup>*</sup>


<div class="columns">
<div>

<!-- <span style="display:block; height:1px;"></span> -->

<div style="font-size: 85%" >



</div>

</div>
<div>

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/500px-Sir_Francis_Galton,_1890s.jpg" img height="380px" border="0px"/>
</center>

</div>
</div>


<div style="font-size: 70%">

<sup>*</sup> Wisdom of Crowds o Saggezza della Folla

</div>

<!-- <span style="display:block; height:1px;"></span> -->

<div style="font-size: 50%" align="right">

Galton, F. *Vox Populi*, Nature, 1907, https://doi.org/10.1038/075450a0

</div>


---
## Vox populi <sup>*</sup>


<div class="columns">
<div>

<!-- <span style="display:block; height:1px;"></span> -->

<div style="font-size: 85%" >

- Competizione presso la "Mostra del Pollame e del Bestiame da Macello, Plymounth", 1907
- Obiettivo: indovinare il peso "lavorato" della carne macellata
- Costo: 6 penny
- Partecipanti: 787
- Vincita: premio non specificato

</div>

</div>
<div>

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/Bovino_Ayrshire_03.jpg" img height="380px" border="0px"/>
</center>

</div>
</div>


<div style="font-size: 70%">

<sup>*</sup> Wisdom of Crowds o Saggezza della Folla

</div>

<!-- <span style="display:block; height:1px;"></span> -->

<div style="font-size: 50%" align="right">

Galton, F. *Vox Populi*, Nature, 1907, https://doi.org/10.1038/075450a0

</div>


---
## Vox populi <sup>*</sup>


<div class="columns">
<div>

<!-- <span style="display:block; height:1px;"></span> -->

<div style="font-size: 85%" >

- Giudizio non influenzato da passioni personali e/o proselitismo vario
- Burloni evitati dal costo di ingresso
- Premio incita a fare del proprio meglio
- Partecipano soprattutto "esperti"

</div>

</div>
<div>

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/Bovino_Ayrshire_03.jpg" img height="380px" border="0px"/>
</center>

</div>
</div>


<div style="font-size: 70%">

<sup>*</sup> Wisdom of Crowds o Saggezza della Folla

</div>

<!-- <span style="display:block; height:1px;"></span> -->

<div style="font-size: 50%" align="right">

Galton, F. *Vox Populi*, Nature, 1907, https://doi.org/10.1038/075450a0

</div>

---
## Vox populi <sup>*</sup>


<div class="columns">
<div>

<!-- <span style="display:block; height:1px;"></span> -->

<div style="font-size: 85%" >

- **Mediana** dei 787 tentativi: 1207 lb (547 kg)
- Peso "lavorato": 1198 lb (543 kg)
- Differenza: 9 lb (4kg, 0.8%)


</div>

</div>
<div>

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/500px-Sir_Francis_Galton,_1890s.jpg" img height="380px" border="0px"/>
</center>

</div>
</div>


<div style="font-size: 70%">

<sup>*</sup> Wisdom of Crowds o Saggezza della Folla

</div>

<!-- <span style="display:block; height:1px;"></span> -->

<div style="font-size: 50%" align="right">

Galton, F. *Vox Populi*, Nature, 1907, https://doi.org/10.1038/075450a0

</div>

<!--  Mediana perche' i dati potrebbero non essere simmetrici (in questo caso asimmetrici a dx, sovrastimando il peso lavorato (dressed)) -->

---
## Misure di dispersione

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/descriptive/drowning_statistician.png" img height="450px" border="0px"/>
</center>

---
## Misure di dispersione

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/descriptive/sd.png" img height="450px" border="0px"/>
</center>


---
## Misure di dispersione: range

<span style="display:block; height:1px;"></span>

:dart: &nbsp;&nbsp;&nbsp; ${\text{range}}= \text{max}-\text{min}$

<span style="display:block; height:60px;"></span>

<center>
<img src="./img/descriptive/range.png" img height="70px" border="0px"/>
</center>

<span style="display:block; height:40px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{range}= 30-5=25$

<!-- INTERVALLO di VARIAZIONE. Il range pero' si basa solo sui due valori estremi, senza indicare come si distribuiscono i dati entro l’intervallo 

piu; semplice, meno informativo  Il range ha tuttavia un'utilita' limitata: tiene conto solo di due valori, e non e' robusta quando ci sono valori estremi 

 Non fornisce però informazioni sulla distribuzione delle osservazioni: non è ad esempio possibile capire se i valori siano dispersi o raggruppati in un’estremità…

14 osservazioni
-->

---
## Misure di dispersione: range interquantile

<span style="display:block; height:1px;"></span>

:dart: &nbsp;&nbsp;&nbsp; ${\text{IQR}}= \text{Q1}-\text{Q3}$

<span style="display:block; height:20px;"></span>

<center>
<img src="./img/descriptive/iqr.png" img height="230px" border="0px"/>
</center>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{IQR}= 22 - 27$

<!-- Robusto rispetto agli outliers -->

---
## Misure di dispersione: varianza

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/descriptive/dart_variance.png" img height="450px" border="0px"/>
</center>

<!-- Misura la distanza media tra le osservazioni e la media del campione. Piu' bassa e' la varianza, piu' le osservazioni saranno vicine alla media  -->

---
## Misure di dispersione: varianza

<span style="display:block; height:1px;"></span>

<div style="font-size: 95%">

:dart: &nbsp;&nbsp;&nbsp; $s^2 = \frac{1}{n-1}\sum _{i=1}^{n}(x_{i}-\bar {x} )^{2}$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dove &nbsp;&nbsp;&nbsp; ${\bar {x}}= {\frac {1}{n}}\left(\sum _{i=1}^{n}{x_{i}}\right)$ 

<span style="display:block; height:30px;"></span>

<center>
<img src="./img/descriptive/range.png" img height="65px" border="0px"/>
</center>

<span style="display:block; height:1px;"></span>

${\bar {x}}= 23.9$
$s^2= \frac{(5-23.9)^2+(18-23.9)^2+(20-23.9)^2+ \text{ } \dots \text{ } +(28-23.9)^2+(29-23.9)^2+(30-23.9)^2}{(15-1)}=37.6$

</div>

</div>

<!-- Andiamo a fare la distanza (differenza) tra ciascun valore e la media, la eleviamo al quatrato, la sommiamo e andiamo a dividerla per la dimensione del campione - 1 -->


---
## Misure di dispersione: deviazione standard

<span style="display:block; height:1px;"></span>

<div style="font-size: 95%">

:dart: &nbsp;&nbsp;&nbsp; $s = \sqrt{s^2} = \sqrt {{\frac {1}{n-1}}\sum _{i=1}^{n}(x_{i}-\bar {x} )^{2}}$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dove &nbsp;&nbsp;&nbsp; ${\bar {x}}= {\frac {1}{n}}\left(\sum _{i=1}^{n}{x_{i}}\right)$ 

<span style="display:block; height:30px;"></span>

<center>
<img src="./img/descriptive/range.png" img height="65px" border="0px"/>
</center>

<span style="display:block; height:1px;"></span>

${\bar {x}}= 23.9$
$s= \sqrt{\frac{(5-23.9)^2+(18-23.9)^2+ \text{ } \dots \text{ } +(29-23.9)^2+(30-23.9)^2}{(15-1)}} = \sqrt{37.6}=6.1$

</div>

</div>

<!-- che nella varianza l'unità di misura è diversa da quella della variabile su cui è calcolata (abbiamo fatto il quadrato delle differenze, ricordate?), si utilizza la sua radice quadrata detta SCARTO QUADRATICO MEDIO o deviazione standard.

Esempio lunghezza della degenza, giorni e giorni^2
 -->

---
### Esercizio #6

<div style="font-size: 73%">

:question: &nbsp;&nbsp;&nbsp; Il range &egrave; sensibile alla posizione centrale della distribuzione empirica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso 

:question: &nbsp;&nbsp;&nbsp; La mediana si calcola sommando i valori e dividendoli per il loro numero
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; 

:question: &nbsp;&nbsp;&nbsp; La mediana &egrave; il valore che ha met&agrave; dei dati inferiori e met&agrave; superiori a esso
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; 

:question: &nbsp;&nbsp;&nbsp; La mediana, rispetto alla media, &egrave; pi&ugrave; sensibile ai valori estremi
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; 

:question: &nbsp;&nbsp;&nbsp; Due distribuzioni con la stessa media hanno la stessa deviazione standard
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; 


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
const seconds_exercise_6= 60; // seconds_exercise_6
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

<div style="font-size: 73%">

:question: &nbsp;&nbsp;&nbsp; Il range &egrave; sensibile alla posizione centrale della distribuzione empirica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp; :white_check_mark:

:question: &nbsp;&nbsp;&nbsp; La mediana si calcola sommando i valori e dividendoli per il loro numero
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; 

:question: &nbsp;&nbsp;&nbsp; La mediana &egrave; il valore che ha met&agrave; dei dati inferiori e met&agrave; superiori a esso
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; 

:question: &nbsp;&nbsp;&nbsp; La mediana, rispetto alla media, &egrave; pi&ugrave; sensibile ai valori estremi
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso 

:question: &nbsp;&nbsp;&nbsp; Due distribuzioni con la stessa media hanno la stessa deviazione standard
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; 

</div>

---
### Esercizio #6 -- Soluzione

<div style="font-size: 73%">

:question: &nbsp;&nbsp;&nbsp; Il range &egrave; sensibile alla posizione centrale della distribuzione empirica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp; :white_check_mark:

:question: &nbsp;&nbsp;&nbsp; La mediana si calcola sommando i valori e dividendoli per il loro numero
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp; :white_check_mark:

:question: &nbsp;&nbsp;&nbsp; La mediana &egrave; il valore che ha met&agrave; dei dati inferiori e met&agrave; superiori a esso
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; 

:question: &nbsp;&nbsp;&nbsp; La mediana, rispetto alla media, &egrave; pi&ugrave; sensibile ai valori estremi
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso 

:question: &nbsp;&nbsp;&nbsp; Due distribuzioni con la stessa media hanno la stessa deviazione standard
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; 

</div>

---
### Esercizio #6 -- Soluzione

<div style="font-size: 73%">

:question: &nbsp;&nbsp;&nbsp; Il range &egrave; sensibile alla posizione centrale della distribuzione empirica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp; :white_check_mark:

:question: &nbsp;&nbsp;&nbsp; La mediana si calcola sommando i valori e dividendoli per il loro numero
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso  &nbsp; :white_check_mark:

:question: &nbsp;&nbsp;&nbsp; La mediana &egrave; il valore che ha met&agrave; dei dati inferiori e met&agrave; superiori a esso
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero   :white_check_mark: &nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; 

:question: &nbsp;&nbsp;&nbsp; La mediana, rispetto alla media, &egrave; pi&ugrave; sensibile ai valori estremi
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso 

:question: &nbsp;&nbsp;&nbsp; Due distribuzioni con la stessa media hanno la stessa deviazione standard
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; 

</div>

---
### Esercizio #6 -- Soluzione

<div style="font-size: 73%">

:question: &nbsp;&nbsp;&nbsp; Il range &egrave; sensibile alla posizione centrale della distribuzione empirica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp; :white_check_mark:

:question: &nbsp;&nbsp;&nbsp; La mediana si calcola sommando i valori e dividendoli per il loro numero
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero &nbsp;&nbsp;&nbsp;&nbsp; b) Falso  &nbsp; :white_check_mark:

:question: &nbsp;&nbsp;&nbsp; La mediana &egrave; il valore che ha met&agrave; dei dati inferiori e met&agrave; superiori a esso
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero   :white_check_mark: &nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; 

:question: &nbsp;&nbsp;&nbsp; La mediana, rispetto alla media, &egrave; pi&ugrave; sensibile ai valori estremi
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp; :white_check_mark:

:question: &nbsp;&nbsp;&nbsp; Due distribuzioni con la stessa media hanno la stessa deviazione standard
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; 

</div>

---
### Esercizio #6 -- Soluzione

<div style="font-size: 73%">

:question: &nbsp;&nbsp;&nbsp; Il range &egrave; sensibile alla posizione centrale della distribuzione empirica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp; :white_check_mark:

:question: &nbsp;&nbsp;&nbsp; La mediana si calcola sommando i valori e dividendoli per il loro numero
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero &nbsp;&nbsp;&nbsp;&nbsp; b) Falso  &nbsp; :white_check_mark:

:question: &nbsp;&nbsp;&nbsp; La mediana &egrave; il valore che ha met&agrave; dei dati inferiori e met&agrave; superiori a esso
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero   :white_check_mark: &nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; 

:question: &nbsp;&nbsp;&nbsp; La mediana, rispetto alla media, &egrave; pi&ugrave; sensibile ai valori estremi
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp; :white_check_mark:

:question: &nbsp;&nbsp;&nbsp; Due distribuzioni con la stessa media hanno la stessa deviazione standard
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp; :white_check_mark:

</div>

--- 
## I valori estremi

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/outliers_in_the_wild.png" img height="450px" border="0px"/>
</center>

<div style="font-size: 50%">

Reilly, J. *et al.*. *Procedure‐Specific Surgical Site Infection Rates and Postdischarge Surveillance in Scotland*,  Infection Control and Hospital Epidemiology, 2006, doi:10.1086/509839  

</div>

<!-- Scelta della misura di tendenza centrale
- media se la distribuzione è simmetrica
- mediana se la distribuzione NON è simmetrica (forse a causa di valori estremi)
- moda per indicare il valore più comune nell’ambito della distribuzione  (ma come accennavo piu' usato nel caso di variabile categoriche)

Inoltre, Se la numerosità del campione è piccola, la mediana e il range interquartile sono misure più robuste
-->

---
### Esercizio #7

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Nei risultati di uno studio è riportata la seguente frase:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *The density of calcification in the coronary artery averaged 68.9&plusmn;244.2 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (range 0 to 1526) in  patients and 8.8&plusmn;41.8 (range 0 to 243.4) in controls.*

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Come descrivereste in Table 1 questa variabile?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) con media e deviazione standard
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) con mediana e interquantile range 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) con mediana e deviazione standard
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) non ho abbastanza elementi per decidere

</div>

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
const seconds_exercise_7= 60; // seconds_exercise_7
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



<!-- Valutando i valori numerici (media e DS), come 
con la media e la deviazione standard (come per tutte le altre variabili in tabella) 
con la mediana e il range interquartile (perché la variabile non ha una distribuzione normale) -->

---
### Esercizio #7 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Nei risultati di uno studio è riportata la seguente frase:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *The density of calcification in the coronary artery averaged 68.9&plusmn;244.2 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (range 0 to 1526) in  patients and 8.8&plusmn;41.8 (range 0 to 243.4) in controls.*

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Come descrivereste in Table 1 questa variabile?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) con media e deviazione standard
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) con mediana e interquantile range  &nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) con mediana e deviazione standard
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d)  non ho abbastanza elementi per decidere

</div>

---
### Esercizio #8

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

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; la percentuale femmine nel 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gruppo di intervento?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) 13%
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) 12%
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) 18%
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) 17%
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e) Non &egrave; possibile capirlo dalla tabella 

</div>

<span style="display:block; height:100px;"></span>

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
const seconds_exercise_8= 30; // seconds_exercise_8
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



</div>
</div>

---
### Esercizio #8 -- Soluzione

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

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; la percentuale femmine nel 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gruppo di intervento?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) 13%
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) 12% &nbsp;&nbsp; :white_check_mark: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) 18%
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) 17%
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e) Non &egrave; possibile capirlo dalla tabella 


</div>

<span style="display:block; height:100px;"></span>


</div>
</div>

---
### Esercizio #9

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

:question: &nbsp;&nbsp;&nbsp; In questo studio, l'et&agrave; &egrave; stata raccolta 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; come una variabile...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) categorica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) ordinale
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) numerica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) non &egrave; possibile dirlo  

</div>

<span style="display:block; height:100px;"></span>

<style>
  #countdown_exercise_9{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_9.running {
    background-color: green;
  }
  #countdown_exercise_9.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_9"></button>

<script>
<!--
const countdown_exercise_9= document.getElementById("countdown_exercise_9");
const seconds_exercise_9= 30; // seconds_exercise_9
let timeLeft_exercise_9= seconds_exercise_9;
let timerInterval_exercise_9= null;

function formatTime_exercise_9(seconds_exercise_9) {
  const minutes = Math.floor(seconds_exercise_9/ 60);
  const remainingseconds_exercise_9= seconds_exercise_9% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_9).padStart(2, '0')}`;
}

function updateButton_exercise_9() {
  countdown_exercise_9.textContent = formatTime_exercise_9(timeLeft_exercise_9);
}

function startTimer_exercise_9() {
  if (timerInterval_exercise_9=== null) {
    countdown_exercise_9.classList.add('running');
    countdown_exercise_9.classList.remove('finished');
    timerInterval_exercise_9= setInterval(() => {
      if (timeLeft_exercise_9> 0) {
        timeLeft_exercise_9--;
        updateButton_exercise_9();
      } else {
        clearInterval(timerInterval_exercise_9);
        timerInterval_exercise_9= null;
        countdown_exercise_9.classList.remove('running');
        countdown_exercise_9.classList.add('finished');
        countdown_exercise_9.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_9();
  }
}

function pauseTimer_exercise_9() {
  clearInterval(timerInterval_exercise_9);
  timerInterval_exercise_9= null;
  countdown_exercise_9.classList.remove('running');
}

function resetTimer_exercise_9() {
  timeLeft_exercise_9= seconds_exercise_9;
  updateButton_exercise_9();
  countdown_exercise_9.classList.remove('finished');
  countdown_exercise_9.classList.remove('running');
  timerInterval_exercise_9= null;
}

countdown_exercise_9.addEventListener("click", () => {
  if (countdown_exercise_9.classList.contains('finished')) {
    resetTimer_exercise_9();
  } else {
    startTimer_exercise_9();
  }
});

updateButton_exercise_9();
-->
</script>



</div>
</div>

---
### Esercizio #9 -- Soluzione

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

:question: &nbsp;&nbsp;&nbsp; In questo studio, l'et&agrave; &egrave; stata raccolta 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; come una variabile...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) categorica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) ordinale
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) numerica &nbsp;&nbsp; :white_check_mark: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) non &egrave; possibile dirlo  

</div>

<span style="display:block; height:100px;"></span>


</div>
</div>


---
### Esercizio #10

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

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; l’et&agrave; media nel gruppo
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; di controllo?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) 10.4
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) 4.1
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) 4.0
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Non &egrave; possibile capirlo dalla tabella 

</div>

<span style="display:block; height:100px;"></span>

<style>
  #countdown_exercise_10{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_10.running {
    background-color: green;
  }
  #countdown_exercise_10.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_10"></button>

<script>
<!--
const countdown_exercise_10= document.getElementById("countdown_exercise_10");
const seconds_exercise_10= 30; // seconds_exercise_10
let timeLeft_exercise_10= seconds_exercise_10;
let timerInterval_exercise_10= null;

function formatTime_exercise_10(seconds_exercise_10) {
  const minutes = Math.floor(seconds_exercise_10/ 60);
  const remainingseconds_exercise_10= seconds_exercise_10% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_10).padStart(2, '0')}`;
}

function updateButton_exercise_10() {
  countdown_exercise_10.textContent = formatTime_exercise_10(timeLeft_exercise_10);
}

function startTimer_exercise_10() {
  if (timerInterval_exercise_10=== null) {
    countdown_exercise_10.classList.add('running');
    countdown_exercise_10.classList.remove('finished');
    timerInterval_exercise_10= setInterval(() => {
      if (timeLeft_exercise_10> 0) {
        timeLeft_exercise_10--;
        updateButton_exercise_10();
      } else {
        clearInterval(timerInterval_exercise_10);
        timerInterval_exercise_10= null;
        countdown_exercise_10.classList.remove('running');
        countdown_exercise_10.classList.add('finished');
        countdown_exercise_10.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_10();
  }
}

function pauseTimer_exercise_10() {
  clearInterval(timerInterval_exercise_10);
  timerInterval_exercise_10= null;
  countdown_exercise_10.classList.remove('running');
}

function resetTimer_exercise_10() {
  timeLeft_exercise_10= seconds_exercise_10;
  updateButton_exercise_10();
  countdown_exercise_10.classList.remove('finished');
  countdown_exercise_10.classList.remove('running');
  timerInterval_exercise_10= null;
}

countdown_exercise_10.addEventListener("click", () => {
  if (countdown_exercise_10.classList.contains('finished')) {
    resetTimer_exercise_10();
  } else {
    startTimer_exercise_10();
  }
});

updateButton_exercise_10();
-->
</script>

</div>
</div>

---
### Esercizio #10 -- Soluzione

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

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; l’et&agrave; media nel gruppo
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; di controllo?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) 10.4 &nbsp;&nbsp; :white_check_mark: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) 4.1
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) 4.0
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Non &egrave; possibile capirlo dalla tabella 

</div>

<span style="display:block; height:100px;"></span>


</div>
</div>


---
<span style="display:block; height:150px;"></span>

# La visualizzazione dei dati numerici
 

---
## Istogramma

<div class="columns">
<div>

<span style="display:block; height:350px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, *Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/Age_histogram_bin1.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- Un istogramma prende in input una variabile numerica che viene discretizzata in classi (o bins)
and the number of observation per bin is represented by the height of the bar.
.
Play with the bin size, it can give different insight.
 -->

---
## Istogramma

<div class="columns">
<div>

<span style="display:block; height:350px;"></span>


<div style="font-size: 50%">
 
Visconti A., *et al.*, *Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/Age_histogram_bin5.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- 
Play with the bin size, it can give different insight.

Avoid filling with color palettes. anche se 
 -->

---
## Istogramma

<div class="columns">
<div>

<span style="display:block; height:350px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, *Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/Age_histogram_bin5_response.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!--  il colore e' utile per rappresentare la distribution of several variable on the same axis , cosa possibile using this technique.

Anche se a volte pou' essere confuso
 -->

---
## Poligono di frequenza

<div class="columns">
<div>

<span style="display:block; height:350px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, *Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/Age_histogram_bin5_response_freq_poly.png" img height="500px" border="4px"/>
</center>

</div>
</div>

---
## Miami plot/Mirror histogram

<div class="columns">
<div>

<span style="display:block; height:350px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, *Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/Age_histogram_bin5_response_mirror.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- No legenda, uso i colori, ho fissato gli assi 
Ovviamente si puo' usare solo se ci sono due variabili, ne avessimo 3 o piu' ricadremmo nel caso precedente
-->

---
## Boxplot

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/visualization/boxplot_explanation.png" img height="450px" border="0px"/>
</center>

<div style="font-size: 50%" align="right">

https://r-graph-gallery.com/boxplot

</div>

<!-- o box and whiskers plot, o diagramma a scatola e baffi o diagram- ma degli estremi e dei quartili, `e una rappresentazione grafica utilizzata per descrivere la distribuzione di una Variabile continua o una Variabi- le discreta utilizzando sia indici di dispersione (Inter-quartile range) sia di posizione (Mediana e Quartile). Viene rappresentato da un rettangolo (box) e da due segmenti (whiskers o baffi). Il rettangolo `e delimitato dal primo e dal terzo quartile e diviso al suo interno dalla mediana (o secondo quartile). La lunghezza dei segmenti rappresenta 1.5 volte l’interquarti- le range. I punti oltre il segmento rappresentano dei (possibili) Valori estremi. 

Non usare colori
-->

---
## Boxplot

<div class="columns">
<div>

<span style="display:block; height:350px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/Boxplot_age_ORR_simple.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- 
Boxplot hides the sample size of each group, show it with annotation or box width.

Boxplot hides the underlying distribution. Use jitter if low number of data points, or use violin with bigger data.
 -->

---
## Boxplot

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/visualization/box-plot-vs-histogram-w-callouts.png" img height="450px" border="4px"/>
</center>

<div style="font-size: 50%" align="right">

https://nightingaledvs.com/ive-stopped-using-box-plots-should-you/

</div>

<!-- 
Boxplot hides the sample size of each group, show it with annotation or box width.

Boxplot hides the underlying distribution. Use jitter if low number of data points, or use violin with bigger data.
 -->

---
## Boxplot

<div class="columns">
<div>

<span style="display:block; height:350px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, *Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma*, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/Boxplot_age_ORR_violin.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- Boxplot hides the sample size of each group, show it with annotation or box width.

Boxplot hides the underlying distribution. Use jitter if low number of data points, or use violin with bigger data. Leggermente bimodale -->


---
### Esercizio #11

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/phonecall.png" img height="400px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Questi dati sono stati raccolti intervistando 89 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; studenti universitari fuori sede

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qual &egrave; il modo migliore per descriverli?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) La media perch&eacute; i dati sono numerici discreti e 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; la distribuzione &egrave; abbastanza simmetrica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) La mediana perch&eacute; i dati sono numerici discreti e 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; la distribuzione &egrave; abbastanza simmetrica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) La moda perch&eacute; i dati sono numerici discreti e 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; la distribuzione &egrave; abbastanza simmetrica


</div>

<style>
  #countdown_exercise_11{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_11.running {
    background-color: green;
  }
  #countdown_exercise_11.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_11"></button>

<script>
<!--
const countdown_exercise_11= document.getElementById("countdown_exercise_11");
const seconds_exercise_11= 15; // seconds_exercise_11
let timeLeft_exercise_11= seconds_exercise_11;
let timerInterval_exercise_11= null;

function formatTime_exercise_11(seconds_exercise_11) {
  const minutes = Math.floor(seconds_exercise_11/ 60);
  const remainingseconds_exercise_11= seconds_exercise_11% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_11).padStart(2, '0')}`;
}

function updateButton_exercise_11() {
  countdown_exercise_11.textContent = formatTime_exercise_11(timeLeft_exercise_11);
}

function startTimer_exercise_11() {
  if (timerInterval_exercise_11=== null) {
    countdown_exercise_11.classList.add('running');
    countdown_exercise_11.classList.remove('finished');
    timerInterval_exercise_11= setInterval(() => {
      if (timeLeft_exercise_11> 0) {
        timeLeft_exercise_11--;
        updateButton_exercise_11();
      } else {
        clearInterval(timerInterval_exercise_11);
        timerInterval_exercise_11= null;
        countdown_exercise_11.classList.remove('running');
        countdown_exercise_11.classList.add('finished');
        countdown_exercise_11.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_11();
  }
}

function pauseTimer_exercise_11() {
  clearInterval(timerInterval_exercise_11);
  timerInterval_exercise_11= null;
  countdown_exercise_11.classList.remove('running');
}

function resetTimer_exercise_11() {
  timeLeft_exercise_11= seconds_exercise_11;
  updateButton_exercise_11();
  countdown_exercise_11.classList.remove('finished');
  countdown_exercise_11.classList.remove('running');
  timerInterval_exercise_11= null;
}

countdown_exercise_11.addEventListener("click", () => {
  if (countdown_exercise_11.classList.contains('finished')) {
    resetTimer_exercise_11();
  } else {
    startTimer_exercise_11();
  }
});

updateButton_exercise_11();
-->
</script>

---
### Esercizio #11 -- Soluzione

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/phonecall.png" img height="400px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Questi dati sono stati raccolti intervistando 89 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; studenti universitari fuori sede

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qual &egrave; il modo migliore per descriverli?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) La media perch&eacute; i dati sono numerici discreti e 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; la distribuzione &egrave; abbastanza simmetrica &nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) La mediana perch&eacute; i dati sono numerici discreti e 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; la distribuzione &egrave; abbastanza simmetrica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) La moda perch&eacute; i dati sono numerici discreti e 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; la distribuzione &egrave; abbastanza simmetrica

</div>

---
### Esercizio #12

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/fines.png" img height="400px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Questi dati sono stati raccolti intervistando 22 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; automobilisti 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qual &egrave; il modo migliore per descriverli?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) La media perch&eacute; i dati sono numerici discreti e 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; la distribuzione &egrave; molto asimmetrica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) La mediana perch&eacute; i dati sono numerici discreti e &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; la distribuzione &egrave; molto asimmetrica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) La moda perch&eacute; i dati sono numerici discreti e &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; la distribuzione &egrave; molto asimmetrica

</div>

<style>
  #countdown_exercise_12{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_12.running {
    background-color: green;
  }
  #countdown_exercise_12.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_12"></button>

<script>
<!--
const countdown_exercise_12= document.getElementById("countdown_exercise_12");
const seconds_exercise_12= 15; // seconds_exercise_12
let timeLeft_exercise_12= seconds_exercise_12;
let timerInterval_exercise_12= null;

function formatTime_exercise_12(seconds_exercise_12) {
  const minutes = Math.floor(seconds_exercise_12/ 60);
  const remainingseconds_exercise_12= seconds_exercise_12% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_12).padStart(2, '0')}`;
}

function updateButton_exercise_12() {
  countdown_exercise_12.textContent = formatTime_exercise_12(timeLeft_exercise_12);
}

function startTimer_exercise_12() {
  if (timerInterval_exercise_12=== null) {
    countdown_exercise_12.classList.add('running');
    countdown_exercise_12.classList.remove('finished');
    timerInterval_exercise_12= setInterval(() => {
      if (timeLeft_exercise_12> 0) {
        timeLeft_exercise_12--;
        updateButton_exercise_12();
      } else {
        clearInterval(timerInterval_exercise_12);
        timerInterval_exercise_12= null;
        countdown_exercise_12.classList.remove('running');
        countdown_exercise_12.classList.add('finished');
        countdown_exercise_12.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_12();
  }
}

function pauseTimer_exercise_12() {
  clearInterval(timerInterval_exercise_12);
  timerInterval_exercise_12= null;
  countdown_exercise_12.classList.remove('running');
}

function resetTimer_exercise_12() {
  timeLeft_exercise_12= seconds_exercise_12;
  updateButton_exercise_12();
  countdown_exercise_12.classList.remove('finished');
  countdown_exercise_12.classList.remove('running');
  timerInterval_exercise_12= null;
}

countdown_exercise_12.addEventListener("click", () => {
  if (countdown_exercise_12.classList.contains('finished')) {
    resetTimer_exercise_12();
  } else {
    startTimer_exercise_12();
  }
});

updateButton_exercise_12();
-->
</script>

---
### Esercizio #12 -- Soluzione

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/fines.png" img height="400px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Questi dati sono stati raccolti intervistando 22 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; automobilisti 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qual &egrave; il modo migliore per descriverli?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) La media perch&eacute; i dati sono numerici discreti e 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; la distribuzione &egrave; molto asimmetrica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) La mediana perch&eacute; i dati sono numerici discreti e &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; la distribuzione &egrave; molto asimmetrica &nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) La moda perch&eacute; i dati sono numerici discreti e &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; la distribuzione &egrave; molto asimmetrica

</div>

---
### Esercizio #13

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/hypnosis_not_from_zero.png" img height="400px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Questi dati sono stati raccolti intervistando 870 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; psicologi 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qual &egrave; il modo migliore per descriverli?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) La media perch&eacute; i dati sono categorici e la
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; distribuzione &egrave; asimmetrica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) La mediana perch&eacute; i dati sono categorici e la
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; distribuzione &egrave;  asimmetrica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) La moda perch&eacute; i dati sono categorici 

</div>

<style>
  #countdown_exercise_13{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_13.running {
    background-color: green;
  }
  #countdown_exercise_13.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_13"></button>

<script>
<!--
const countdown_exercise_13= document.getElementById("countdown_exercise_13");
const seconds_exercise_13= 15; // seconds_exercise_13
let timeLeft_exercise_13= seconds_exercise_13;
let timerInterval_exercise_13= null;

function formatTime_exercise_13(seconds_exercise_13) {
  const minutes = Math.floor(seconds_exercise_13/ 60);
  const remainingseconds_exercise_13= seconds_exercise_13% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_13).padStart(2, '0')}`;
}

function updateButton_exercise_13() {
  countdown_exercise_13.textContent = formatTime_exercise_13(timeLeft_exercise_13);
}

function startTimer_exercise_13() {
  if (timerInterval_exercise_13=== null) {
    countdown_exercise_13.classList.add('running');
    countdown_exercise_13.classList.remove('finished');
    timerInterval_exercise_13= setInterval(() => {
      if (timeLeft_exercise_13> 0) {
        timeLeft_exercise_13--;
        updateButton_exercise_13();
      } else {
        clearInterval(timerInterval_exercise_13);
        timerInterval_exercise_13= null;
        countdown_exercise_13.classList.remove('running');
        countdown_exercise_13.classList.add('finished');
        countdown_exercise_13.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_13();
  }
}

function pauseTimer_exercise_13() {
  clearInterval(timerInterval_exercise_13);
  timerInterval_exercise_13= null;
  countdown_exercise_13.classList.remove('running');
}

function resetTimer_exercise_13() {
  timeLeft_exercise_13= seconds_exercise_13;
  updateButton_exercise_13();
  countdown_exercise_13.classList.remove('finished');
  countdown_exercise_13.classList.remove('running');
  timerInterval_exercise_13= null;
}

countdown_exercise_13.addEventListener("click", () => {
  if (countdown_exercise_13.classList.contains('finished')) {
    resetTimer_exercise_13();
  } else {
    startTimer_exercise_13();
  }
});

updateButton_exercise_13();
-->
</script>

---
### Esercizio #13 -- Soluzione

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/hypnosis_not_from_zero.png" img height="400px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Questi dati sono stati raccolti intervistando 870 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; psicologi 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qual &egrave; il modo migliore per descriverli?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) La media perch&eacute; i dati sono categorici e la
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; distribuzione &egrave; asimmetrica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) La mediana perch&eacute; i dati sono categorici e la
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; distribuzione &egrave;  asimmetrica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) La moda perch&eacute; i dati sono categorici &nbsp; :white_check_mark:

</div>

---
### Esercizio #14

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/hypnosis_not_from_zero.png" img height="400px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Questi dati sono stati raccolti intervistando 870 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; psicologi 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; La rappresentazione usata &egrave; corretta?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) S&igrave;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) No

</div>

<span style="display:block; height:100px;"></span>

<style>
  #countdown_exercise_14{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_14.running {
    background-color: green;
  }
  #countdown_exercise_14.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_14"></button>

<script>
<!--
const countdown_exercise_14= document.getElementById("countdown_exercise_14");
const seconds_exercise_14= 15; // seconds_exercise_14
let timeLeft_exercise_14= seconds_exercise_14;
let timerInterval_exercise_14= null;

function formatTime_exercise_14(seconds_exercise_14) {
  const minutes = Math.floor(seconds_exercise_14/ 60);
  const remainingseconds_exercise_14= seconds_exercise_14% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_14).padStart(2, '0')}`;
}

function updateButton_exercise_14() {
  countdown_exercise_14.textContent = formatTime_exercise_14(timeLeft_exercise_14);
}

function startTimer_exercise_14() {
  if (timerInterval_exercise_14=== null) {
    countdown_exercise_14.classList.add('running');
    countdown_exercise_14.classList.remove('finished');
    timerInterval_exercise_14= setInterval(() => {
      if (timeLeft_exercise_14> 0) {
        timeLeft_exercise_14--;
        updateButton_exercise_14();
      } else {
        clearInterval(timerInterval_exercise_14);
        timerInterval_exercise_14= null;
        countdown_exercise_14.classList.remove('running');
        countdown_exercise_14.classList.add('finished');
        countdown_exercise_14.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_14();
  }
}

function pauseTimer_exercise_14() {
  clearInterval(timerInterval_exercise_14);
  timerInterval_exercise_14= null;
  countdown_exercise_14.classList.remove('running');
}

function resetTimer_exercise_14() {
  timeLeft_exercise_14= seconds_exercise_14;
  updateButton_exercise_14();
  countdown_exercise_14.classList.remove('finished');
  countdown_exercise_14.classList.remove('running');
  timerInterval_exercise_14= null;
}

countdown_exercise_14.addEventListener("click", () => {
  if (countdown_exercise_14.classList.contains('finished')) {
    resetTimer_exercise_14();
  } else {
    startTimer_exercise_14();
  }
});

updateButton_exercise_14();
-->
</script>

---
### Esercizio #14

<!-- <span style="display:block; height:1px;"></span> -->

<div style="font-size: 70%">

:question: &nbsp; Quale rappresentazione grafica &egrave; corretta?

</div>

<span style="display:block; height:1px;"></span>

<div class="columns">
<div>

<img src="./img/descriptive/hypnosis_not_from_zero.png" img height="392px" align="left" border="4px"/> 

</div>
<div>

<img src="./img/descriptive/hypnosis.png" img height="400px" align="left" border="4px"/>

</div>
</div>


---
### Esercizio #14 -- Soluzione

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/hypnosis_not_from_zero.png" img height="400px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Questi dati sono stati raccolti intervistando 870 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; psicologi 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; La rappresentazione usata &egrave; corretta?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) S&igrave;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) No &nbsp; :white_check_mark:

</div>

---
### Esercizio #15

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/gym.png" img height="400px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Questi dati sono stati raccolti intervistando  41 genitori
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  in un parco giochi.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qual &egrave; il modo migliore per descriverli?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Gli intervistati spendono tra le 0 e le 9 ore 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in palestra, con una media di 3.4 $\pm$  3.4 ore 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (mediana: 5 ore; moda: 0 ore).


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Circa la met&agrave; degli intervistati ha riportato di non
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; essere andata in palestra. I rimanenti spendono 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in palestra tra le 5 e le 9 ore, con una media  di 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6.6 $\pm$ 1.1 ore  (mediana: 7 ore)

</div>


<style>
  #countdown_exercise_15{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_15.running {
    background-color: green;
  }
  #countdown_exercise_15.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_15"></button>

<script>
<!--
const countdown_exercise_15= document.getElementById("countdown_exercise_15");
const seconds_exercise_15= 60; // seconds_exercise_15
let timeLeft_exercise_15= seconds_exercise_15;
let timerInterval_exercise_15= null;

function formatTime_exercise_15(seconds_exercise_15) {
  const minutes = Math.floor(seconds_exercise_15/ 60);
  const remainingseconds_exercise_15= seconds_exercise_15% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_15).padStart(2, '0')}`;
}

function updateButton_exercise_15() {
  countdown_exercise_15.textContent = formatTime_exercise_15(timeLeft_exercise_15);
}

function startTimer_exercise_15() {
  if (timerInterval_exercise_15=== null) {
    countdown_exercise_15.classList.add('running');
    countdown_exercise_15.classList.remove('finished');
    timerInterval_exercise_15= setInterval(() => {
      if (timeLeft_exercise_15> 0) {
        timeLeft_exercise_15--;
        updateButton_exercise_15();
      } else {
        clearInterval(timerInterval_exercise_15);
        timerInterval_exercise_15= null;
        countdown_exercise_15.classList.remove('running');
        countdown_exercise_15.classList.add('finished');
        countdown_exercise_15.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_15();
  }
}

function pauseTimer_exercise_15() {
  clearInterval(timerInterval_exercise_15);
  timerInterval_exercise_15= null;
  countdown_exercise_15.classList.remove('running');
}

function resetTimer_exercise_15() {
  timeLeft_exercise_15= seconds_exercise_15;
  updateButton_exercise_15();
  countdown_exercise_15.classList.remove('finished');
  countdown_exercise_15.classList.remove('running');
  timerInterval_exercise_15= null;
}

countdown_exercise_15.addEventListener("click", () => {
  if (countdown_exercise_15.classList.contains('finished')) {
    resetTimer_exercise_15();
  } else {
    startTimer_exercise_15();
  }
});

updateButton_exercise_15();
-->
</script>

---
### Esercizio #15 -- Soluzione

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/gym.png" img height="400px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Questi dati sono stati raccolti intervistando  41 genitori
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  in un parco giochi.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qual &egrave; il modo migliore per descriverli?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Gli intervistati spendono tra le 0 e le 9 ore 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in palestra, con una media di 3.4 $\pm$  3.4 ore 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (mediana: 5 ore; moda: 0 ore).


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Circa la met&agrave; degli intervistati ha riportato di non
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; essere andata in palestra. I rimanenti spendono 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in palestra tra le 5 e le 9 ore, con una media  di 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6.6 $\pm$ 1.1 ore  (mediana: 7 ore) &nbsp;&nbsp; :white_check_mark:

</div>

---
### Esercizio #16

<div style="font-size: 90%">

Quanti partner (etero)sessuali le persone in Gran Bretagna riferiscono di aver avuto nella loro vita?

<!-- The purpose of this question is not simply to be nosey about people’s private lives. When AIDS first became a serious concern in the 1980s, public health officials realized that there was no reliable evidence about sexual behaviour in Britain, particularly in terms of the frequency with which people changed partners, how many had multiple simultaneous partners, and what sexual practices people engaged in. This knowledge was essential to predict the spread of sexually transmitted diseases through society and to plan health services

resulting in the National Sexual Attitudes and Lifestyle Survey (Natsal) which has been carried out in the UK every ten years since 1990.
 -->

---
### Esercizio #16

<div style="font-size: 90%">

Quanti partner (etero)sessuali le persone in Gran Bretagna riferiscono di aver avuto nella loro vita?

</div>

<div class="columns">
<div>

<div style="font-size: 90%">

<br/>

:question: &nbsp;&nbsp;&nbsp; Cosa ci dicono 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; queste statistiche? 

<span style="display:block; height:120px;"></span>

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

Pensa (Think) &nbsp;&nbsp;&nbsp; <button id="countdown_think"></button>

<script>
<!--
const countdown_think = document.getElementById("countdown_think");
const seconds_think = 60; // seconds_think
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

</div>

</div>
<div>

<div style="font-size: 70%">

<center>

|  | Uomini 35-44 | Donne 35-44 |
| ----: | -----: | ----: |
| Moda | 1 | 1  |
| Range | 0-500 | 0-550  |
| Media |  14.3 | 8.5 | 
| SD | 24.2 | 19.7  | 
| Mediana |  8 | 5  | 
| IQR | 4-18 | 3-10  |

</center>

</div>
</div>
	
<!-- The third survey, known as Natsal-3, was carried out around 2010. Table 2.2 shows the summary statistics concerning the number of (opposite-sex) sexual partners reported by people aged 35–44 in Natsal-3. 

 It is a good exercise to use these summaries alone to try to reconstruct what the pattern of data might look like.
-->

---
### Esercizio #16

<div style="font-size: 90%">

Quanti partner (etero)sessuali le persone in Gran Bretagna riferiscono di aver avuto nella loro vita?

</div>

<div class="columns">
<div>

<div style="font-size: 90%">

<br/>

:question: &nbsp;&nbsp;&nbsp; Cosa ci dicono 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; queste statistiche? 

<span style="display:block; height:120px;"></span>

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

Scambia (Pair) &nbsp;&nbsp;&nbsp; <button id="countdown_pair"></button>

<script>
<!--
const countdown_pair = document.getElementById("countdown_pair");
const seconds_pair = 120; // seconds_pair
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


</div>

</div>
<div>

<div style="font-size: 70%">

<center>

|  | Uomini 35-44 | Donne 35-44 |
| ----: | -----: | ----: |
| Moda | 1 | 1  |
| Range | 0-500 | 0-550  |
| Media |  14.3 | 8.5 | 
| SD | 24.2 | 19.7  | 
| Mediana |  8 | 5  | 
| IQR | 4-18 | 3-10  |

</center>

</div>
</div>

---
### Esercizio #16

<div style="font-size: 90%">

Quanti partner (etero)sessuali le persone in Gran Bretagna riferiscono di aver avuto nella loro vita?

</div>

<div class="columns">
<div>

<div style="font-size: 90%">

<br/>

:question: &nbsp;&nbsp;&nbsp; Cosa ci dicono 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; queste statistiche? 

<span style="display:block; height:120px;"></span>

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

Condividi (Share) &nbsp;&nbsp;&nbsp; <button id="countdown_share"></button>

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

</div>

</div>
<div>

<div style="font-size: 70%">

<center>

|  | Uomini 35-44 | Donne 35-44 |
| ----: | -----: | ----: |
| Moda | 1 | 1  |
| Range | 0-500 | 0-550  |
| Media |  14.3 | 8.5 | 
| SD | 24.2 | 19.7  | 
| Mediana |  8 | 5  | 
| IQR | 4-18 | 3-10  |

</center>

</div>
</div>


<!-- We note that the most common single value (mode) is 1, representing those people who have only had one partner in their life, and yet there is also a massive range. 

This is also reflected by the substantial difference between the means and the medians, which is a telling sign of data distributions with long right-hand tails. 

The standard deviations are large, but this is an inappropriate measure of spread for such a data distribution, since it will be unduly influenced by a few extremely high values.

The responses of men and women may be compared by noting that men reported a mean-average of 6 more sexual partners than women, or alternatively that the average man (the median) reported 3 more sexual partners than the average woman. Or that, in relative terms, men report around 60% more partners than do women for both the mean and the median. 

This difference might arouse our suspicions about the data. In a closed population with the same number of men and women with a similar age profile, it is a mathematical fact that the mean number of opposite-sex partners should be essentially the same for men and for women (think of handshake) 

So why are men reporting so many more partners than women in this age group of 35–44? This could partly be because of men having younger partners, but also because there appears to be systematic differences in the way men and women count and report their sexual histories. We might suspect that men may be more likely to overplay their number of partners, or women underplay them, or both.
-->

---
### Esercizio #16 (bis)

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Il grafico della distribuzione conferma quello che abbiamo detto? 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Aggiunge informazione? 

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/British_sex_partner_histogram.png" img height="350px" border="4px"/>
</center>

<div style="font-size: 50%" align="right">

Spiegelhalter, D., *The Art of Statistics: Learning From Data*, Pelican, 2019 (Edizione Italiana: Einaudi, 2020)

</div>


<!-- ---
Bimps sulle decine, asimmetrica
Multimodale, particolarmente accentuato sull'1 -->


---
### La relazione (lineare) tra due variabili numeriche


<div style="font-size: 78%">

Cosa &egrave; successo ai bambini sottoposti a interventi cardiochirugici in alcuni ospedali britannici tra il 1991 e il 1995?

</div>

<div style="font-size: 48%">

<center>

Ospedale | Interventi | Sopravvissuti (N) | Morti (N) | Sopravvissuti (%) | Morti (%) |
----:    | ----: | ----: | ----: | ----: | ----: |
Bristol |        143 |       102 |     41 |              71.3 |            28.7 |
Leicester |        187 |       162 |     25 |              86.6 |            13.4 |
Leeds |        323 |       299 |     24 |              92.6 |             7.4 |
Oxford |        122 |        99 |     23 |              81.1 |            18.9 |
Guys |        164 |       139 |     25 |              84.8 |            15.2 |
Liverpool |        405 |       363 |     42 |              89.6 |            10.4 |
Southampton |        239 |       215 |     24 |              90.0 |            10.0 |
Great Ormond St |        482 |       429 |     53 |              89.0 |            11.0 |
Newcastle |        195 |       169 |     26 |              86.7 |            13.3 |
Harefield |        177 |       152 |     25 |              85.9 |            14.1 |
Birmingham |        581 |       523 |     58 |              90.0 |            10.0 |
Brompton |        301 |       270 |     31 |              89.7 |            10.3 |


</center>

</div>

<div style="font-size: 40%" align="right">

D.J. Spiegelhalter *et al.*, *Commissioned Analysis of Surgical Performance Using Routine Data: <br/> Lessons from the Bristol Inquiry*, 2002, Journal of the Royal Statistical Society Series A: Statistics in Society

</div>


<!-- Public concern did not die down, and an official inquiry was ordered: this brought in a team of statisticians who were given the grim task of comparing the survival rates in Bristol with elsewhere in the UK between 1984 and 1995. 

Sto mostrando sia morti che sopravvissuti per evirare positive/negative framing, che abbiamo visto nella lezione introduttiva

Non facile da capire cosa succede, una tabella con molte righe e colonne
 -->

---
## Visualizziamo i dati

<span style="display:block; height:1px;"></span>

<div class="columns">
<div>

<center>
<img src="./img/descriptive/Children_death.png" img height="500px" border="4px"/>
</center>

</div>
<div>

</div>
</div>

<!-- Come si chiama questa rappresentazione grafica? 
Istogramma 

- label lunghe, meglio in orizzontale
- ordinati per frequenza, cosi' a colpo d'occhio si capisce chi ha piu' o meno morti

Da questo plot, sembrerebbe che Bristol non sia il posto piu' problematico
-->

---
## Visualizziamo i dati

<span style="display:block; height:1px;"></span>

<div class="columns">
<div>

<center>
<img src="./img/descriptive/Children_death.png" img height="500px" border="4px"/>
</center>

</div>
<div>

<center>
<img src="./img/descriptive/Children_surgery.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- 
Andiamo ora a metterci il numero totale di interventi

Qui si vede gia' la differenza con Bristol. 
Notate che questa volta li ho ordinati secondo l'ordine utilizzato nel primo plot, per facilitare la comparazione.

Da questa doppia visualizzazione sembrerebbe che ci sia anche una relazione tra le due variabili: piu' unterventi si fanno, piu' morti ci sono

Ma c'e' una visualizzazione (e una statistica) migliore che mi per riassumere questi due aspetti
 -->

---
### La relazione (lineare) tra due variabili numeriche

<span style="display:block; height:1px;"></span>

<div class="columns">
<div>



</div>
<div>

<center>
<img src="./img/descriptive/Children_death_vs_surgery.png" img height="500px" border="4px"/>
</center>

</div>
</div>

---
### La relazione (lineare) tra due variabili numeriche


<span style="display:block; height:1px;"></span>

<div class="columns">
<div>

<div style="font-size: 90%">

Indice di correlazione$^1$

- $r = 0.82$
* $r_\text{no Bristol} = 0.93$


</div>

<span style="display:block; height:150px;"></span>

<div style="font-size: 60%">

$^1$ In questo caso di Pearson (ma formulato da  
&nbsp;&nbsp; Galton). Un altro indice di correlazione &egrave;  quello 
&nbsp;&nbsp; di Spearman

</div>

</div>
<div>

<center>
<img src="./img/descriptive/Children_death_vs_surgery.png" img height="500px" border="4px"/>
</center>

</div>
</div>



<!-- 
A scatterplot displays the relationship between 2 numeric variables. For each data point, the value of its first variable is represented on the X axis, the second on the Y axis
Notare assi non a zero. Per lo scatter va bene.

Correlazione `e una relazione tra due variabili in cui a ciascun valore di una corrisponda un valore dell’altra. 
Pearson correlation coefficient o indice di correlazione di Pearson, `e un in- dice che misura l’esistenza di una relazione lineare (o Correlazione) tra due variabili. Ha un valore compreso tra +1 e −1 , dove +1 corrispon- de alla perfetta correlazione lineare positiva, 0 corrisponde a un’assenza di correlazione lineare e −1 corrisponde alla perfetta correlazione lineare negativa.

There is a considerable interest in the so-called ‘volume effect’ in surgery – the claim that busier hospitals get better survival rates, possibly since they achieve greater efficiency and have more experience.

Attenzione alla causalita':
Osservare una correlazione non implica un nesso di Causalit`a ma segnala la tendenza di una variabile a cambiare in funzione dell’altra (“correlazione non significa causazione”). 
- the high correlation showed that bigger hospitals were associated with lower mortality. But we could not conclude that bigger hospitals caused the lower mortality.
- piccoli ospedali hanno magari casi piu' semplici, che spiegano Leeds & Co 
- oppure better hospitals simply attracted more patients.

launched an investigation after complaints from Joshua’s and other bereaved parents, and in 1998 two surgeons and the ex-chief executive were found guilty of serious medical misconduct. 
-->

---
### Indici di correlazione

<div style="font-size: 85%">

- Non indicano causalit&agrave;
- Hanno un valore compreso tra $-1$ e $1$
- Il segno indica la direzione della relazione **lineare**
- $r^2 \times 100 = R^2$ (o coefficiente di determinazione) indica la percentuale di variabilit&agrave; di una variabile che &egrave; predetta dalla variabilit&agrave; dell'altra variabile
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $R^2 = r^2 \times 100 = 0.82^2 \times 100 = 0.67 \times100$  &nbsp; $\rightarrow$  &nbsp; $67\%$ della variabilit&agrave;


</div>

<div style="font-size: 55%" align="right">

| $\|r\|$ | Interpretazione |
| ----:    | :---- |
0-0.25 | nessuna o poca correlazione
0.25-0.50 | discreta correlazione
0.50-0.75 | buona correlazione
0.75-0.99 | eccellente correlazione
1| perfetta correlazione 



</div>

---
### Esercizio #17

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Una correlazione $r=-0.7$ indica che al crescere del valore  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; di una variabile, il valore dell'altra variabile...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) cresce
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) decresce
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) rimane costante
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) dipende dalle variabili

</div>

<span style="display:block; height:70px;"></span>

<style>
  #countdown_exercise_17{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_17.running {
    background-color: green;
  }
  #countdown_exercise_17.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_17"></button>

<script>
<!--
const countdown_exercise_17= document.getElementById("countdown_exercise_17");
const seconds_exercise_17= 15; // seconds_exercise_17
let timeLeft_exercise_17= seconds_exercise_17;
let timerInterval_exercise_17= null;

function formatTime_exercise_17(seconds_exercise_17) {
  const minutes = Math.floor(seconds_exercise_17/ 60);
  const remainingseconds_exercise_17= seconds_exercise_17% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_17).padStart(2, '0')}`;
}

function updateButton_exercise_17() {
  countdown_exercise_17.textContent = formatTime_exercise_17(timeLeft_exercise_17);
}

function startTimer_exercise_17() {
  if (timerInterval_exercise_17=== null) {
    countdown_exercise_17.classList.add('running');
    countdown_exercise_17.classList.remove('finished');
    timerInterval_exercise_17= setInterval(() => {
      if (timeLeft_exercise_17> 0) {
        timeLeft_exercise_17--;
        updateButton_exercise_17();
      } else {
        clearInterval(timerInterval_exercise_17);
        timerInterval_exercise_17= null;
        countdown_exercise_17.classList.remove('running');
        countdown_exercise_17.classList.add('finished');
        countdown_exercise_17.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_17();
  }
}

function pauseTimer_exercise_17() {
  clearInterval(timerInterval_exercise_17);
  timerInterval_exercise_17= null;
  countdown_exercise_17.classList.remove('running');
}

function resetTimer_exercise_17() {
  timeLeft_exercise_17= seconds_exercise_17;
  updateButton_exercise_17();
  countdown_exercise_17.classList.remove('finished');
  countdown_exercise_17.classList.remove('running');
  timerInterval_exercise_17= null;
}

countdown_exercise_17.addEventListener("click", () => {
  if (countdown_exercise_17.classList.contains('finished')) {
    resetTimer_exercise_17();
  } else {
    startTimer_exercise_17();
  }
});

updateButton_exercise_17();
-->
</script>

---
### Esercizio #17 -- Soluzione

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Una correlazione $r=-0.7$ indica che al crescere del valore 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; di una variabile, il valore dell'altra variabile...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) cresce
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) decresce &nbsp;&nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) rimane costante
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) dipende dalle variabili

</div>

---
### Esercizio #18

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Quale dei seguenti valori di $r$ indica la correlazione pi&ugrave; forte?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) $- \text{ } 0.2$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) $+ \text{ } 0.4$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) $- \text{ } 0.7$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) $+ \text{ } 1.1$

</div>

<span style="display:block; height:100px;"></span>

<style>
  #countdown_exercise_18{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_18.running {
    background-color: green;
  }
  #countdown_exercise_18.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_18"></button>

<script>
<!--
const countdown_exercise_18= document.getElementById("countdown_exercise_18");
const seconds_exercise_18= 15; // seconds_exercise_18
let timeLeft_exercise_18= seconds_exercise_18;
let timerInterval_exercise_18= null;

function formatTime_exercise_18(seconds_exercise_18) {
  const minutes = Math.floor(seconds_exercise_18/ 60);
  const remainingseconds_exercise_18= seconds_exercise_18% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_18).padStart(2, '0')}`;
}

function updateButton_exercise_18() {
  countdown_exercise_18.textContent = formatTime_exercise_18(timeLeft_exercise_18);
}

function startTimer_exercise_18() {
  if (timerInterval_exercise_18=== null) {
    countdown_exercise_18.classList.add('running');
    countdown_exercise_18.classList.remove('finished');
    timerInterval_exercise_18= setInterval(() => {
      if (timeLeft_exercise_18> 0) {
        timeLeft_exercise_18--;
        updateButton_exercise_18();
      } else {
        clearInterval(timerInterval_exercise_18);
        timerInterval_exercise_18= null;
        countdown_exercise_18.classList.remove('running');
        countdown_exercise_18.classList.add('finished');
        countdown_exercise_18.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_18();
  }
}

function pauseTimer_exercise_18() {
  clearInterval(timerInterval_exercise_18);
  timerInterval_exercise_18= null;
  countdown_exercise_18.classList.remove('running');
}

function resetTimer_exercise_18() {
  timeLeft_exercise_18= seconds_exercise_18;
  updateButton_exercise_18();
  countdown_exercise_18.classList.remove('finished');
  countdown_exercise_18.classList.remove('running');
  timerInterval_exercise_18= null;
}

countdown_exercise_18.addEventListener("click", () => {
  if (countdown_exercise_18.classList.contains('finished')) {
    resetTimer_exercise_18();
  } else {
    startTimer_exercise_18();
  }
});

updateButton_exercise_18();
-->
</script>

---
### Esercizio #18 -- Soluzione

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Quale dei seguenti valori di $r$ indica la correlazione pi&ugrave; forte?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) $- \text{ } 0.2$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) $+ \text{ } 0.4$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) $- \text{ } 0.7$ &nbsp;&nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) $+ \text{ } 1.1$

</div>

<span style="display:block; height:100px;"></span>

---
### Esercizio #19

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/scatter1.png" img height="500px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Osservando lo scatterplot, quale tra questi  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  potrebbe essere un valore plausibile per  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; l'indice di correlazione di Pearson tra le 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; due variabili mostrate?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) $r=+0.1$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) $r=+0.9$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) $r=-0.9$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Non &egrave; calcolabile

</div>

<span style="display:block; height:60px;"></span>

<style>
  #countdown_exercise_19{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_19.running {
    background-color: green;
  }
  #countdown_exercise_19.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_19"></button>

<script>
<!--
const countdown_exercise_19= document.getElementById("countdown_exercise_19");
const seconds_exercise_19= 15; // seconds_exercise_19
let timeLeft_exercise_19= seconds_exercise_19;
let timerInterval_exercise_19= null;

function formatTime_exercise_19(seconds_exercise_19) {
  const minutes = Math.floor(seconds_exercise_19/ 60);
  const remainingseconds_exercise_19= seconds_exercise_19% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_19).padStart(2, '0')}`;
}

function updateButton_exercise_19() {
  countdown_exercise_19.textContent = formatTime_exercise_19(timeLeft_exercise_19);
}

function startTimer_exercise_19() {
  if (timerInterval_exercise_19=== null) {
    countdown_exercise_19.classList.add('running');
    countdown_exercise_19.classList.remove('finished');
    timerInterval_exercise_19= setInterval(() => {
      if (timeLeft_exercise_19> 0) {
        timeLeft_exercise_19--;
        updateButton_exercise_19();
      } else {
        clearInterval(timerInterval_exercise_19);
        timerInterval_exercise_19= null;
        countdown_exercise_19.classList.remove('running');
        countdown_exercise_19.classList.add('finished');
        countdown_exercise_19.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_19();
  }
}

function pauseTimer_exercise_19() {
  clearInterval(timerInterval_exercise_19);
  timerInterval_exercise_19= null;
  countdown_exercise_19.classList.remove('running');
}

function resetTimer_exercise_19() {
  timeLeft_exercise_19= seconds_exercise_19;
  updateButton_exercise_19();
  countdown_exercise_19.classList.remove('finished');
  countdown_exercise_19.classList.remove('running');
  timerInterval_exercise_19= null;
}

countdown_exercise_19.addEventListener("click", () => {
  if (countdown_exercise_19.classList.contains('finished')) {
    resetTimer_exercise_19();
  } else {
    startTimer_exercise_19();
  }
});

updateButton_exercise_19();
-->
</script>


---
### Esercizio #19 -- Soluzione

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/scatter1.png" img height="500px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Osservando lo scatterplot, quale tra questi  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  potrebbe essere un valore plausibile per  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; l'indice di correlazione di Pearson tra le 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; due variabili mostrate?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) $r=+0.1$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) $r=+0.9$ &nbsp;&nbsp;&nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) $r=-0.9$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Non &egrave; calcolabile

</div>

---
### Esercizio #20

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/scatter2.png" img height="500px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Osservando lo scatterplot, quale tra questi  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  potrebbe essere un valore plausibile per  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; l'indice di correlazione di Pearson tra le 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; due variabili mostrate?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) $r=+0.1$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) $r=+0.9$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) $r=-0.9$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Non &egrave; calcolabile

</div>

<span style="display:block; height:60px;"></span>

<style>
  #countdown_exercise_20{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_20.running {
    background-color: green;
  }
  #countdown_exercise_20.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_20"></button>

<script>
<!--
const countdown_exercise_20= document.getElementById("countdown_exercise_20");
const seconds_exercise_20= 15; // seconds_exercise_20
let timeLeft_exercise_20= seconds_exercise_20;
let timerInterval_exercise_20= null;

function formatTime_exercise_20(seconds_exercise_20) {
  const minutes = Math.floor(seconds_exercise_20/ 60);
  const remainingseconds_exercise_20= seconds_exercise_20% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_20).padStart(2, '0')}`;
}

function updateButton_exercise_20() {
  countdown_exercise_20.textContent = formatTime_exercise_20(timeLeft_exercise_20);
}

function startTimer_exercise_20() {
  if (timerInterval_exercise_20=== null) {
    countdown_exercise_20.classList.add('running');
    countdown_exercise_20.classList.remove('finished');
    timerInterval_exercise_20= setInterval(() => {
      if (timeLeft_exercise_20> 0) {
        timeLeft_exercise_20--;
        updateButton_exercise_20();
      } else {
        clearInterval(timerInterval_exercise_20);
        timerInterval_exercise_20= null;
        countdown_exercise_20.classList.remove('running');
        countdown_exercise_20.classList.add('finished');
        countdown_exercise_20.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_20();
  }
}

function pauseTimer_exercise_20() {
  clearInterval(timerInterval_exercise_20);
  timerInterval_exercise_20= null;
  countdown_exercise_20.classList.remove('running');
}

function resetTimer_exercise_20() {
  timeLeft_exercise_20= seconds_exercise_20;
  updateButton_exercise_20();
  countdown_exercise_20.classList.remove('finished');
  countdown_exercise_20.classList.remove('running');
  timerInterval_exercise_20= null;
}

countdown_exercise_20.addEventListener("click", () => {
  if (countdown_exercise_20.classList.contains('finished')) {
    resetTimer_exercise_20();
  } else {
    startTimer_exercise_20();
  }
});

updateButton_exercise_20();
-->
</script>

---
### Esercizio #20 -- Soluzione

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/scatter2.png" img height="500px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Osservando lo scatterplot, quale tra questi  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  potrebbe essere un valore plausibile per  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; l'indice di correlazione di Pearson tra le 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; due variabili mostrate?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) $r=+0.1$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) $r=+0.9$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) $r=-0.9$ &nbsp;&nbsp;&nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Non &egrave; calcolabile

</div>

---
### Esercizio #21

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/scatter3.png" img height="500px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Osservando lo scatterplot, quale tra questi  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  potrebbe essere un valore plausibile per  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; l'indice di correlazione di Pearson tra le 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; due variabili mostrate?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) $r=+0.1$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) $r=+0.9$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) $r=-0.9$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Non &egrave; calcolabile

</div>

<span style="display:block; height:60px;"></span>


<style>
  #countdown_exercise_21{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_21.running {
    background-color: green;
  }
  #countdown_exercise_21.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_21"></button>

<script>
<!--
const countdown_exercise_21= document.getElementById("countdown_exercise_21");
const seconds_exercise_21= 15; // seconds_exercise_21
let timeLeft_exercise_21= seconds_exercise_21;
let timerInterval_exercise_21= null;

function formatTime_exercise_21(seconds_exercise_21) {
  const minutes = Math.floor(seconds_exercise_21/ 60);
  const remainingseconds_exercise_21= seconds_exercise_21% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_21).padStart(2, '0')}`;
}

function updateButton_exercise_21() {
  countdown_exercise_21.textContent = formatTime_exercise_21(timeLeft_exercise_21);
}

function startTimer_exercise_21() {
  if (timerInterval_exercise_21=== null) {
    countdown_exercise_21.classList.add('running');
    countdown_exercise_21.classList.remove('finished');
    timerInterval_exercise_21= setInterval(() => {
      if (timeLeft_exercise_21> 0) {
        timeLeft_exercise_21--;
        updateButton_exercise_21();
      } else {
        clearInterval(timerInterval_exercise_21);
        timerInterval_exercise_21= null;
        countdown_exercise_21.classList.remove('running');
        countdown_exercise_21.classList.add('finished');
        countdown_exercise_21.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_21();
  }
}

function pauseTimer_exercise_21() {
  clearInterval(timerInterval_exercise_21);
  timerInterval_exercise_21= null;
  countdown_exercise_21.classList.remove('running');
}

function resetTimer_exercise_21() {
  timeLeft_exercise_21= seconds_exercise_21;
  updateButton_exercise_21();
  countdown_exercise_21.classList.remove('finished');
  countdown_exercise_21.classList.remove('running');
  timerInterval_exercise_21= null;
}

countdown_exercise_21.addEventListener("click", () => {
  if (countdown_exercise_21.classList.contains('finished')) {
    resetTimer_exercise_21();
  } else {
    startTimer_exercise_21();
  }
});

updateButton_exercise_21();
-->
</script>

---
### Esercizio #21 -- Soluzione

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/scatter3.png" img height="500px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Osservando lo scatterplot, quale tra questi  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  potrebbe essere un valore plausibile per  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; l'indice di correlazione di Pearson tra le 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; due variabili mostrate?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) $r=+0.1$ &nbsp;&nbsp;&nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) $r=+0.9$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) $r=-0.9$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Non &egrave; calcolabile

</div>


---
### Esercizio #22

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/scatter4.png" img height="500px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Osservando lo scatterplot, quale tra questi  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  potrebbe essere un valore plausibile per  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; l'indice di correlazione di Pearson tra le 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; due variabili mostrate?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) $r=+0.1$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) $r=+0.9$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) $r=-0.9$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Non &egrave; calcolabile

</div>

<span style="display:block; height:60px;"></span>


<style>
  #countdown_exercise_22{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_22.running {
    background-color: green;
  }
  #countdown_exercise_22.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_22"></button>

<script>
<!--
const countdown_exercise_22= document.getElementById("countdown_exercise_22");
const seconds_exercise_22= 15; // seconds_exercise_22
let timeLeft_exercise_22= seconds_exercise_22;
let timerInterval_exercise_22= null;

function formatTime_exercise_22(seconds_exercise_22) {
  const minutes = Math.floor(seconds_exercise_22/ 60);
  const remainingseconds_exercise_22= seconds_exercise_22% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_22).padStart(2, '0')}`;
}

function updateButton_exercise_22() {
  countdown_exercise_22.textContent = formatTime_exercise_22(timeLeft_exercise_22);
}

function startTimer_exercise_22() {
  if (timerInterval_exercise_22=== null) {
    countdown_exercise_22.classList.add('running');
    countdown_exercise_22.classList.remove('finished');
    timerInterval_exercise_22= setInterval(() => {
      if (timeLeft_exercise_22> 0) {
        timeLeft_exercise_22--;
        updateButton_exercise_22();
      } else {
        clearInterval(timerInterval_exercise_22);
        timerInterval_exercise_22= null;
        countdown_exercise_22.classList.remove('running');
        countdown_exercise_22.classList.add('finished');
        countdown_exercise_22.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_22();
  }
}

function pauseTimer_exercise_22() {
  clearInterval(timerInterval_exercise_22);
  timerInterval_exercise_22= null;
  countdown_exercise_22.classList.remove('running');
}

function resetTimer_exercise_22() {
  timeLeft_exercise_22= seconds_exercise_22;
  updateButton_exercise_22();
  countdown_exercise_22.classList.remove('finished');
  countdown_exercise_22.classList.remove('running');
  timerInterval_exercise_22= null;
}

countdown_exercise_22.addEventListener("click", () => {
  if (countdown_exercise_22.classList.contains('finished')) {
    resetTimer_exercise_22();
  } else {
    startTimer_exercise_22();
  }
});

updateButton_exercise_22();
-->
</script>

---
### Esercizio #22 -- Soluzione

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/scatter4.png" img height="500px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Osservando lo scatterplot, quale tra questi  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  potrebbe essere un valore plausibile per  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; l'indice di correlazione di Pearson tra le 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; due variabili mostrate?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) $r=+0.1$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) $r=+0.9$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) $r=-0.9$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Non &egrave; calcolabile &nbsp;&nbsp;&nbsp; :white_check_mark:

</div>

---
### Esercizio #23

<span style="display:block; height:1px;"></span>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Uno studio ha indivuduato una correlazione  lineare $r=-0.7$ tra le ore di sonno e 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; un indice di irritabilit&agrave; (scala 0-100; 0: poco irritabile, 100: molto irritabile).

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Come interpreto questo valore?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) All'aumentare delle ore di sonno aumenta l'irritabilit&agrave;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) All'aumentare delle ore di sonno dinuisce l'irritabilit&agrave;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) La mancanza di sonno causa un aumento dell'irritabilit&agrave;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) La mancanza di sonno causa una diminuzione dell'irritabilit&agrave;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e) Nessuna delle precendenti

</div>

<span style="display:block; height:20px;"></span>

<style>
  #countdown_exercise_23{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_23.running {
    background-color: green;
  }
  #countdown_exercise_23.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_23"></button>

<script>
<!--
const countdown_exercise_23= document.getElementById("countdown_exercise_23");
const seconds_exercise_23= 15; // seconds_exercise_23
let timeLeft_exercise_23= seconds_exercise_23;
let timerInterval_exercise_23= null;

function formatTime_exercise_23(seconds_exercise_23) {
  const minutes = Math.floor(seconds_exercise_23/ 60);
  const remainingseconds_exercise_23= seconds_exercise_23% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_23).padStart(2, '0')}`;
}

function updateButton_exercise_23() {
  countdown_exercise_23.textContent = formatTime_exercise_23(timeLeft_exercise_23);
}

function startTimer_exercise_23() {
  if (timerInterval_exercise_23=== null) {
    countdown_exercise_23.classList.add('running');
    countdown_exercise_23.classList.remove('finished');
    timerInterval_exercise_23= setInterval(() => {
      if (timeLeft_exercise_23> 0) {
        timeLeft_exercise_23--;
        updateButton_exercise_23();
      } else {
        clearInterval(timerInterval_exercise_23);
        timerInterval_exercise_23= null;
        countdown_exercise_23.classList.remove('running');
        countdown_exercise_23.classList.add('finished');
        countdown_exercise_23.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_23();
  }
}

function pauseTimer_exercise_23() {
  clearInterval(timerInterval_exercise_23);
  timerInterval_exercise_23= null;
  countdown_exercise_23.classList.remove('running');
}

function resetTimer_exercise_23() {
  timeLeft_exercise_23= seconds_exercise_23;
  updateButton_exercise_23();
  countdown_exercise_23.classList.remove('finished');
  countdown_exercise_23.classList.remove('running');
  timerInterval_exercise_23= null;
}

countdown_exercise_23.addEventListener("click", () => {
  if (countdown_exercise_23.classList.contains('finished')) {
    resetTimer_exercise_23();
  } else {
    startTimer_exercise_23();
  }
});

updateButton_exercise_23();
-->
</script>

---
### Esercizio #23 -- Soluzione

<span style="display:block; height:1px;"></span>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Uno studio ha indivuduato una correlazione  lineare $r=-0.7$ tra le ore di sonno e 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; un indice di irritabilit&agrave; (scala 0-100; 0: poco irritabile, 100: molto irritabile).

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Come interpreto questo valore?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) All'aumentare delle ore di sonno aumenta l'irritabilit&agrave;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) All'aumentare delle ore di sonno dinuisce l'irritabilit&agrave; &nbsp;&nbsp;&nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) La mancanza di sonno causa un aumento dell'irritabilit&agrave;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) La mancanza di sonno causa una diminuzione dell'irritabilit&agrave;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e) Nessuna delle precendenti

</div>

---
### Esercizio #24

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Posso calcolare la correlazione tra... 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) L'indice di irritabilit&agrave; e le ore dormite
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero  &nbsp;&nbsp;&nbsp;&nbsp; Falso 
 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) L'indice di irritabilit&agrave; del primo e del secondo figlio
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero  &nbsp;&nbsp;&nbsp;&nbsp; Falso 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) L'indice di irritabilit&agrave; prima e dopo un'attivit&agrave;  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero  &nbsp;&nbsp;&nbsp;&nbsp; Falso 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) L'indice di irritabilit&agrave; in uomini e donne
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero  &nbsp;&nbsp;&nbsp;&nbsp; Falso 

</div>

<style>
  #countdown_exercise_24{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_24.running {
    background-color: green;
  }
  #countdown_exercise_24.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_24"></button>

<script>
<!--
const countdown_exercise_24= document.getElementById("countdown_exercise_24");
const seconds_exercise_24= 30; // seconds_exercise_24
let timeLeft_exercise_24= seconds_exercise_24;
let timerInterval_exercise_24= null;

function formatTime_exercise_24(seconds_exercise_24) {
  const minutes = Math.floor(seconds_exercise_24/ 60);
  const remainingseconds_exercise_24= seconds_exercise_24% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_24).padStart(2, '0')}`;
}

function updateButton_exercise_24() {
  countdown_exercise_24.textContent = formatTime_exercise_24(timeLeft_exercise_24);
}

function startTimer_exercise_24() {
  if (timerInterval_exercise_24=== null) {
    countdown_exercise_24.classList.add('running');
    countdown_exercise_24.classList.remove('finished');
    timerInterval_exercise_24= setInterval(() => {
      if (timeLeft_exercise_24> 0) {
        timeLeft_exercise_24--;
        updateButton_exercise_24();
      } else {
        clearInterval(timerInterval_exercise_24);
        timerInterval_exercise_24= null;
        countdown_exercise_24.classList.remove('running');
        countdown_exercise_24.classList.add('finished');
        countdown_exercise_24.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_24();
  }
}

function pauseTimer_exercise_24() {
  clearInterval(timerInterval_exercise_24);
  timerInterval_exercise_24= null;
  countdown_exercise_24.classList.remove('running');
}

function resetTimer_exercise_24() {
  timeLeft_exercise_24= seconds_exercise_24;
  updateButton_exercise_24();
  countdown_exercise_24.classList.remove('finished');
  countdown_exercise_24.classList.remove('running');
  timerInterval_exercise_24= null;
}

countdown_exercise_24.addEventListener("click", () => {
  if (countdown_exercise_24.classList.contains('finished')) {
    resetTimer_exercise_24();
  } else {
    startTimer_exercise_24();
  }
});

updateButton_exercise_24();
-->
</script>



---
### Esercizio #24 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Posso calcolare la correlazione tra... 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) L'indice di irritabilit&agrave; e le ore dormite
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero &nbsp;&nbsp; :white_check_mark: &nbsp;&nbsp;&nbsp;&nbsp; Falso 
 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) L'indice di irritabilit&agrave; del primo e del secondo figlio
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero  &nbsp;&nbsp;&nbsp;&nbsp; Falso 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) L'indice di irritabilit&agrave; prima e dopo un'attivit&agrave;  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero  &nbsp;&nbsp;&nbsp;&nbsp; Falso 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) L'indice di irritabilit&agrave; in uomini e donne
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero  &nbsp;&nbsp;&nbsp;&nbsp; Falso 

</div>

---
### Esercizio #24 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Posso calcolare la correlazione tra... 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) L'indice di irritabilit&agrave; e le ore dormite
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero &nbsp;&nbsp; :white_check_mark: &nbsp;&nbsp;&nbsp;&nbsp; Falso 
 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) L'indice di irritabilit&agrave; del primo e del secondo figlio
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero &nbsp;&nbsp; :white_check_mark: &nbsp;&nbsp;&nbsp;&nbsp; Falso 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) L'indice di irritabilit&agrave; prima e dopo un'attivit&agrave;  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero  &nbsp;&nbsp;&nbsp;&nbsp; Falso 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) L'indice di irritabilit&agrave; in uomini e donne
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero  &nbsp;&nbsp;&nbsp;&nbsp; Falso 

</div>


---
### Esercizio #24 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Posso calcolare la correlazione tra... 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) L'indice di irritabilit&agrave; e le ore dormite
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero &nbsp;&nbsp; :white_check_mark: &nbsp;&nbsp;&nbsp;&nbsp; Falso 
 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) L'indice di irritabilit&agrave; del primo e del secondo figlio
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero &nbsp;&nbsp; :white_check_mark: &nbsp;&nbsp;&nbsp;&nbsp; Falso 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) L'indice di irritabilit&agrave; prima e dopo un'attivit&agrave;  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero &nbsp;&nbsp; :white_check_mark: &nbsp;&nbsp;&nbsp;&nbsp; Falso 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) L'indice di irritabilit&agrave; in uomini e donne
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero  &nbsp;&nbsp;&nbsp;&nbsp; Falso 

</div>

---
### Esercizio #24 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Posso calcolare la correlazione tra... 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) L'indice di irritabilit&agrave; e le ore dormite
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero &nbsp;&nbsp; :white_check_mark: &nbsp;&nbsp;&nbsp;&nbsp; Falso 
 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) L'indice di irritabilit&agrave; del primo e del secondo figlio
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero &nbsp;&nbsp; :white_check_mark: &nbsp;&nbsp;&nbsp;&nbsp; Falso 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) L'indice di irritabilit&agrave; prima e dopo un'attivit&agrave;  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero &nbsp;&nbsp; :white_check_mark: &nbsp;&nbsp;&nbsp;&nbsp; Falso 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) L'indice di irritabilit&agrave; in uomini e donne
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vero  &nbsp;&nbsp;&nbsp;&nbsp; Falso  &nbsp;&nbsp; :white_check_mark:

</div>

---
## Correlazione & valori estremi

<span style="display:block; height:1px;"></span>


<div class="columns">
<div>

<div style="font-size: 98%">

Altezza (cm) e numero di canestri

</div>

- $r = 0.72$


<center>
<!-- <img src="./img/descriptive/basketball.jpg" img height="250px" border="4px"/> -->
</center>

</div>
<div>

<center>
<!-- <img src="./img/descriptive/Basketball.png" img height="500px" border="4px"/> -->
</center>

</div>
</div>

<!-- Lillard 1.88
Adetokumbo 2.11 -->

---
## Correlazione & valori estremi

<span style="display:block; height:1px;"></span>


<div class="columns">
<div>

<div style="font-size: 98%">

Altezza (cm) e numero di canestri

</div>

- $r = 0.72$


<center>
<img src="./img/descriptive/basketball.jpg" img height="250px" border="4px"/>
</center>

</div>
<div>

<center>
<img src="./img/descriptive/Basketball.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- Lillard 1.88
Adetokumbo 2.11 -->

---
## Correlazione & valori estremi

<span style="display:block; height:1px;"></span>


<div class="columns">
<div>

<div style="font-size: 98%">

Altezza (cm) e numero di canestri

</div>

- $r = 0.72$
- $r_\text{no outliers} = 0.07$

</div>
<div>

<center>
<img src="./img/descriptive/Basketball_noout.png" img height="500px" border="4px"/>
</center>

</div>
</div>

---
## Dalla correlazione alla regressione lineare

<span style="display:block; height:1px;"></span>

<div class="columns">
<div>

$y = \alpha + \beta x$

<span style="display:block; height:200px;"></span>

<div style="font-size: 90%"> 

$\text{Morti} = 14 + 0.07 \times \text{Interventi}$

</div>

</div>
<div>

<center>
<img src="./img/descriptive/Children_death_vs_surgery_regression_line.png" img height="500px" border="4px"/>
</center>

</div>
</div>


<!-- $\alpha \rightarrow$ intercetta
$\beta \rightarrow$ coefficiente angolare -->

---
## Dalla correlazione alla regressione lineare

<span style="display:block; height:1px;"></span>

<div class="columns">
<div>

$y = \alpha + \beta x$

<span style="display:block; height:200px;"></span>

<div style="font-size: 90%"> 

$\text{Morti} = 14 + 0.07 \times \text{Interventi}$



$\text{Interventi} = 500$
$\text{Morti} = 14 + 0.07 \times 500 = 49$

</div>

</div>
<div>

<center>
<img src="./img/descriptive/Children_death_vs_surgery_regression_line_interpolate.png" img height="500px" border="4px"/>
</center>

</div>
</div>


<!-- $\alpha \rightarrow$ intercetta
$\beta \rightarrow$ coefficiente angolare -->

---
## Regressione: interpolare ed estrapolare

<div style="font-size: 80%"> 

:question: &nbsp;&nbsp;&nbsp; Quante bambine di nome Emma sono nate nel 2004, 2010, 2015 e 2020?

</div>

<span style="display:block; height:0px;"></span>

<center>
<img src="./img/descriptive/emma_hidden.png" img height="400px" border="4px"/>
</center>

<div style="font-size: 50%" align="right">

https://www.istat.it/dati/calcolatori/contanomi/

</div>

---
## Regressione: interpolare ed estrapolare

<div style="font-size: 80%"> 

:question: &nbsp;&nbsp;&nbsp; Quante bambine di nome Emma sono nate nel 2004, 2010, 2015 e 2020?

</div>

<span style="display:block; height:0px;"></span>

<center>
<img src="./img/descriptive/emma_guess.png" img height="400px" border="4px"/>
</center>

<div style="font-size: 50%" align="right">

https://www.istat.it/dati/calcolatori/contanomi/

</div>

---
## Regressione: interpolare ed estrapolare

<div style="font-size: 80%"> 

:question: &nbsp;&nbsp;&nbsp; Quante bambine di nome Emma sono nate nel 2004, 2010, 2015 e 2020?

</div>

<span style="display:block; height:0px;"></span>

<center>
<img src="./img/descriptive/emma_all.png" img height="400px" border="4px"/>
</center>

<div style="font-size: 50%" align="right">

https://www.istat.it/dati/calcolatori/contanomi/

</div>

---
## La regressione verso la media


---
## La regressione verso la media

<span style="display:block; height:0px;"></span>

<center>
<img src="./img/descriptive/mother_daughter.png" img height="440px" border="4px"/>
</center>

<div style="font-size: 50%" align="right">

F. Galton, *Regression Towards Mediocrity in Hereditary Stature*, The Journal of the 
Anthropological Institute of Great Britain and Ireland, 1886, https://doi.org/10.2307/2841583

</div>

<!-- 
Si ha la regressione verso la media quando fenomeni estremi nella variabile di risposta si riavvicinano alla media a lungo termine, perché il contributo precedente a questi valori estremi era un puro caso

La regressione verso la media si applica anche agli studi clinici. Nello scorso capitolo abbiamo visto che occorrono studi randomizzati per valutare a dovere i nuovi farmaci, perché si osservano benefici anche nei membri del gruppo di controllo: lo chiamiamo eﬀetto placebo. Spesso l’interpretazione è che prendere una semplice pillola di zucchero (soprattutto se rossa) farebbe davvero bene alla salute. 
Ma i miglioramenti osservati nelle persone che non ricevono nessun principio attivo sono forse dovuti in gran parte alla regressione verso la media, poiché si arruolano negli studi pazienti aﬀetti da sintomi, che in molti casi sarebbero scomparsi comunque. -->

---
## Perch&eacute; visualizzare i dati?

<span style="display:block; height:2px;"></span>

<center>
<img src="./img/visualization/DataSaurusDozen.gif" img height="400px" border="4px"/>
</center>

<div style="font-size: 50%" align="right">

<br/> <b>Datasaurus Dozen</b>,  Matejka, J &; Fitzmaurice, G. *Same Stats, Different Graphs: Generating Datasets with Varied Appearance and Identical Statistics through Simulated Annealing*, Proceedings of the 2017 CHI Conference on Human Factors in Computing Systems, doi:10.1145/3025453.3025912

</div>


---
## Parametri *vs* statistiche

<span style="display:block; height:10px;"></span>

<center>

|  | Parametro | Statistica |
| ----: | :-----: | :----: | 
| Numerosit&agrave; | $N$ | $n$ |
| Media | $\mu$ | $\bar{x}$ |
| Deviazione Standard | $\sigma$ | $s$ |
| Proporzione | $\pi$ | $p$ |
| Correlazione | $\rho$ | $r$ |

</center>

---
### Esercizio #25

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; La media nella popolazione viene indicata con...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) M 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) m
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) $\mu$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) $\bar{x}$ 

</div>

<span style="display:block; height:100px;"></span>

<style>
  #countdown_exercise_25{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercise_25.running {
    background-color: green;
  }
  #countdown_exercise_25.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercise_25"></button>

<script>
<!--
const countdown_exercise_25= document.getElementById("countdown_exercise_25");
const seconds_exercise_25= 15; // seconds_exercise_25
let timeLeft_exercise_25= seconds_exercise_25;
let timerInterval_exercise_25= null;

function formatTime_exercise_25(seconds_exercise_25) {
  const minutes = Math.floor(seconds_exercise_25/ 60);
  const remainingseconds_exercise_25= seconds_exercise_25% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercise_25).padStart(2, '0')}`;
}

function updateButton_exercise_25() {
  countdown_exercise_25.textContent = formatTime_exercise_25(timeLeft_exercise_25);
}

function startTimer_exercise_25() {
  if (timerInterval_exercise_25=== null) {
    countdown_exercise_25.classList.add('running');
    countdown_exercise_25.classList.remove('finished');
    timerInterval_exercise_25= setInterval(() => {
      if (timeLeft_exercise_25> 0) {
        timeLeft_exercise_25--;
        updateButton_exercise_25();
      } else {
        clearInterval(timerInterval_exercise_25);
        timerInterval_exercise_25= null;
        countdown_exercise_25.classList.remove('running');
        countdown_exercise_25.classList.add('finished');
        countdown_exercise_25.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercise_25();
  }
}

function pauseTimer_exercise_25() {
  clearInterval(timerInterval_exercise_25);
  timerInterval_exercise_25= null;
  countdown_exercise_25.classList.remove('running');
}

function resetTimer_exercise_25() {
  timeLeft_exercise_25= seconds_exercise_25;
  updateButton_exercise_25();
  countdown_exercise_25.classList.remove('finished');
  countdown_exercise_25.classList.remove('running');
  timerInterval_exercise_25= null;
}

countdown_exercise_25.addEventListener("click", () => {
  if (countdown_exercise_25.classList.contains('finished')) {
    resetTimer_exercise_25();
  } else {
    startTimer_exercise_25();
  }
});

updateButton_exercise_25();
-->
</script>

---
### Esercizio #25 -- Soluzione

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; La media nella popolazione viene indicata con...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) M 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) m
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) $\mu$ &nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) $\bar{x}$ 

</div>

---
### Cosa abbiamo imparato?

<!-- -->

<div style="font-size: 80%">

- Le variabili numeriche possono essere rappresentate con misure di centralit&agrave;, dispersione e correlazione (statistiche)
- Alcune statistiche possono risultare fuorvianti quando le distribuzioni empiriche sono asimmetriche, rischiando di nascondere informazioni importanti sui dati
- Le variabili numeriche possono essere rappresentate graficamente in diversi modi, ma alcune possono celare importanti dettagli delle distribuzioni empiriche
- Visualizzare i dati &egrave; importante per interpretarli
- Le statistiche rappresentano il campione, i parametri la popolazione

</div>

