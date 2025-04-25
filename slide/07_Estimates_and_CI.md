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

<!-- ### Lezione 7 -->
# La statistica inferenziale
## (Parte I: Stime e intervalli di confidenza)
## &nbsp;

---
## Obiettivi di apprendimento

<span style="display:block; height:50px;"></span>

<div style="font-size: 90%">

- Saper passare da una distribuzione empirica alla quella di popolazione
- Saper comunicare l'incertezza di una statistica
- Saper calcolare e interpretare un intervallo di confidenza

</div>

---
## Le fasi della ricerca

<span style="display:block; height:2px;"></span>

<center>
<img src="./img/confidence_intervals/PPDAC.png" img height="450px" border="0px"/>
</center>

<div style="font-size: 50%" align="right">

Spiegelhalter, D., *The Art of Statistics: Learning From Data*, Pelican, 2019

</div>

---
## <br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:warning:  Attenzione  :warning:

<span style="display:block; height:1px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Se questa parte vi sembra difficile &egrave; perch&eacute; &egrave; difficile.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Potreste doverci spendere un bel po' di tempo prima di 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; riuscire a capirla del tutto: non vi preoccupate, &egrave; normale 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e ci siamo passati tutti!

---
## Dal campione alla popolazione

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/confidence_intervals/sample2pop_empty.png" img height="450px" border="4px"/>
</center>

<!-- Ricapitoliamo: quando non possiamo studiare una popolazione ne usiamo un campione rappresentativo -->

---
## Dal campione alla popolazione

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/confidence_intervals/sample2pop.png" img height="450px" border="4px"/>
</center>

<!-- e poi usiamo le informazioni raccolte dal campione per trarre delle conclusioni sulla popolazione 
Questo processo si chiama statistica inferenziale,

Procedimento induttivo che ha lo scopo di stimare i parametri (caratteristiche) sconosciuti della popolazione a partire dalle statistiche (stime conosciute) del campione 

Sulla base di un campione estratto casualmente da 1 popolazione cosa può essere detto circa la popolazione da cui il campione è stato estratto? -->

---
### Esercizio #1

<span style="display:block; height:20px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Un valore ottenuto in una popolazione viene chiamato...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) parametro
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) statistica 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) media e/o deviazione standard
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) nessuno dei precedenti

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


---
### Esercizio #1 -- Soluzione

<span style="display:block; height:20px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Un valore ottenuto in una popolazione viene chiamato...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) parametro &nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) statistica 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) media e/o deviazione standard
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) nessuno dei precedenti

</div>

---
### Esercizio #2

<span style="display:block; height:20px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Un valore ottenuto in un campione viene chiamato...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) parametro
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) statistica 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) media e/o deviazione standard
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) nessuno dei precedenti

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


---
### Esercizio #2 -- Soluzione

<span style="display:block; height:20px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Un valore ottenuto in un campione viene chiamato...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) parametro
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) statistica  &nbsp; :white_check_mark: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) media e/o deviazione standard
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) nessuno dei precedenti

</div>

---
### Esercizio #3

<span style="display:block; height:20px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Un parametro &egrave;...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) sempre esattamente uguale alla statistica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) stimato dal valore della statistica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) non ha nessuna relazione con la statistica

</div>

<span style="display:block; height:120px;"></span>

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
const seconds_exercise_3= 60; // seconds_exercise_3
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

<span style="display:block; height:20px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Un parametro &egrave;...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) sempre esattamente uguale alla statistica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) stimato dal valore della statistica &nbsp; :white_check_mark: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) non ha nessuna relazione con la statistica

</div>


---
## Quanto siamo precisi?

<div style="font-size: 90%">

Quanti partner (etero)sessuali le persone in Gran Bretagna riferiscono di aver avuto nella loro vita?

</div>

<div class="columns">
<div>

<span style="display:block; height:30px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n_\text{donne} = 1100$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n_\text{uomini} = 796$


</div>
<div>

<div style="font-size: 75%">

<center>

|  | Uomini 35-44 | Donne 35-44 |
| ----: | -----: | ----: |
| Moda | 1 | 1  |
| Range | 0-500 | 0-550  |
| Media |  14.3 | 8.5 | 
| SD | 24.2 | 19.7  | 
| Mediana |  8 | 5  | 
| IQR | 4-18  | 3-10  |

</center>

</div>
</div>

<!-- In the age band of 35–44 there were 1,100 female and 796 male respondents, so it was a large survey from which the sample summary statistics shown in Table 2–2 were calculated, such as the median number of reported partners being 8 for men and 5 for women. Since we know the survey was based on a proper random-sampling scheme, it is fairly reasonable to assume that the study population matches the target population, which is the adult British population. The crucial question is: how close are these statistics to what we would have found had we been able to ask everyone in the country? -->

---
## Ricalcoliamo senza i "valori estremi"

<div style="font-size: 90%">

Quanti partner (etero)sessuali gli uomini inglesi, tra i 35 e 44 anni di et&agrave;, riferiscono di aver avuto nella loro vita?

</div>

<div class="columns">
<div>

<span style="display:block; height:30px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n_\text{uomini} = 760$


</div>
<div>

<div style="font-size: 75%">

<center>

|  | Uomini 35-44 |
| ----: | -----: | 
| Moda | 1 |
| Range | 0-50 | 
| Media |  11.4 | 
| SD | 11.2 |  
| Mediana |  7 |
| IQR | 4-16  |

</center>

</div>
</div>

