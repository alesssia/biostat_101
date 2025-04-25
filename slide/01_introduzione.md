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


<!-- ### Lezione 1  -->
# Introduzione
## &nbsp;

---
## Perch&eacute; siamo qui?

<span style="display:block; height:400px;"></span>

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

<div align="right"> Think: &nbsp;&nbsp;&nbsp; <button id="countdown_think"></button> </div>

<script>
<!--
const countdown_think= document.getElementById("countdown_think");
const seconds_think= 60; // seconds_think
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
## Perch&eacute; siamo qui?

<span style="display:block; height:400px;"></span>

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
const seconds_pair= 120; // seconds_pair
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
## Perch&eacute; siamo qui?

<span style="display:block; height:400px;"></span>

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
## Comprereste questo collutorio?

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/introduction/colluttorio.png" img height="450px" border="4px"/>
</center>

<!-- CHIEDERE SEMPRE Perch&eacute; RISPONDONO COSI'

Cosa vuol dire "fino al"? Se eliminasse il 10% dei batteri e raggiungesse il 20% della bocca, questo annuncio sarebbe ancora vero, o lo dobbiamo segnalare per pubblicita' ingannevole? Unico modo per renderlo falso e' che elimini tutti batteri e raggiunga piu' di tutta la bocca (due condizioni abbastanza improbabili, nel primo caso, o impossibili, nel secondo) -->


---
## Cicogne e bambini

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/introduction/storks.png" img height="420px" border="4px"/>
</center>

<div style="font-size: 50%" align="right">

<br/> Sies, H., *A new parameter for sex education*. Nature, 1988, doi:10.1038/332495a0

</div>

<!-- 
DESCRIVERE BENE IL GRAFICO.

Qual e' lo scopo di questo grafico? Convincerci che c'e' una relazione tra questi due valori

Artefatto dovuto alla doppia scala, vado a trasformare le due distribuzioni empiriche (ovvero la collezione di valori raccolti) in modo che "sembrino" di avere lo stesso andamento. C'e' un sito che ne raccoglie centinaia di questi esempi
-->

---
## Cosa ne concludete?

<span style="display:block; height:0px;"></span>

- Le donne inglesi, che consumano grandi quantit&agrave; di latte, sviluppano alcuni tipi di tumore con 18 volte pi&ugrave; frequenza delle donne giapponesi, che raramente lo bevono
* Solitamente i tumori si manifestano in tarda et&agrave;
* Le donne inglesi vivono, in media, 12 anni pi&ugrave; a lungo delle donne giapponesi


<span style="display:block; height:50px;"></span>

<div style="font-size: 50%" align="right">

<br/> Huff, D., *How to lie with statistics*. W. W. Norton & Company, 1954

</div>

<!-- Chiedere cosa ne pensano mano a mano che aggiungo informazione.

Quello che viene fatto qui e' un post-hoc fallacy. (in latino: Post hoc ergo propter hoc, Dopo di ci`o, quindi a causa di ci`o) `e un’argomentazione apparentemente valida ma fondata su un errore logico in cui si crede che, perch ́e l’evento Y accade dopo l’evento X, allora X debba aver causato Y . L’errore logico consiste nel concludere che ci sia un nesso causale quando `e presente solo un nesso temporale (prima bevo tanto latte, poi mi viene un tumore) 

Per tornare a vaccino e autismo
La maggioranza delle malattie che secondo alcuni (profani) sarebbero sorte "a causa del vaccino" iniziano a manifestarsi (o sono diagnosticate) proprio nell'età in cui ci si vaccina. Scientificamente smentita, una delle affermazioni che si ripetono continuamente è: "il bambino stava bene, dopo la vaccinazione è diventato autistico".

Correlation is not causation, Correlazione non e' causalita', "dopo di" non significa "a causa di"
-->

---
## Perch&eacute; siamo qui?

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


