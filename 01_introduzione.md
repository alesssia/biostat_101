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

<!-- Pesante in lunedi', interrompero' con esercizi, cosi' pesante che chiedo a tutti uno sforzo per farcela passare -->

---
## Un po' di interazione, per favore :pray:

<span style="display:block; height:60px;"></span>

- Alzando la mano durante la lezione
- All'inizio/fine della lezione e nelle pause
- Prendendo appuntamento via email (alessia.visconti@unito.it)
- (Sperimentale) via note anonime

---
## Perche' siamo qui?

<span style="display:block; height:360px;"></span>

<style>
  #countdown_think{
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

<div align="right"> Think: &nbsp;&nbsp;&nbsp; <button id="countdown_think"></button></div>

<script>
<!--
const countdown_think= document.getElementById("countdown_think");
const seconds_think= 120; // seconds_think
let timeLeft_think= seconds_think;
let timerInterval_think= null;

function formatTime_think(seconds_think) {
  const minutes = Math.floor(seconds_think/ 60);
  const remainingseconds_think= seconds_think% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_think).padStart(2, '0')}`;
}

function updateButton_think() {
  countdown_think.textContent = formatTime_think(timeLeft_think);
}

function startTimer_think() {
  if (timerInterval_think=== null) {
    countdown_think.classList.add('running');
    countdown_think.classList.remove('finished');
    timerInterval_think= setInterval(() => {
      if (timeLeft_think> 0) {
        timeLeft_think--;
        updateButton_think();
      } else {
        clearInterval(timerInterval_think);
        timerInterval_think= null;
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
  timerInterval_think= null;
  countdown_think.classList.remove('running');
}

function resetTimer_think() {
  timeLeft_think= seconds_think;
  updateButton_think();
  countdown_think.classList.remove('finished');
  countdown_think.classList.remove('running');
  timerInterval_think= null;
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

---
## Perche' siamo qui?

<span style="display:block; height:360px;"></span>

<style>
  #countdown_pair{
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

<div align="right"> Pair: &nbsp;&nbsp;&nbsp; <button id="countdown_pair"></button></div>

<script>
<!--
const countdown_pair= document.getElementById("countdown_pair");
const seconds_pair= 300; // seconds_pair
let timeLeft_pair= seconds_pair;
let timerInterval_pair= null;

function formatTime_pair(seconds_pair) {
  const minutes = Math.floor(seconds_pair/ 60);
  const remainingseconds_pair= seconds_pair% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_pair).padStart(2, '0')}`;
}

function updateButton_pair() {
  countdown_pair.textContent = formatTime_pair(timeLeft_pair);
}