<!-- Per semplificare la visualizzazione, concentriamoci sugli uomini che hanno avuto < 50 partner (solo 36 riportano di averne avuto di piu'), quindi ricalcoliamo tutte le statistiche su questo campione 

I valori estremi propriamente detti sarebbero quelli >87, ma facciamo finta vada bene cosi'

Notiamo i valori "stabili" (non influenzati dagli outliers)
-->

---
## La dimensione del campione

<div style="font-size: 90%">

Quanti partner (etero)sessuali gli uomini inglesi, tra i 35 e 44 anni di et&agrave;, riferiscono di aver avuto nella loro vita?

</div>

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/confidence_intervals/British_sex_partner_complete_dataset.png" img height="380px" border="4px"/>
</center>

<!-- Magenta dotted line is the mean

As an illustration of how the accuracy of statistics depends on sample size, we shall pretend for the moment that the men in the survey in fact represent the population in which we are interested. 
-->

---
## La dimensione del campione

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n_\text{campione} = 10$

</div>

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/confidence_intervals/British_sex_partner_N10.png" img height="420px" border="4px"/>
</center>

<!--
For illustration, we then take successive samples of individuals from this ‘population’ of 760 men, pausing when we reach 10, 50, 100, 200 and 380 men. 

The data distributions of these samples are shown 

it is clear that the smaller samples are ‘bumpier’, and the summary stats (mean here) is sensitive to single data-points

 Magenta dotted line is the mean
Density should use another scale -->

---
## La dimensione del campione

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n_\text{campione} = 50$

</div>

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/confidence_intervals/British_sex_partner_N50.png" img height="420px" border="4px"/>
</center>

<!-- the rather high number of partners  in the first sample of ten individuals gets steadily overwhelmed, as the statistics get closer and closer to those of the whole group of 796 men as the sample size increases. -->

---
## La dimensione del campione

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n_\text{campione} = 100$

</div>

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/confidence_intervals/British_sex_partner_N100.png" img height="420px" border="4px"/>
</center>

<!-- the rather high number of partners  in the first sample of ten individuals gets steadily overwhelmed, as the statistics get closer and closer to those of the whole group of 796 men as the sample size increases. -->

---
## La dimensione del campione

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n_\text{campione} = 200$

</div>

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/confidence_intervals/British_sex_partner_N200.png" img height="420px" border="4px"/>
</center>

<!-- the rather high number of partners  in the first sample of ten individuals gets steadily overwhelmed, as the statistics get closer and closer to those of the whole group of 796 men as the sample size increases. -->

---
## La dimensione del campione

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $n_\text{campione} = 380$

</div>

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/confidence_intervals/British_sex_partner_N380.png" img height="420px" border="4px"/>
</center>

<!-- the rather high number of partners  in the first sample of ten individuals gets steadily overwhelmed, as the statistics get closer and closer to those of the whole group of 796 men as the sample size increases. -->

---
### Esercizio #4

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Al crescere della dimensione del campione

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) migliorano le stime dei parametri
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) le stime dei parametri diventano pi&ugrave; sensibili alle singole 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; osservazioni 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) non c'&egrave; differenza
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) non ho abbastanza elementi per rispondere

</div>

<span style="display:block; height:80px;"></span>

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
const seconds_exercise_4= 60; // seconds_exercise_4
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

:question: &nbsp;&nbsp;&nbsp; Al crescere della dimensione del campione

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) migliorano le stime dei parametri &nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) le stime dei parametri diventano pi&ugrave; sensibili alle singole 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; osservazioni 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) non c'&egrave; differenza
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) non ho abbastanza elementi per rispondere

</div>


---
## Quanto siamo precisi?

<span style="display:block; height:1px;"></span>

Con questo esempio, abbiamo introdotto due concetti:<br/>

  1. Campioni pi&ugrave; grandi stimano meglio i parametri di una popolazione

  2. Continuare ad estrarre campioni ci da un'idea della variazione attorno al valore "plausibile" del parametro che ci interessa

<span style="display:block; height:1px;"></span>

<div align="right">

Quindi come procediamo?

</div>

---
## Stima dei parametri e del margine di errore

Come stimo la variazione rispetto al valore reale nella popolazione se quello che sto cercando &egrave; proprio il valore reale nella popolazione? 

<span style="display:block; height:10px;"></span>

<img src="./img/confidence_intervals/dog-chasing-tail-6.gif" img height="300px" border="0px" style="float: right; padding: 10px 50px 100px 100px;"/>

<!--  
Now we come to a critical step. In order to work out how accurate these statistics might be, we need to think of how much our statistics might change if we (in our imagination) were to repeat the sampling process many times. In other words, if we repeatedly drew samples of 796 men from the country, how much would the calculated statistics vary?

If we knew how much these estimates would vary, then it would help tell us how accurate our actual estimate was. But unfortunately we could only work out the precise variability in our estimates if we knew precisely the details of the population. And this is exactly what we do not know.  -->

---
## Stima dei parametri e del margine di errore

<span style="display:block; height:10px;"></span>

1. Assumendo che la popolazione assomigli al campione <br/> $\rightarrow$ via bootstrapping

2. Facendo assunzioni matematiche sulla forma della distribuzione nella popolazione <br/> $\rightarrow$ via distribuzione campionaria & teorema del limite centrale

<!-- There are two ways to resolve this circularity. The first is to make some mathematical assumptions about the shape of the population distribution, and use sophisticated probability theory to work out the variability we would expect in our estimate, and hence how far away we might expect, say, the average of our sample to be from the mean of the population. This is the traditional method that is taught in statistics textbooks, and we shall see how this works in Chapter 9. 

However, there is an alternative approach, based on the plausible assumption that the population should look roughly like the sample. Since we cannot repeatedly draw a new sample from the population, we instead repeatedly draw new samples from our sample! -->

---
## Stima dei parametri e del margine di errore

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $N_\text{Bootstrapping} = 1000$

</div>

<span style="display:block; height:0px;"></span>

<center>
<img src="./img/confidence_intervals/bootstrapping.png" img height="450px" border="4px"/>
</center>