<!-- Statisticulation `e un termine inventato da Darrell Huff nel suo libro “How to lie with statistics” (pubblicato nel 1954). Viene usato per descrivere tutti quei casi un cui le Scienze statistiche vengono usate in modo fuorviante, sia accidentalmente (il ricercatore non si accorge che l'eta' media in Inghilterra e Giappone e' diversa) ma anche volontariamente (l'autismo viene dopo il vaccino, il vaccino causa l'autismo). Vedi anche Framing.

The numbers have no way of speaking for themselves. We speak for them. We imbue them with meaning.

— Nate Silver, The Signal and the Nois
-->

---
## Perch&eacute; siamo qui?

<span style="display:block; height:60px;"></span>

- Perch&eacute; i soldati al fronte muoiono?

<!-- Ma i numeri non ci ingannano solo, ci permettono anche di rispondere a delle domande e prendere delle decisioni -->

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
## Perch&eacute; i soldati al fronte muoiono?

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
## Perch&eacute; siamo qui?

<span style="display:block; height:30px;"></span>

- perché i "numeri" (o meglio, il modo in cui sono presentati) a volte ingannano!
- Perch&eacute; i "numeri" (e il modo in cui sono presentati) ci aiutano a descrivere, capire e cambiare il mondo

---
## Perch&eacute; siamo qui?

<span style="display:block; height:30px;"></span>

- per imparare a leggere, comprendere e analizzare criticamente documenti scientifici o divulgativi
- per essere in grado di effettuare ricerche che comportino l’acquisizione, l’elaborazione e l’analisi di dati

<span style="display:block; height:120px;"></span>

<!-- <div style="font-size: 150%" align="right">
<b>Statistica ma anche data literacy</b>
</div> -->

---

<span style="display:block; height:200px;"></span>


## La ricerca scientifica

<!-- Iniziamo a spostarci piu' verso il terreno che ci interessa, ma prima facciamo un'escursus in un argomento un po' trasversale, ovvero come avviene la ricerca scientifica e che ruolo gioca la statistica -->

---
## In principio c'&egrave; sempre una domanda

<div class="columns">
<div>

<span style="display:block; height:60px;"></span>

- Perch&eacute; i soldati al fronte muoiono?

</div>
<div>


</div>
</div>

---
## Poi si prepara un piano di azione

<div class="columns">
<div>

<span style="display:block; height:60px;"></span>

- Come rispondo alla mia domanda?

</div>
<div>

<span style="display:block; height:1px;"></span>

<img src="./img/introduction/220px-Florence_Nightingale_(H_Hering_NPG_x82368).jpg" img height="450px" align="right" border="4px"/>

</div>
</div>

<!-- Decido di andare in un ospedale da campo per raccogliere dati -->

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

<!-- Questo vuol dire anche andarli a presentare con altri numeri (statistiche) o con rappresentazioni grafiche, come vedremo la prossima lezione -->

---
### Finalmente possiamo trarre delle conclusioni

<span style="display:block; height:1px;"></span>

<img src="./img/introduction/Unknown_artist_-_Florence_Nightingale_(1820_-_1910)_at_Scutari_Hospital_in_Turkey_around_1855_-_(MeisterDrucke-1007503).jpg" img height="440px"  border="4px" align="right"/>


<div style="font-size: 50%" align="right">

<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>  Florence Nightingale (1820 - 1910) at Scutari Hospital in Turkey around 1855, Artista ignoto

</div>

<!-- E cosa concludiamo? 
Che migliorare le condizioni igenice (pulizia, luce, ventilazione, ...) degli ospedali, aumenta le possibilita' di salvare il paziente.  -->

---
## Le fasi della ricerca

<span style="display:block; height:2px;"></span>

<center>
<img src="./img/introduction/PPDAC.png" img height="450px" border="0px"/>
</center>

<div style="font-size: 50%" align="right">

Spiegelhalter, D., *The Art of Statistics: Learning From Data*, Pelican, 2019

</div>


<!-- e' il processo circolare che definisce i passi necessari per risolvere un problema scientifico attraverso l’analisi statistica dei dati. Un esempio `e il PPDAC cycle.

 Problem-Plan-Data-Analysis-Conclusion cycle. 
 
 Nella prima fase si definisce un problema, solitamente formulato come una domanda di ricerca. 
 Nella parte di Planning, il ricercatore decide come rispondere alla domanda di ricerca. Solitamente ignorata, ma assoulutamente cruciale, GARBACE IN, GARBACE OUT. Questo include, 
 i) verificare se esiste una collezione di dati di alta qualit`a che pu`o essere usata, ii) decidere e giustificare perch ́e sia necessario raccogliere nuove collezioni di dati, e quali dati siano necessari e come debbano essere raccolti 
 iii) decidere e giustificare da qua- le Popolazione i dati verranno raccolti, tenendo anche in considerazione considerazione etiche e logistiche (per esempio, questionari che richiedano un tempo troppo lungo per essere completati), 
 iv) decidere e giustificare quando e dove la raccolta dati debba iniziare e finire, 
 v) decidere e giustifi- care i metodi analitici che verranno utilizzati, e 
 vi) definire delle probabili risposte alla domanda di ricerca (ipotesi)
 
 Nella terza fase, i dati vengono raccolti, organizzati, puliti e verificati. 
 Nella quarta fase, i dati vengono esplora- ti, visualizzati e analizzati, per esempio attraverso la creazione di tabelle e/o grafici, di statistiche descrittive. In questo contesto si inseriscono anche il Test di ipotesi e il calcolo e l’interpretazione di un Intervallo di confidenza di una Statistica. 
 Nell’ultima fase, i risultati vengono interpre- tati e comunicati e usati per formulare nuove domande di ricerca la cui risposta verr`a ricercata nel prossimo PPDAC cycle.
-->

---
## Il metodo induttivo

<span style="display:block; height:60px;"></span>

Stabilire una legge universale partendo da singoli casi particolari

<!-- 

Deduttivo: tutti gli uomini sono mortali, Pinco Pallo e' un uomo, Pinco Pallo e' mortale.
Induttivo: vedo che diversi uomini muoiono, tutti gli uomini sono mortali,

Dedittivo: per imparare una lingua prima imparo la grammatica, poi il vocabolario, poi la sintassi e poi parlo
Induttivo: ascolto gli altri parlare e mi arrangio
Insieme: in realta' nella vita usiamo insieme sia induttivo che deduttivom per esempio impariamo delle regole a scuola e dei modi di dire nel paese


Quello che abbiamo fatto e' stato in taking particular instances and trying to work out general conclusions.

we don’t know the customs in a community about kissing female friends on the cheek, and we have to try to work it out by observing whether people kiss once, twice, three times, or not at all.

Questo e' il contrario del ragionamento deduttivo, using the rules of cold logic to work from general premises to particular conclusions. 

If the law of the country is that cars should drive on the right, then we can deduce that on any particular occasion it is best to drive on the right. But induction works the other way,  -->


---
## Cos'&egrave; la statistica?

<span style="display:block; height:30px;"></span>

* La raccolta, organizzazione, sintesi, e analisi dei dati <br/> &nbsp;&nbsp;&nbsp; &rarr; statistica *Descrittiva* 

* Processo mediante il quale vengono  tratte conclusioni su grandi gruppi sulla base di dati raccolti in gruppi pi&ugrave; ristretti  <br/> &nbsp;&nbsp;&nbsp; &rarr; statistica *Inferenziale* 

<!-- - Individuare in maniera efficiente i tratti importanti delle informazioni che sono state raccolte

- Partire dal particolare per capire come le informazioni si possono estendere alla totalità -->

---

## Perch&eacute; siamo qui?

<span style="display:block; height:40px;"></span>

> *Se mi rimanesse una sola ora di vita vorrei trascorrerla assistendo ad una lezione di statistica perch&eacute; mi sembrerebbe durare per sempre*

<div align="right">

(un&#601; Student&#601;)

</div>

---

<span style="display:block; height:200px;"></span>


## Due parole sul corso...

---
## Esercizi che faremo in classe

<div class="columns">
<div>

<span style="display:block; height:80px;"></span>

<center>
<img src="./img/sampling/abstract_ex1.png" img height="250px" border="4px"/>
</center>

<span style="display:block; height:50px;"></span>

<div style="font-size: 50%" align="right">

Sikich, L. *et al.*, *Intranasal Oxytocin in Children and Adolescents with Autism Spectrum Disorder*, NEJM, 2021

</div>

</div>
<div>

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Domande a risposta chiusa  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; basate o meno su un testo di 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; un articolo  scientifico (in 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inglese)


</div>

</div>
</div>

---
## Inglese ?!?

<span style="display:block; height:1px;"></span>


<img src="./img/introduction/panic.gif" img height="400px" align="left" border="4px"/>



---
## Inglese ?!?

<span style="display:block; height:1px;"></span>


<img src="./img/introduction/panic.gif" img height="400px" align="left" border="4px"/>

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - L'inglese &egrave; lingua franca della ricerca scientifica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Molta terminologia &egrave; difficilmente traducibile in
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; modo efficace in italiano
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Si tratta solitamente di termini tecnici che 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; andremo ad spiegare in classe

</div>

---
## Esercizi che faremo in classe

<div class="columns">
<div>

<span style="display:block; height:80px;"></span>

<center>
<img src="./img/sampling/abstract_ex1.png" img height="250px" border="4px"/>
</center>

<span style="display:block; height:50px;"></span>

<div style="font-size: 50%" align="right">

Sikich, L. *et al.*, *Intranasal Oxytocin in Children and Adolescents with Autism Spectrum Disorder*, NEJM, 2021

</div>

</div>
<div>

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Domande a risposta chiusa  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; basate o meno su un testo di 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; un articolo  scientifico (in 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inglese)


oppure

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Domande che richiedono 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (semplici) calcoli 


</div>

</div>
</div>

---
## Calcoli ?!?

<span style="display:block; height:1px;"></span>


<img src="./img/introduction/panic.gif" img height="400px" align="left" border="4px"/>


---
## Calcoli ?!?

<span style="display:block; height:1px;"></span>


<img src="./img/introduction/panic.gif" img height="400px" align="left" border="4px"/>

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Per seguire questo corso dovete saper fare le seguenti
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; operazioni (solitamente con una calcolatrice)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - somme, sottrazioni, moltiplicazioni, divisioni

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\frac{2 \times (8 - 3 + 5 )}{4}$

</div>

---
## Calcoli ?!?

<span style="display:block; height:1px;"></span>


<img src="./img/introduction/panic.gif" img height="400px" align="left" border="4px"/>

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Per seguire questo corso dovete saper fare le seguenti
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; operazioni (solitamente con una calcolatrice)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - somme, sottrazioni, moltiplicazioni, divisioni

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\frac{2 \times (8 - 3 + 5 )}{4} = \frac{2 \times 10}{4} = \frac{20}{4} = 5$

</div>

---
## Calcoli ?!?

<span style="display:block; height:1px;"></span>


<img src="./img/introduction/panic.gif" img height="400px" align="left" border="4px"/>

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Per seguire questo corso dovete saper fare le seguenti
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; operazioni (solitamente con una calcolatrice)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - somme, sottrazioni, moltiplicazioni, divisioni
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - potenze (di 2)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\frac{2 \times (8 - 3 + 5 )^2}{4}$

</div>

---
## Calcoli ?!?

<span style="display:block; height:1px;"></span>


<img src="./img/introduction/panic.gif" img height="400px" align="left" border="4px"/>

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Per seguire questo corso dovete saper fare le seguenti
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; operazioni (solitamente con una calcolatrice)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - somme, sottrazioni, moltiplicazioni, divisioni
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - potenze (di 2)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\frac{2 \times (8 - 3 + 5 )^2}{4} = \frac{2 \times 10^2}{4} =  \frac{2 \times 100}{4} = \frac{200}{4} = 50$

</div>

---
## Calcoli ?!?

<span style="display:block; height:1px;"></span>


<img src="./img/introduction/panic.gif" img height="400px" align="left" border="4px"/>

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Per seguire questo corso dovete saper fare le seguenti
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; operazioni (solitamente con una calcolatrice)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - somme, sottrazioni, moltiplicazioni, divisioni
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - potenze (di 2)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - radici (quadrate)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\sqrt{\frac{2 \times (8 - 3 + 5 )^2}{4}}$

</div>

---
## Calcoli ?!?

<span style="display:block; height:1px;"></span>


<img src="./img/introduction/panic.gif" img height="400px" align="left" border="4px"/>

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Per seguire questo corso dovete saper fare le seguenti
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; operazioni (solitamente con una calcolatrice)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - somme, sottrazioni, moltiplicazioni, divisioni
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - potenze (di 2)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - radici (quadrate)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\sqrt{\frac{2 \times (8 - 3 + 5 )^2}{4}} = \sqrt{\frac{2 \times 10^2}{4}} =  \sqrt{\frac{2 \times 100}{4}}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $= \sqrt{\frac{200}{4}} = \sqrt{50} \approx \sqrt{49} = 7$

</div>


---
## E se sbaglio?

<span style="display:block; height:30px;"></span>


- Fare errori non &egrave; solo normale ma anche utile
- Prendete ogni errore come un'opportunit&agrave; per imparare
- Meglio sbagliare (e imparare) in classe che in altri momenti 


<!-- - Fare errori (e poi correggerli) &egrave; come impariamo cose nuove -->

---
### Cosa abbiamo imparato in questa lezione?

<span style="display:block; height:0px;"></span>

<div style="font-size: 90%">

- Imparare le basi della statistica medica ci permette di interpretare i nostri dati, comunicare i nostri risultati efficacemente, capire il linguaggio della ricerca ed essere dei professionisti che lavorano seguendo le prove di efficacia
- La statistica medica &egrave; divisa in due rami strettamente interconnessi
- La ricerca scientifica segue  un processo circolare
- Il processo induttivo ci permette di passare dal particolare al generale
- Non dobbiamo aver paura a metterci in gioco

</div>