function startTimer_pair() {
  if (timerInterval_pair=== null) {
    countdown_pair.classList.add('running');
    countdown_pair.classList.remove('finished');
    timerInterval_pair= setInterval(() => {
      if (timeLeft_pair> 0) {
        timeLeft_pair--;
        updateButton_pair();
      } else {
        clearInterval(timerInterval_pair);
        timerInterval_pair= null;
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
  timerInterval_pair= null;
  countdown_pair.classList.remove('running');
}

function resetTimer_pair() {
  timeLeft_pair= seconds_pair;
  updateButton_pair();
  countdown_pair.classList.remove('finished');
  countdown_pair.classList.remove('running');
  timerInterval_pair= null;
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

---
## Perche' siamo qui?

<span style="display:block; height:360px;"></span>

<style>
  #countdown_share{
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

<div align="right"> Share: &nbsp;&nbsp;&nbsp; <button id="countdown_share"></button></div>

<script>
<!--
const countdown_share= document.getElementById("countdown_share");
const seconds_share= 300; // seconds_share
let timeLeft_share= seconds_share;
let timerInterval_share= null;

function formatTime_share(seconds_share) {
  const minutes = Math.floor(seconds_share/ 60);
  const remainingseconds_share= seconds_share% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_share).padStart(2, '0')}`;
}

function updateButton_share() {
  countdown_share.textContent = formatTime_share(timeLeft_share);
}

function startTimer_share() {
  if (timerInterval_share=== null) {
    countdown_share.classList.add('running');
    countdown_share.classList.remove('finished');
    timerInterval_share= setInterval(() => {
      if (timeLeft_share> 0) {
        timeLeft_share--;
        updateButton_share();
      } else {
        clearInterval(timerInterval_share);
        timerInterval_share= null;
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
  timerInterval_share= null;
  countdown_share.classList.remove('running');
}

function resetTimer_share() {
  timeLeft_share= seconds_share;
  updateButton_share();
  countdown_share.classList.remove('finished');
  countdown_share.classList.remove('running');
  timerInterval_share= null;
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


---
## Comprereste questo colluttorio?

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/introduction/colluttorio.png" img height="450px" border="4px"/>
</center>

---
## Ma quanti sono il 99.99% dei batteri?

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/introduction/hand_sanitizer.png" img height="350px" border="4px"/>
</center>

---
## Vi sottoporrested a un trattamento con...

<div style="font-size: 120%" align="left">
<br/> ...una probabilita' di insuccesso del 5%?
<div>

<span style="display:block; height:10px;"></span>

<div class="columns">
<div>

<center>
<img src="./img/introduction/Unsuccess_rate.png" img height="350px" border="0px"/>
</center>

</div>
<div>

</div>
</div>

---
## Vi sottoporrested a un trattamento con...

<div style="font-size: 120%" align="right">
<br/> ...una probabilita' di successo del 95%?
<div>

<span style="display:block; height:10px;"></span>

<div class="columns">
<div>


</div>
<div>

<center>
<img src="./img/introduction/Success_rate.png" img height="350px" border="0px"/>
</center>


</div>
</div>

---
## Vi sottoporrested a un trattamento con...

<div style="font-size: 120%" align="right">
<br/> &nbsp; 
<div>

<span style="display:block; height:10px;"></span>

<div class="columns">
<div>

<center>
<img src="./img/introduction/Unsuccess_rate.png" img height="350px" border="0px"/>
</center>

</div>
<div>

<center>
<img src="./img/introduction/Success_rate.png" img height="350px" border="0px"/>
</center>


</div>
</div>

<!-- Positive or negative framing of proportions can change their emotional impact.  -->

---
## Cosa ci dice questo grafico?

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/introduction/autism.png" img height="420px" border="4px"/>
</center>

<div style="font-size: 50%" align="right">
<br/>Jensen, C.M., *et al*, *Time Trends Over 16 Years in Incidence-Rates of Autism Spectrum Disorders Across the Lifespan Based on Nationwide Danish Register Data*. J Autism Dev Disord (2014). doi:10.1007/s10803-014-2053-6
<div>

---
## Siamo d'accordo?

<span style="display:block; height:60px;"></span>

<center>
<img src="./img/introduction/autism_epidemic.png" img height="220px" border="4px"/>
</center>

<!-- Better diagnostic practices may explain these large hikes in incidence, says Maureen Durkin, professor of population health sciences and pediatrics at the University of Wisconsin in Madison.

“There’s much more awareness of autism,” say Durkin, who was not involved in the study. “There’s much more screening going on. And the newer generation of clinicians are being trained in this so they are more likely to see it.”

This increased attention to autism and its symptoms may also explain the rise in diagnoses of teenagers and adults.

“If the incidence [in adults] is increasing, it just has to do with recognition of cases that have been missed up to that age,” Fombonne says. “It cannot be that you develop autism at age 50.”
 -->

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
## Educazione civica, 1935 (ca.)

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/introduction/lefthandess_2.jpeg" img height="480px" border="4px"/>
</center>

---
## Cicogne e bambini

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/introduction/storks.png" img height="420px" border="4px"/>
</center>

<div style="font-size: 50%" align="right">

<br/> Sies, H., *A new parameter for sex education*. Nature, 1988, doi:10.1038/332495a0

<div>


<!-- Correlation is not causation, Correlazione non e' causalita', "dopo di" non significa "a causa di". 

La maggioranza delle malattie che secondo alcuni (profani) sarebbero sorte "a causa del vaccino" iniziano a manifestarsi (o sono diagnosticate) proprio nell'età in cui ci si vaccina. Come sappiamo la vaccinazione si fa nella primissima infanzia, proprio per proteggere questa fascia della popolazione (tra le più deboli) dalle malattie infettive. La correlazione principe di cui si è parlato spesso in questi anni è quella tra vaccini ed autismo. Scientificamente smentita, una delle affermazioni che si ripetono continuamente è: "il bambino stava bene, dopo la vaccinazione è diventato autistico". 

Artefatto dovuto alla doppia scala, ne parleremo ancora quando vedremo la visualizzazione dei dati
-->

---
## L'insostenibile pesantezza del gatto

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/introduction/correlation_meme.jpg" img height="420px" border="4px"/>
</center>

---
## Perche' siamo qui?

<span style="display:block; height:10px;"></span>

- perché i "numeri" (o meglio, il modo in cui sono presentati) a volte ingannano!


<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

<center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="./img/introduction/correlation.png" img height="185px" border="4px"/>
</center>

</div>
<div>

<center>
<img src="./img/introduction/tobacco.png" img height="330px" border="4px"/>
</center>

</div>
</div>


<!-- The numbers have no way of speaking for themselves. We speak for them. We imbue them with meaning.

— Nate Silver, The Signal and the Noise1 -->

---
## Perche' siamo qui?

<span style="display:block; height:60px;"></span>

> Perche' i soldati al fronte muoiono?

---
## Qualcuno conosce questa persona?

<span style="display:block; height:1px;"></span>


<center>
<img src="./img/introduction/220px-Florence_Nightingale_(H_Hering_NPG_x82368).jpg" img height="450px" align="right" border="4px"/>
</center>


<!-- Serve qualcuno che non solo si ponga la domanda, ma sappia anche come rispondere. 

Sapete chi e questa persona?

Florence Nightingale era un'infermiera britannica che e' considerata la madre dell'infermieristica come la intendiamo oggi, un titolo che si e' guadagnato durante la guerra di Crimea, quando era sovrintendente di un ospedale di Instambul. 


Appena arrivata ad Instabul, Florence, si accorge subito delle pessime condizioni di sovraffollameto e pulizia, ma oltre a cercare di mettere una pezza, pulendo e disinfettando tutto con le sue infermiere,  si mette anche a raccogliere dati, soprattutto sulle cause di morte dei soldati -->

---
## Perche' i soldati al fronte muoiono?

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

- perché i "numeri" (o meglio, il modo in cui sono presentati) a volte ingannano!
- perche' i "numeri" (e il modo in cui sono presentati) ci aiutano a descrivere, capire e cambiare il mondo


---
## Perche' siamo qui?

<span style="display:block; height:30px;"></span>

- per imparare a leggere, comprendere e analizzare criticamente documenti scientifici o divulgativi
- per essere in grado di effettuare ricerche che comportino l’acquisizione, l’elaborazione e l’analisi di dati

<span style="display:block; height:120px;"></span>

<div style="font-size: 150%" align="right">
<b>Data literacy</b>
</div>

---

<span style="display:block; height:200px;"></span>


## La ricerca scientifica

<!-- Iniziamo a spostarci piu' verso il terreno che ci interessa, ovvero come avviene la ricerca scientifica e che ruolo gioca la statistica -->

---
## In principio c'e' sempre una domanda

<div class="columns">
<div>

<span style="display:block; height:60px;"></span>

> Perche' i soldati, al fronte, muoiono?

</div>
<div>


</div>
</div>

---
## Poi si prepara un piano di azione

<div class="columns">
<div>

<span style="display:block; height:60px;"></span>

* Come rispondo alla mia domanda?

</div>
<div>

<span style="display:block; height:1px;"></span>

<img src="./img/introduction/220px-Florence_Nightingale_(H_Hering_NPG_x82368).jpg" img height="450px" align="right" border="4px"/>

</div>
</div>

---
## Poi si raccolgono i dati

<span style="display:block; height:1px;"></span>

<img src="./img/introduction/reparto-ospedaliero-a-scutari-joseph-austin-benwell-1856-circa_b35770b5_800x481.jpg" img height="430px" align="right" border="4px"/>

<div style="font-size: 50%" align="right">

<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/> Reparto ospedaliero a Scutari. J.A. Benwell. 1856 circa

</div>

---
## Poi i dati vengono analizzati

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/introduction/Nightingale-mortality.png" img height="480px"  border="4px" align="right"/>
</center>

---
## Finalmente possiamo trarre delle conclusioni

<span style="display:block; height:1px;"></span>


<img src="./img/introduction/Unknown_artist_-_Florence_Nightingale_(1820_-_1910)_at_Scutari_Hospital_in_Turkey_around_1855_-_(MeisterDrucke-1007503).jpg" img height="440px"  border="4px" align="right"/>


<div style="font-size: 50%" align="right">

<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>  Florence Nightingale (1820 - 1910) at Scutari Hospital in Turkey around 1855, Artista ignoto

</div>

<!-- E cosa concludiamo? 
Che migliorare le condizioni igenice (pulizia, luce, ventilazione, ...) degli ospedali, aumenta le possibilita' di salvare il paziente. 

E se questo e' ovvio oggi, lo dobbiamo alla sua abilita' nel raccogliere e presentare i dati, e nel prendere delle decisioni basate su di essi. Insomma, grazie alla statistica. -->

---
## Le fasi della ricerca

<span style="display:block; height:2px;"></span>

<center>
<img src="./img/introduction/PPDAC.png" img height="450px" border="0px"/>
</center>

<div style="font-size: 50%" align="right">

Spiegelhalter, D., *The Art of Statistics: Learning From Data*, Pelican, 2019

</div>

<!--The first stage of the cycle is specifying a Problem; statistical inquiry always starts with a question, such as our asking about the pattern of Harold Shipman’s murders or the number of trees in the world. Later in this book we shall focus on problems ranging from the expected benefit of different therapies immediately following breast cancer surgery, to why old men have big ears.

It is tempting to skip over the need for a careful Plan. The Shipman question simply required the collection of as much data as possible on his victims. But the people counting trees paid meticulous attention to precise definitions and how to carry out the measurements, since confident conclusions can only be drawn from a study which has been appropriately designed. Unfortunately, in the rush to get data and start analysis, attention to design is often glossed over.

Collecting good Data requires the kind of organizational and coding skills that are being seen as increasingly important in data science, particularly as data from routine sources may need a lot of cleaning in order to get it ready to be analysed. Data collection systems may have changed over time, there may be obvious errors, and so on – the phrase ‘found data’ neatly communicates that it may be rather messy, like something picked up in the street.

The Analysis stage has traditionally been the main emphasis of statistics courses, and we shall cover a range of analytic techniques in this book; but sometimes all that is required is a useful visualization, as in Figure 0.1. Finally, the key to good statistical science is drawing appropriate Conclusions that fully acknowledge the limitations in the evidence, and communicating them clearly, as in the graphical illustrations of the Shipman data. Any conclusions generally raise more questions, and so the cycle starts over again, as when we started looking at the time of day when Shipman’s patients died.

Although in practice the PPDAC cycle laid out in Figure 0.3 may not be followed precisely, it underscores that formal techniques for statistical analysis play only one part in the work of a statistician or data scientist. Statistical science is a lot more than a branch of mathematics involving esoteric formulae with which generations of students have (often reluctantly) struggled.

Teaching statistics is changing from a focus on mathematical methods to one based on an entire problem-solving cycle.
-->

---
## Cos'e' la statistica?

<span style="display:block; height:30px;"></span>

* La raccolta, organizzazione, sintesi, e analisi dei dati <br/> &nbsp;&nbsp;&nbsp; &rarr; statistica *Descrittiva* 

* Processo mediante il quale vengono effettuate deduzioni su
grandi gruppi sulla base di dati raccolti in gruppi piu' ristretti  <br/> &nbsp;&nbsp;&nbsp; &rarr; statistica *Inferenziale* 

<!-- - Individuare in maniera efficiente i tratti importanti delle informazioni che sono state raccolte

- Partire dal particolare per capire come le informazioni si possono estendere alla totalità -->

---

## Perche' siamo qui?

<span style="display:block; height:40px;"></span>

> *Se mi rimanesse una sola ora di vita vorrei trascorrerla assistendo ad una lezione di statistica perchè mi sembrerebbe durare per sempre*

<div align="right">
(un&#601; Student&#601;)
</div>