<!-- If we repeat this resampling, say, 1,000 times, we get 1,000 possible estimates of the mean. These are displayed as histograms, with each histogram showing the spread of bootstrap estimates around the mean of the original sample. These are known as sampling distributions of estimates, since they reflect the variability in estimates that arise from repeated sampling of data.

Figure displays some clear features. The first, and perhaps most notable, is that almost all trace of the skewness of the original samples has gone – the distributions of the estimates based on the resampled data are almost symmetric around the mean of the original data. This is a first glimpse of what is known as the Central Limit Theorem, which says that the distribution of sample means tends towards the form of a normal distribution with increasing sample size, almost regardless of the shape of the original data distribution. 

Additionally, is that the bootstrap distributions get narrower as the sample size increases
 -->

---
## L'intervallo di confidenza

<div style="font-size: 90%">

:dart: &nbsp;&nbsp;&nbsp; Intervallo che contiene il 95% delle medie ottenute via Bootstrapping

</div>

<span style="display:block; height:0px;"></span>

<center>
<img src="./img/confidence_intervals/bootstrapping_fence.png" img height="450px" border="4px"/>
</center>

<!-- For example, we can find the range of values that contains 95% of the means of the bootstrap resamples, and call this a 95% uncertainty interval
for the original estimates, or alternatively they can be called margins of error. These are shown in Table 7.2 – the symmetry of the bootstrap distributions means the uncertainty intervals are roughly symmetric around the original estimate.

Per farlo sfruttiamo le proprieta' della distribuzione normale (indipendentemente dalla distribuzione del campione) 

Ma prima osserviamo ancora che the bootstrap distributions get narrower as the sample size increases, which is reflected in the steadily narrower 95% uncertainty intervals.
 -->

 ---
## L'intervallo di confidenza

<div style="font-size: 90%">

:dart: &nbsp;&nbsp;&nbsp; Intervallo che contiene il 95% delle medie ottenute via Bootstrapping

</div>

<span style="display:block; height:0px;"></span>

<center>
<img src="./img/confidence_intervals/bootstrapping_CI.png" img height="450px" border="4px"/>
</center>

<!-- For example, we can find the range of values that contains 95% of the means of the bootstrap resamples, and call this a 95% uncertainty interval
for the original estimates, or alternatively they can be called margins of error. These are shown in Table 7.2 – the symmetry of the bootstrap distributions means the uncertainty intervals are roughly symmetric around the original estimate.

Per farlo sfruttiamo le proprieta' della distribuzione normale (indipendentemente dalla distribuzione del campione) 

Ma prima osserviamo ancora che the bootstrap distributions get narrower as the sample size increases, which is reflected in the steadily narrower 95% uncertainty intervals.
 -->

---
## L'intervallo di confidenza

<div style="font-size: 90%">

:dart: &nbsp;&nbsp; Intervallo che contiene il 95% delle medie ottenute via Bootstrapping

</div>

<span style="display:block; height:1px;"></span>

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $N_\text{Bootstrapping} = 1000$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\bar{x} = 11.4$


</div>
<div>

<div style="font-size: 75%">

<center>

| $n_\text{campione}$ | Media | 95% CI |
| ----: | -----: |  -----: | 
| 10 | 11.4 | (5.0; 19.0)
| 50 | 11.4 | (8.4; 14.6)
| 100 | 11.4  | (9.2; 13.5) 
| 200 | 11.3 |  (9.9; 12.9)
| 380 | 11.3  | (10.2; 12.4)
| 760 | 11.3 | (10.6, 12.1)


</center>

</div>
</div>

<!-- The second important feature of Figure 7.3 is that the bootstrap distributions get narrower as the sample size increases, which is reflected in the steadily narrower 95% uncertainty intervals. 

Bootstrapping provides an intuitive, computer-intensive way of assessing the uncertainty in our estimates, without making strong assumptions and without using probability theory. But the technique is not feasible when it comes to, say, working out the margins of error on unemployment surveys of 100,000 people. Although bootstrapping is a simple, brilliant and extraordinarily effective idea, it is just too clumsy to bootstrap such large quantities of data, especially when a convenient theory exists that can generate formulae for the width of uncertainty intervals.

-->

---
### Esercizio #5

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Al crescere della dimensione del campione

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) peggiora la stima dell'incertezza del parametro
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) migliora la stima dell'incertezza del parametro
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) non c'&egrave; differenza
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) non ho abbastanza elementi per rispondere

<span style="display:block; height:80px;"></span>

<style>
  #countdown_exercise_5{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float:right;
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
### Esercizio #5 -- Soluzione

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Al crescere della dimensione del campione

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) peggiora la stima dell'incertezza del parametro
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) migliora la stima dell'incertezza del parametro &nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) non c'&egrave; differenza
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) non ho abbastanza elementi per rispondere

---
## Fermiamoci un attimo

<span style="display:block; height:10px;"></span>

<div style="font-size: 90%">

Abbiamo introdotto due concetti difficili e importanti:

  1. esiste una variabilit&agrave; nella stima dei parametri che dipende dal campione

  2. la forma della distribuzione delle statistiche non dipende dalla forma della distribuzione originaria e tende alla normale per insiemi grandi

<span style="display:block; height:1px;"></span>

<div align="right">

Ora abbiamo le basi per affrontare il secondo approccio <br/>per stimare i parametri e l'intervallo di confidenza

</div>
</div>

<!-- 
- the variability in statistics based on samples

- the fact that the shape of the distribution of the statistics does not depend on the shape of the original distribution from which the individual data-points are drawn

- bootstrapping data when we do not want to make assumptions about the shape of the population

Rather remarkably, this has all been accomplished without any mathematics except the idea of drawing observations at random. -->

---
### La distribuzione campionaria & <br/> il teorema del limite centrale

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/confidence_intervals/sampling_distro.png" img height="450px" border="0px"/>
</center>

</div>
<div>

<div style="font-size: 90%">

<span style="display:block; height:1px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Per le medie:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\mathcal{N} = (\mu, \frac{\sigma^2}{n})$ con $\sqrt{ \frac{\sigma^2}{n}} = \frac{\sigma}{\sqrt{n}}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\frac{\sigma}{\sqrt{n}}$ &nbsp; $\rightarrow$ &nbsp; standard error (SE)

</div>

</div>
</div>


<!-- Distribuzione campionaria e' la distribuzione di tutti i possibile valori che possono essere assunti da qualche statistica (e.g., la media) calcolata da campioni della stessa dimensione ed estratti casualmente dalla stessa popolazione 

Come si costruisce? 
1. Estraggo tutti i possibili campioni di dimensione n
2. Calcolo la statistica di interesse
3. Tengo traccia di ciascun valore della statistica e della sua frequenza 

La forma della distribuzione delle medie campionarie è approssimativamente normale,  indipendentemente dalla distribuzione dei valori della popolazione d’origine dalla quale i campioni sono estratti, per n sufficientemente grande.

Teorema del limite centrale ci dice che la Distribuzione campionaria tende a presentare una Distribuzione Normale N = (μ, σ2 ), indipendentemente
dalla forma della distribuzione empirica osservata nel Campione quando
questo `e sufficientemente grande (≈ n > 30). La statistica misurata viene
considerata uno stimatore del Parametro μ della distribuzione campiona-
ria, mentre la sua Standard deviation è la radice quadrata del rapporto tra tra la varianza della popolazione e la dimensione del campione usato per calcolarla 
anche conosciuta come Errore standard della stima della statistica.

L'errore standard diminuisce al crescere di N e al decrescere della varianza

Quanto deve essere grande il campione perch&egrave; la distribuzione sia normale? 
Nella maggior parte delle situazioni pratiche, n=30 e' soddisfacente, ma l'approssimazione migliora all'aumentare di n (lo vedremo tra qualche slide) -->

---
## Mettiamo i pezzi insieme

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

<div style="font-size: 80%">

- La distribuzione campionaria tende alla distribuzione Normale
- In una Normale, 95% delle osservazioni sono a circa $2 \times \text{SD}$ dalla media
- Il nostro intervallo di confidenza (95%) &egrave; a circa $2 \times \text{SE}$ dalla media della distribuzione campionaria

</div>

</div>
<div>

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/normal/Standard_Normal_Distribution_3sigma.png" img height="400px" border="4px"/>
</center>
</div>
</div>

<!-- Approssimando una Normale, la distribuzione campionaria ha le stesse (utili) caratteristiche della normale:
- &egrave; simmetrica
- ha area 1
- 95% delle medie campionarie sono a 2 SE dalla vera media della popolazione 

Tutti concetti che ci torneranno utili tra poco
-->

---
## Quindi come si calcola?

<div style="font-size: 88%">

:dart: &nbsp;&nbsp; Il 95% CI &egrave; a circa $2 \times \text{SE}$ dalla media della distribuzione campionaria

</div>

<div class="columns">
<div>

<span style="display:block; height:50px;"></span>

<div style="font-size: 88%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Calcoliamo lo SE
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Calcoliamo $2 \times \text{SE}$, *i.e.*, 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $95\%$ Margine di Errore (ME)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Calcoliamo il $95\% \text{ CI}$ come 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $(\bar{x} - \text{ ME} \text{ } ; \text{ } \bar{x} + \text{ ME} )$

</div>

</div>
<div>

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/confidence_intervals/ME_and_CI.png" img height="450px" border="0px"/>
</center>

</div>
</div>


---
### Esercizio #6

<div style="font-size: 90%" >

:question: &nbsp;&nbsp;&nbsp; Il numero medio di partner eterosessual in campione di 760 uomini 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inglesi tra i 35 e i  44 anni di et&agrave; &egrave; 11.4 $\pm$ 11.2 partner.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qual &egrave; la media della popolazione e il suo 95% CI?  

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\mu=\text{ ?}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{SE}=\sigma/\sqrt{n} = \text{ ?} \rightarrow$ &nbsp;&nbsp;&nbsp; $\hat{\text{SE}}=s/\sqrt{n} = \text{ ?}$

</div>

<span style="display:block; height:100px;"></span>

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
const seconds_exercise_6= 300; // seconds_exercise_6
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

<div style="font-size: 90%" >

:question: &nbsp;&nbsp;&nbsp; Il numero medio di partner eterosessual in campione di 760 uomini 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inglesi tra i 35 e i  44 anni di et&agrave; &egrave; 11.4 $\pm$ 11.2 partner.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qual &egrave; la media della popolazione e il suo 95% CI? 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\mu=11.4$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{SE}=\sigma/\sqrt{n} = \text{ ?} \rightarrow$ &nbsp;&nbsp;&nbsp; $\hat{\text{SE}}=s/\sqrt{n} = \frac{11.2}{\sqrt760}=0.41$

<div>

---
### Esercizio #6 -- Soluzione

<div style="font-size: 90%" >

:question: &nbsp;&nbsp;&nbsp; Il numero medio di partner eterosessual in campione di 760 uomini 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inglesi tra i 35 e i  44 anni di et&agrave; &egrave; 11.4 $\pm$ 11.2 partner.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qual &egrave; la media della popolazione e il suo 95% CI? 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\mu=11.4$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $\hat{\text{SE}}=s/\sqrt{n} = \frac{11.2}{\sqrt760}=0.41$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $95\% \text{ ME} = 2 \times \hat{\text{SE}} = 2 \times 0.41 = 0.82$

</div>

---
### Esercizio #6 -- Soluzione

<div style="font-size: 90%" >

:question: &nbsp;&nbsp;&nbsp; Il numero medio di partner eterosessual in campione di 760 uomini 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inglesi tra i 35 e i  44 anni di et&agrave; &egrave; 11.4 $\pm$ 11.2 partner.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qual &egrave; la media della popolazione e il suo 95% CI? 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\mu=11.4$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\hat{\text{SE}}=s/\sqrt{n} = \frac{11.2}{\sqrt760}=0.41$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $95\% \text{ ME} = 2 \times \hat{\text{SE}} = 2 \times 0.41 = 0.82$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $95\% \text{CI} =  (\bar{x} - 95\% \text{ ME} \text{ } ; \text{ } \bar{x} + 95\% \text{ ME} ) =$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $=(11.4 - 0.82; 11.4 + 0.82) =$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $= (10.68; 12.22)$

</div>

<!-- Per il CTL e per la legge dei grandi numeri, la media del campione e' la media della popolazione. Se io prendo 2SE a sx della media e 2SE a destra (quindi x +/- 2 SE) ho il 95% di probabilta' di includere il vero valore mu, la media della popolazione

1,96 e' il coefficiente di attendibilita', ci dice entro quanti errori standard si trova il 95% di tutti i possibili valori della media campionaria

Stima intervallare definita come stimatore +/- il prodotto tra coeff di attendibilita' e SE. Questa quantita' si chiama anche PRECISIONE della STIMA o MARGINE DI ERRORE -->

---
### Esercizio #6 -- Soluzione

<div style="font-size: 90%" >

:question: &nbsp;&nbsp;&nbsp; Il numero medio di partner eterosessual in campione di 760 uomini 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inglesi tra i 35 e i  44 anni di et&agrave; &egrave; 11.4 $\pm$ 11.2 partner.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qual &egrave; la media della popolazione e il suo 95% CI? 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\mu=11.4$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $95\% \text{CI} = (10.68; 12.22)$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  via Bootstrapping $\rightarrow 95\% \text{CI} = (10.6 ; 12.1)$

</div>


---
## Ma come si interpreta?

<div style="font-size: 90%">

:dart: &nbsp;&nbsp;&nbsp; Se facessimo 100 campionamenti, 95 stimerebbero un  intervallo
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  di confidenza che contiene il vero  valore del parametro

</div>

<div class="columns">
<div>

<span style="display:block; height:60px;"></span>

<div style="font-size: 85%">

:pushpin: &nbsp;&nbsp;&nbsp; Popolazione: Donne italiane dai
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 25 ai 74 anni

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\mu=123 \text{ mmHg}$

</div>

</div>
<div>

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/confidence_intervals/womenBP.png" img height="350px" border="4px"/>
</center>

</div>
</div>

<!-- Cosa rappresentano quindi i CI? Che dati 100 campioni estratti dalla popolazione, 95 stimano un IC al cui interno è compresa la media reale della popolazione e solo 5 stimano un ic che non include la media reale 

a confidence interval is the range of population parameters for which our observed statistic is a plausible consequence.
-->

---
### Esercizio #7

<div style="font-size: 90%" >

:question: &nbsp;&nbsp;&nbsp; Da un sondaggio, risulta che lo stipendio mensile medio di un
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; neolaureato &egrave; 1.400&#8364;, con un 95% CI = (1.200&#8364; ; 1.600&#8364;). 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Come interpreto questo risultato?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) gli stipendi dei neolaureati sono compresi tra i 1.200 ai 1.600&#8364;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) il 95% dei neolaureati riceve tra 1.200 ai 1.600&#8364;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) la media degli stipendi dei neolaureati nella popolazione ha una 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; probabilità del 95% di essere compresa tra 1.200 ai 1.600&#8364;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) nessuna delle precedenti

</div>

<span style="display:block; height:40px;"></span>

<!-- Questa differenza di 200 euro a dx e sx della media e' il margine di errore del 95% -->

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
const seconds_exercise_7= 120; // seconds_exercise_7
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

<div style="font-size: 90%" >

:question: &nbsp;&nbsp;&nbsp; Da un sondaggio, risulta che lo stipendio mensile medio di un
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; neolaureato &egrave; 1.400&#8364;, con un 95% CI = (1.200&#8364; ; 1.600&#8364;). 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Come interpreto questo risultato?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) gli stipendi dei neolaureati sono compresi tra i 1.200 ai 1.600&#8364;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) il 95% dei neolaureati riceve tra 1.200 ai 1.600&#8364;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) la media degli stipendi dei neolaureati nella popolazione  ha una 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; probabilità del 95% di essere compresa tra 1.200 ai 1.600&#8364; &nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) nessuna delle precedenti

</div>


---
## Il coefficiente di attendibilit&agrave; $\alpha$ 

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

<div style="font-size: 90%" >

:dart: &nbsp;&nbsp;&nbsp; $\text{95\% ME} \approx 2 \times \hat{SE}$ &nbsp;&nbsp;&nbsp;  &nbsp; $\approx 2$ &nbsp; ?

</div>

<span style="display:block; height:10px;"></span>

<div style="font-size: 78%" >

| Livello di confidenza | $\alpha$ | $\alpha/2$ | $z_{\alpha/2}$ |
| ----: | ----- | ---- | ----|
| 95% | 5% | 2.5% |  |

</div>

</div>
<div>

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/confidence_intervals/alpha_level.png" img height="500px" border="0px"/>
</center>

</div>
</div>

<!-- L’intervallo di confidenza (IC) al 95% è il più usato e intuitivamente abbiamo gia' capito da dove deirva il fattore 1.96 (circa 2SE contengono il 95% dei campioni), ma vediamolo in modo piu' formale 

Quando accettiamo un livello di confidenza del 95% accettiamo implicitamente un errore del 5%, distribuito equamente a dx e sx dell'intrevallo di confidenza (in verde), quindi 2.5% per parte -->

---
## Il coefficiente di attendibilit&agrave; $\alpha$ 

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

<div style="font-size: 90%" >

:dart: &nbsp;&nbsp;&nbsp; $\text{95\% ME} \approx 2 \times \hat{SE}$ &nbsp;&nbsp;&nbsp;  &nbsp; $\approx 2$ &nbsp; ?

</div>

<span style="display:block; height:10px;"></span>

<div style="font-size: 78%" >

| Livello di confidenza | $\alpha$ | $\alpha/2$ | $z_{\alpha/2}$ |
| ----: | ----- | ---- | ----|
| 95% | 5% | 2.5% |  |

</div>

<span style="display:block; height:10px;"></span>

<div style="font-size: 90%" >

$100\% - 2.5\% = 97.5\%$ 

</div>

</div>
<div>

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/confidence_intervals/alpha_level.png" img height="500px" border="0px"/>
</center>


</div>
</div>

<!--  e qual e' l'aera di questa parte bianca? E' la totalita' dell'area (1, o 100%) meno l'area bianca (2.5%), quindi 97.5%-->

---
## Il coefficiente di attendibilit&agrave; $\alpha$ 


<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

<div style="font-size: 90%" >

:dart: &nbsp;&nbsp;&nbsp; $\text{95\% ME} \approx 2 \times \hat{SE}$ &nbsp;&nbsp;&nbsp;  &nbsp; $\approx 2$ &nbsp; ?

</div>

<span style="display:block; height:10px;"></span>

<div style="font-size: 78%" >

| Livello di confidenza | $\alpha$ | $\alpha/2$ | $z_{\alpha/2}$ |
| ----: | ----- | ---- | ----|
| 95% | 5% | 2.5% |  |

</div>

<span style="display:block; height:10px;"></span>

<div style="font-size: 90%" >

$100\% - 2.5\% = 97.5\% \rightarrow \mathcal{z} = 1.96$  

</div>

</div>
<div>

<span style="display:block; height:30px;"></span>

<center>
<img src="./img/confidence_intervals/normal_table_zoom2.png" img height="400px" border="4px"/>
</center>

</div>
</div>

<!--  E' qual e' il valore di z per cui la curva sottende un'area del 97.5%? 1.96 (le tavole si possono anche leggere al contrario, non solo da z all'area, ma anche dall'area a z) 

coefficiente di attendibilita'-->

---
## Il coefficiente di attendibilit&agrave; $\alpha$ 

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

<div style="font-size: 78%" >

| Livello di confidenza | $\alpha$ | $\alpha/2$ | $z_{\alpha/2}$ |
| ----: | -----: | ---- | ----:|
| 95% | 5% | 2.5% | 1.96 |
| 90% | 10% | 5.0% | 1.65 |
| 99% | 1% | 0.5% | 2.58 |

</div>

<span style="display:block; height:10px;"></span>

<div style="font-size: 90%" >

$100\% - 2.5\% = 97.5\% \rightarrow \mathcal{z} = 1.96$ 
$100\% - 5.0\% = 95.0\% \rightarrow \mathcal{z} = 1.65$ 
$100\% - 0.5\% = 99.5\% \rightarrow \mathcal{z} = 2.58$ 
</div>

</div>
<div>

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/confidence_intervals/alpha_level.png" img height="500px" border="0px"/>
</center>

</div>
</div>

<!-- 95% e' il valore piu' usato, ma altri comuni sono 90 e 99%, a cui corrispondono fattori di attendibilita' di 1.65 e 2.58

Faremo piu' avanti degli esercizi in cui ci calcoleremo 90 e 99% CI -->


---
### Esercizio #8

<div class="columns">
<div>

<span style="display:block; height:30px;"></span>

<div style="font-size: 79%" >

:question: &nbsp;&nbsp;&nbsp; Se l'intervallo di confidenza 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &egrave; largo...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) &egrave; pi&ugrave; probabile che includa $\mu$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) &egrave; meno probabile che includa $\mu$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) non c'&egrave; differenza
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) non posso rispondere

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
const seconds_exercise_8= 120; // seconds_exercise_8
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
<div>

<center>
<img src="./img/confidence_intervals/unannotated_CI.png" img height="500px" border="0px"/>
</center>

</div>
</div>



---
### Esercizio #8 -- Soluzione

<span style="display:block; height:30px;"></span>

<center>
<img src="./img/confidence_intervals/small_large_CI_likelihood.png" img height="450px" border="0px"/>
</center>

---
### Esercizio #8 -- Soluzione

<div class="columns">
<div>

<span style="display:block; height:30px;"></span>

<div style="font-size: 79%" >

:question: &nbsp;&nbsp;&nbsp; Se l'intervallo di confidenza 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &egrave; largo...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) &egrave; pi&ugrave; probabile che includa $\mu$ :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) &egrave; meno probabile che includa $\mu$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) non c'&egrave; differenza
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) non posso rispondere

</div>
</div>
<div>

<center>
<img src="./img/confidence_intervals/unannotated_CI.png" img height="500px" border=0px"/>
</center>

</div>
</div>



---
### Esercizio #9

<div class="columns">
<div>

<span style="display:block; height:30px;"></span>

<div style="font-size: 80%" >

:question: &nbsp;&nbsp;&nbsp; Pi&ugrave; l'intervallo di confidenza  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &egrave; largo...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) meno siamo precisi
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) pi&ugrave; siamo precisi
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) non c'&egrave; differenza
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) non posso rispondere

</div>

<span style="display:block; height:60px;"></span>

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
const seconds_exercise_9= 120; // seconds_exercise_9
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
<div>

<center>
<img src="./img/confidence_intervals/unannotated_CI.png" img height="500px" border="0px"/>
</center>

</div>
</div>



---
### Esercizio #9 -- Soluzione

<span style="display:block; height:30px;"></span>

<center>
<img src="./img/confidence_intervals/small_large_CI_precision.png" img height="450px" border="0px"/>
</center>

---
### Esercizio #9 -- Soluzione

<div class="columns">
<div>

<span style="display:block; height:30px;"></span>

<div style="font-size: 80%" >

:question: &nbsp;&nbsp;&nbsp; Pi&ugrave; l'intervallo di confidenza  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &egrave; largo...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) meno siamo precisi &nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) pi&ugrave; siamo precisi
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) non c'&egrave; differenza
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) non posso rispondere

</div>
</div>
<div>

<center>
<img src="./img/confidence_intervals/unannotated_CI.png" img height="500px" border="0px"/>
</center>

</div>
</div>




<!--  It is far easier to obtain exact intervals that are based on probability theory and provided in standard software, and Table 9.1 shows they give very similar results. The ‘exact’ intervals based on probability theory require more assumptions than the bootstrap approach, and strictly speaking would only be precisely correct if the underlying population distribution were normal. But the Central Limit Theorem means that with such a large sample size it is reasonable to assume our estimates have got normal distributions and so the exact intervals are acceptable.
--->

---
### Esercizio #10

<div style="font-size: 90%" >

:question: &nbsp;&nbsp;&nbsp; Dato che $\mathcal{N} = (\mu, \frac{\sigma^2}{n})$ con $\sqrt{ \frac{\sigma^2}{n}} = \frac{\sigma}{\sqrt{n}} \rightarrow$ &nbsp; standard error (SE), 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  come posso restringere l'intervallo di confidenza?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) aumentando $n$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) diminuendo $n$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) aumentando $\sigma$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) diminuendo $\sigma$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e) nessuna delle precedenti
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; f) non ho abbastanza elementi per rispondere

</div>

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
const seconds_exercise_10= 120; // seconds_exercise_10
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


---
### Esercizio #10 -- Soluzione

<div style="font-size: 90%" >

:question: &nbsp;&nbsp;&nbsp; Dato che $\mathcal{N} = (\mu, \frac{\sigma^2}{n})$ con $\sqrt{ \frac{\sigma^2}{n}} = \frac{\sigma}{\sqrt{n}} \rightarrow$ &nbsp; standard error (SE), 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  come posso restringere l'intervallo di confidenza?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) aumentando $n$ &nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) diminuendo $n$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) aumentando $\sigma$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) diminuendo $\sigma$ &nbsp; :ballot_box_with_check:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e) nessuna delle precedenti
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; f) non ho abbastanza elementi per rispondere

</div>

<!-- Abbiamo un confidence interval molto stretto perche' si sono verificate due condizioni che, indipendentemente, migliorano la stima intervallare:
- un'alta numerosit&agrave; campionaria e
- una bassa variabilita s tra le osservazioni 

Peccato che sigma non la possiamo controllare :) 
-->



---
## Una regola empirica

:dart: &nbsp;&nbsp;&nbsp; Il margine di errore (in percentuale) &egrave; al pi&ugrave; $\pm \text{ } 100/\sqrt{n}$


<!-- A simple rule of thumb is that, if you are estimating the percentage of people who prefer something, and you ask a random sample from a population, then your margin of error (in %) is at most plus or minus 100 divided by the square root of the sample size 

 The margin of error is ± 2√[p(1 − p)/n], whose maximum value of ± 1/√n occurs at p = 0.5. Hence the margin of error is at most ± 1/√n, whatever value of the underlying true proportion p.
-->

---
### Esercizio #11

:dart: &nbsp;&nbsp;&nbsp; Il margine di errore (in percentuale) &egrave; al pi&ugrave; $\pm \text{ } 100/\sqrt{n}$

<div class="columns">
<div>

<span style="display:block; height:1px;"></span>

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Calcolate il 95% CI per le due
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; affermazioni

</div>

<span style="display:block; height:150px;"></span>

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
const seconds_exercise_11= 300; // seconds_exercise_11
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


</div>
<div>

<span style="display:block; height:40px;"></span>

<center>
<img src="./img/confidence_intervals/antirughe.png" img height="350px" border="4px"/>
</center>

</div>

---
### Esercizio #11 -- Soluzione

:dart: &nbsp;&nbsp;&nbsp; Il margine di errore (in percentuale) &egrave; al pi&ugrave; $\pm \text{ } 100/\sqrt{n}$

<div class="columns">
<div>

<span style="display:block; height:1px;"></span>

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Calcolate il 95% CI per le due
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; affermazioni

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $\text{ME} = 100/\sqrt{31} = 18\%$


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $\text{95\% CI}_\text{rughe} = (17-18; 17+18)$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $= (-1\%, 35\%)$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $\text{95\% CI}_\text{occhi} = (33-18; 33+18)$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $= (15\%, 51\%)$

</div>

</div>
<div>

<span style="display:block; height:40px;"></span>

<center>
<img src="./img/confidence_intervals/antirughe.png" img height="350px" border="4px"/>
</center>

</div>

<!-- Comprereste questa crema? Fortunatamente costa poco <10 euro per 15ml (Q10 POWER CONTORNO OCCHI RASSODANTE ) -->

---
## E se il campione &egrave; piccolo?

<div class="columns">
<div>

<span style="display:block; height:1px;"></span>

<div style="font-size: 85%" >

- Non posso approssimare a una Normale
- Uso la $\mathcal{t}$ di Student
  
</div>

</div>
<div>

<span style="display:block; height:5px;"></span>


</div>
</div>

<!-- Quando la dimensione campionaria e' grande la nostra fiducia nell'approssimare sigma con la varianza campionaria e' ben riposta  e possiamo usare la normale per il calcolo dei CI, ma cosa succede quando i campioni soo piccoli? Usiamo la distribuzione  di Student
 -->

---
## $\mathcal{t}$ di Student 

<div class="columns">
<div>

<span style="display:block; height:1px;"></span>

<div style="font-size: 85%" >

- Non posso approssimare a una Normale
- Uso la $\mathcal{t}$ di Student
  - considera i gradi di libert&agrave; (df)
</div>

</div>
<div>

<span style="display:block; height:5px;"></span>

<center>
<img src="./img/confidence_intervals/tdist_df1.png" img height="500px" border="0px"/>
</center>

</div>
</div>

<!-- 
- &egrave; una famiglia di distribuzioni, 1 per ogni valore campionario n-1

Come la normale:
- ha media 0
- &egrave; simmetrica
- ha varianza >1 che si avvicina a 1 al crescere di N


Meno appuntita al centro e code pi&ugrave; alte
 -->


 ---
## $\mathcal{t}$ di Student 

<div class="columns">
<div>

<span style="display:block; height:1px;"></span>

<div style="font-size: 85%" >

- Non posso approssimare a una Normale
- Uso la $\mathcal{t}$ di Student
  - considera i gradi di libert&agrave; (df)
</div>

</div>
<div>

<span style="display:block; height:5px;"></span>

<center>
<img src="./img/confidence_intervals/tdist_df5.png" img height="500px" border="0px"/>
</center>

</div>
</div>

<!-- 
- &egrave; una famiglia di distribuzioni, 1 per ogni valore campionario n-1

Come la normale:
- ha media 0
- &egrave; simmetrica
- ha varianza >1 che si avvicina a 1 al crescere di N


Meno appuntita al centro e code pi&ugrave; alte
 -->

 ---
## $\mathcal{t}$ di Student 

<div class="columns">
<div>

<span style="display:block; height:1px;"></span>

<div style="font-size: 85%" >

- Non posso approssimare a una Normale
- Uso la $\mathcal{t}$ di Student
  - considera i gradi di libert&agrave; (df)
</div>

</div>
<div>

<span style="display:block; height:5px;"></span>

<center>
<img src="./img/confidence_intervals/tdist_df30.png" img height="500px" border="0px"/>
</center>

</div>
</div>

<!-- 
- &egrave; una famiglia di distribuzioni, 1 per ogni valore campionario n-1

Come la normale:
- ha media 0
- &egrave; simmetrica
- ha varianza >1 che si avvicina a 1 al crescere di N


Meno appuntita al centro e code pi&ugrave; alte
 -->

---
## $\mathcal{t}$ di Student per CI in campioni piccoli

<div class="columns">
<div>

<span style="display:block; height:1px;"></span>

<div style="font-size: 85%" >

- Non posso approssimare a una Normale
- Uso la $\mathcal{t}$ di Student
  - considera i gradi di libert&agrave; (df)
  - in un campione di dimensione $n$ $\rightarrow \text{df} = n -1$
  <!-- - per due campioni di dimensione $n_1 \land n_2 \rightarrow \mathcal{df} = n_1 -1 + n_2 - 1 =$
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $= n_1 + n_2 -2$ -->

<span style="display:block; height:80px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{95\% ME} = \mathcal{t} \times \hat{SE}$ 

</div>

</div>
<div>

<center>
<img src="./img/confidence_intervals/tdist_table_zoom.png" img height="550px" border="4px"/>
</center>

</div>
</div>

<!-- Piccoli == <30 circa  -->

---
### Esercizio #12

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Un ricercatore usa la statistica inferenziale se sta usando i 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; propri risultati per...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) descrivere i dati che ha raccolto
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) stimare un parametro di una popolazione
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) nessuna delle precedenti

</div>

<span style="display:block; height:100px;"></span>

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
const seconds_exercise_12= 60; // seconds_exercise_12
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

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Un ricercatore usa la statistica inferenziale se sta usando i 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; propri risultati per...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) descrivere i dati che ha raccolto
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) stimare un parametro di una popolazione &nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) nessuna delle precedenti

</div>

---
### Esercizio #13

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Un ricercatore usa la statistica descrittiva se sta usando i 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; propri risultati per...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) descrivere i dati che ha raccolto
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) stimare un parametro di una popolazione
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) nessuna delle precedenti

</div>

<span style="display:block; height:100px;"></span>

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
const seconds_exercise_13= 60; // seconds_exercise_13
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

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Un ricercatore usa la statistica descrittiva se sta usando i 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; propri risultati per...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) descrivere i dati che ha raccolto &nbsp; :white_check_mark:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) stimare un parametro di una popolazione 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) nessuna delle precedenti

</div>


---
## Cosa abbiamo imparato in questa lezione?

<span style="display:block; height:0px;"></span>

<div style="font-size: 85%">

- Gli intervalli di confidenza (CI)/margini di errore (ME) sono un aspetto importante di come vengono comunicate le statistiche
- La dimensione del campione influenza la larghezza dei CI
- Attraverso il bootstrapping si ricampiona il dataset originale con rimpiazzo, ottenendo distribuzioni che tendono alla normale
- Il teorema del limite centrale ci dice che le distribuzioni campionarie tendono alla normale per campioni grandi, con formule per calcolare i CI
- Un CI del 95% risulta da una procedura che nel 95% dei casi contiene il valore della popolazione
- Per campioni piccoli, la distribuzione campionaria viene approssimata dalla distribuzione $\mathcal{t}$ di Student

</div>
