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

### Lezione 4
# Tabelle di frequenza e misure di centralita' e dispersione
## &nbsp;

---
## Obiettivi di apprendimento

<span style="display:block; height:50px;"></span>

<div style="font-size: 90%">

- Decidere qual e' l'approccio migliore per riassumere i diversi tipi di dati
- Saper costruire e interpretare una tabella di frequenza
- Saper calcolare e interpretare diverse misure di centralita' e dispersione
- Saper interpretare tabelle in articoli scientifici

</div>

---
### I tipi di dato

<div class="columns">
<div>

:question: &nbsp;&nbsp;&nbsp; Di che tipo sono i dati 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in questa tabella?

<span style="display:block; height:270px;"></span>

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

---
## Perche' ci interessa?

<div class="columns">
<div>

<span style="display:block; height:120px;"></span>

<center>
<img src="./img/descriptive/Table1_caption.png" img height="120px" border="4px"/>
</center>

<span style="display:block; height:100px;"></span>

<div style="font-size: 50%">
	
Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

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

#### Tabella di frequenza

<div style="font-size: 90%">

* Descrive le **modalita'**
* frequenza assoluta (numero)
* frequenza relativa (percentuale)

</div>

<span style="display:block; height:80px;"></span>

<div style="font-size: 50%">
	
Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

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
## Esercizio #1 

<div class="columns">
<div>

<div style="font-size: 97%">

:question: &nbsp;&nbsp;&nbsp; Quale sesso e' predominante?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

</div>

<span style="display:block; height:270px;"></span>

<div style="font-size: 50%">
	
Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

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
const seconds_exercize_1= 60; // seconds_exercize_1
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
## Esercizio #1  -- Soluzione

<div class="columns">
<div>

<div style="font-size: 97%">

:question: &nbsp;&nbsp;&nbsp; Quale sesso e' predominante?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

</div>

<span style="display:block; height:270px;"></span>

<div style="font-size: 50%">
	
Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

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


<div style="font-size: 70%">
	
Espie. CA, *et al.*, Randomized Clinical Effectiveness Trial of Nurse-Administered Small-Group Cognitive Behavior Therapy for Persistent Insomnia in General Practice, Sleep, 2007, [doi:10.1186/s12885-023-10511-3](https://doi.org/10.1093/sleep/30.5.574)

</div>


---
## Esercizio #2

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Completa la tabella con le corrette frequenze assolute e percentuali
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  usando le informazioni contenute nell'abstact

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/Cbt_sex_abstract_numbers.png" img height="100px" border="4px"/>
</center>

<center>

| Sesso/N | CBT | Standard | Totale |
| ----: | ----- | ---- | ----|
| Maschi |  |  |  |
| Femmine |  |  |  |
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
const seconds_exercize_2= 300; // seconds_exercize_2
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


---
## Esercizio #2 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Completa la tabella con le corrette frequenze assolute e percentuali
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  usando le informazioni contenute nell'abstact


<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/Cbt_sex_abstract_numbers.png" img height="100px" border="4px"/>
</center>

<center>

| Sesso/N | CBT | Standard | Totale |
| ----: | -----: | ----: | ----: |
| Maschi |  |  |  |
| Femmine | 72 |  65 |  |
| Totale | 107 | 94  | 201 |

</center>

</div>

---
## Esercizio #2 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Completa la tabella con le corrette frequenze assolute e percentuali
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  usando le informazioni contenute nell'abstact

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/Cbt_sex_abstract_numbers.png" img height="100px" border="4px"/>
</center>

<center>

| Sesso/N | CBT | Standard | Totale |
| ----: | -----: | ----: | ----: |
| Maschi |  35 |  29 |  |
| Femmine | 72 |  65 |  |
| Totale | 107 | 94  | 201 |

</center>

</div>

---
## Esercizio #2 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Completa la tabella con le corrette frequenze assolute e percentuali
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  usando le informazioni contenute nell'abstact

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/Cbt_sex_abstract_numbers.png" img height="100px" border="4px"/>
</center>

<center>

| Sesso/N | CBT | Standard | Totale |
| ----: | -----: | ----: | ----: |
| Maschi |  35 |  29 | 64 |
| Femmine | 72 |  65 | 137 |
| Totale | 107 | 94  | 201 |

</center>

</div>

---
## Esercizio #2 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Completa la tabella con le corrette frequenze assolute e percentuali
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  usando le informazioni contenute nell'abstact



<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/Cbt_sex_abstract_numbers.png" img height="100px" border="4px"/>
</center>

<center>

| Sesso/N | CBT | Standard | Totale |
| ----: | -----: | ----: | ----: |
| Maschi |  35 (35/107) |  29 (29/94) | 64  (64/201)|
| Femmine | 72 (72/107) |  65 (65/94) | 137 (64/201) |
| Totale | 107 | 94  | 201 |

</center>

</div>

---
## Esercizio #2 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; Completa la tabella con le corrette frequenze assolute e percentuali
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  usando le informazioni contenute nell'abstact

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/Cbt_sex_abstract_numbers.png" img height="100px" border="4px"/>
</center>

<center>

| Sesso/N | CBT | Standard | Totale |
| ----: | -----: | ----: | ----: |
| Maschi |  35 (32.7%) |  29 (30.9%) | 64  (31.8%)|
| Femmine | 72 (67.3%) |  65 (69.1%) | 137 (68.2%1) |
| Totale | 107 | 94  | 201 |

</center>

<!-- Le frequenze relative consentono di confrontare la distribuzione di una variabile in campioni di diversa numerosità -->

</div>

---
## Esercizio #3 

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; I due sessi sono equalmente distribuiti nel campione?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; c) Servono piu' elementi per decidere

:question: &nbsp;&nbsp;&nbsp; I due sessi sono equalmente distribuiti nei due bracci dell'esperimento?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; c) Servono piu' elementi per decidere

<center>

| Sesso/N | CBT | Standard | Totale |
| ----: | -----: | ----: | ----: |
| Maschi |  35 (32.7%) |  29 (30.9%) | 64  (31.8%)|
| Femmine | 72 (67.3%) |  65 (69.1%) | 137 (68.2%1) |
| Totale | 107 | 94  | 201 |

</center>

<div>

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


<!-- Le frequenze relative consentono di confrontare la distribuzione di una variabile in campioni di diversa numerosità -->




---
## Esercizio #3 -- Soluzione

<div style="font-size: 80%">

:question: &nbsp;&nbsp;&nbsp; I due sessi sono equalmente distribuiti nel campione?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp; :white_check_mark: &nbsp;&nbsp;&nbsp;&nbsp; c) Servono piu' elementi per decidere

:question: &nbsp;&nbsp;&nbsp; I due sessi sono equalmente distribuiti nei due bracci dell'esperimento?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Vero &nbsp; :white_check_mark:  &nbsp;&nbsp;&nbsp;&nbsp; b) Falso &nbsp;&nbsp;&nbsp;&nbsp; c) Servono piu' elementi per decidere



<center>

| Sesso/N | CBT | Standard | Totale |
| ----: | -----: | ----: | ----: |
| Maschi |  35 (32.7%) |  29 (30.9%) | 64  (31.8%)|
| Femmine | 72 (67.3%) |  65 (69.1%) | 137 (68.2%1) |
| Totale | 107 | 94  | 201 |

</center>

<!-- Le frequenze relative consentono di confrontare la distribuzione di una variabile in campioni di diversa numerosità -->

</div>


---
## Discretizzazione

<span style="display:block; height:5px;"></span>

- Da una serie di valori continui a intervalli (o classi)
- La scelta del numero di classi e degli estremi è arbitraria
- Le classi devono essere mutualmente esclusive
- Riportate anche le classi nulle (frequenza zero)


<!-- Frequenze si usato per dati qualitativi, ma cosa facciamo se abbiamo dati quantitativi?

In questo caso si possono ancora usare, ma la frequenza non è riferita ad un singolo valore, ma ad intervalli (o classi) di valori. 

La scelta del numero di classi e degli estremi è arbitraria. Entrambi vengono determinati in base a criteri di convenienza.

Il numero di classi può oscillare e dipende dalla numerosità dei dati (in genere utilizzare da 5 a 20 classi).

Scegliere estremi che siano clinicamente/biologicamente significativi o naturali e, preferibilmente, di uguale ampiezza.

Le classi debbono essere mutuamente esclusive (fate attenzione agli estremi!!).

-->


---
## Discretizzazione

<div class="columns">
<div>

<span style="display:block; height:150px;"></span>

:pushpin: &nbsp;&nbsp;&nbsp; $\text{IMC (BMI)} = \frac{\text{peso}_\text{kg}}{\text{altezza}_m^2}$ 


</div>
<div>

| IMC (BMI)	| Classificazione
| ----: | -----: |
|< 18,5 |	Sottopeso
18,5 – 24, 9 |	Normopeso
25,0 – 29,9	| Sovrappeso
30,0 – 34,9	 | Obesità 1° grado
35,0 – 39,9	| Obesità 2° grado
| > 39,9	| Obesità 3° grado

</div>
</div>

---
## Discretizzazione

<div class="columns">
<div>

<span style="display:block; height:120px;"></span>

<center>
<img src="./img/descriptive/Table1_caption.png" img height="120px" border="4px"/>
</center>

<span style="display:block; height:100px;"></span>

<div style="font-size: 50%">
	
Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<span style="display:block; height:80px;"></span>

<center>
<img src="./img/descriptive/Table1_discrete.png" img height="250px" border="4px"/>
</center>

</div>
</div>

<!-- Per le variabili quantitative è necessario descrivere i dati raccolti anche numericamente… Poiché generalmente il problema è che i dati sono tanti, può risultare più semplice sintetizzarli e ridurli a pochi numeri, più facili da comprendere, utilizzare e comunicare.

Le tabelle di frequenza dopo una procedura di discretizzazione non sono pero' il modo piu' consono per rappresentare i dati quantitativi. E' meglio usare
-->


<!-- ---
## Discretizzazione

<span style="display:block; height:5px;"></span>

<center>
<img src="./img/descriptive/Discretiizzazione.png" img height="450px" border="4px"/>
</center>

<!-- Deprivation index misura quanto un'area e' deprivata, e si basa su un indice costrioto negli anni 60 basato su 4 variabili:
ow social class, lack of car ownership, overcrowding and male unemployment 

piu' e' alto piu' l'area e' deprived, piu' le mnorti, soprattutto in gionave eta' sono alte

Attenti che non e' legato alla persona ma al posto dove vive 
 --> -->

---
## Variabili numeriche

<div class="columns">
<div>

<span style="display:block; height:120px;"></span>

<center>
<img src="./img/descriptive/Table1_caption.png" img height="120px" border="4px"/>
</center>

<span style="display:block; height:100px;"></span>

<div style="font-size: 50%">
	
Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<span style="display:block; height:80px;"></span>

<center>
<img src="./img/descriptive/Table1_quantitative.png" img height="220px" border="4px"/>
</center>

</div>
</div>

<!-- Per le variabili quantitative è necessario descrivere i dati raccolti anche numericamente… Poiché generalmente il problema è che i dati sono tanti, può risultare più semplice sintetizzarli e ridurli a pochi numeri, più facili da comprendere, utilizzare e comunicare.

Le tabelle di frequenza dopo una procedura di discretizzazione non sono pero' il modo piu' consono per rappresentare i dati quantitativi. E' meglio usare
-->
---

## Misure di centralita' e dispersione

<span style="display:block; height:5px;"></span>

<center>
<img src="./img/descriptive/descriptive.png" img height="450px" border="4px"/>
</center>

<!--  
Tendenza centrale (o posizione) -> Individuano il valore intorno al quale i dati sono raggruppati

Dispersione o variabilita'  -> Forniscono un’indicazione della dispersione delle osservazioni intorno al valore centrale -->

---
## Misure di centralita': la moda

<span style="display:block; height:1px;"></span>

:dart: &nbsp;&nbsp;&nbsp; L'elemeno piu' frequente

<span style="display:block; height:10px;"></span>

:pushpin: &nbsp;&nbsp;&nbsp; $x= \{1, 1, 1, 3, 4, 4, 7, 8, 8, 9, 9\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{moda}(x)=1$

---
## Esercizio #4

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Qual e' la moda dei seguenti insiemi?


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $y= \{1, 1, 1, 3, 4, 4, 4, 7, 8, 8, 9, 9\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{moda}(y)= \text{ } ?$

<span style="display:block; height:1px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $z= \{1, 3, 4, 7, 8, 9, 11, 17, 21, 42\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{moda}(z)= \text{ } ?$

<style>
  #countdown_exercize_4{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercize_4.running {
    background-color: green;
  }
  #countdown_exercize_4.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercize_4"></button>

<script>
<!--
const countdown_exercize_4= document.getElementById("countdown_exercize_4");
const seconds_exercize_4= 120; // seconds_exercize_4
let timeLeft_exercize_4= seconds_exercize_4;
let timerInterval_exercize_4= null;

function formatTime_exercize_4(seconds_exercize_4) {
  const minutes = Math.floor(seconds_exercize_4/ 60);
  const remainingseconds_exercize_4= seconds_exercize_4% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercize_4).padStart(2, '0')}`;
}

function updateButton_exercize_4() {
  countdown_exercize_4.textContent = formatTime_exercize_4(timeLeft_exercize_4);
}

function startTimer_exercize_4() {
  if (timerInterval_exercize_4=== null) {
    countdown_exercize_4.classList.add('running');
    countdown_exercize_4.classList.remove('finished');
    timerInterval_exercize_4= setInterval(() => {
      if (timeLeft_exercize_4> 0) {
        timeLeft_exercize_4--;
        updateButton_exercize_4();
      } else {
        clearInterval(timerInterval_exercize_4);
        timerInterval_exercize_4= null;
        countdown_exercize_4.classList.remove('running');
        countdown_exercize_4.classList.add('finished');
        countdown_exercize_4.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercize_4();
  }
}

function pauseTimer_exercize_4() {
  clearInterval(timerInterval_exercize_4);
  timerInterval_exercize_4= null;
  countdown_exercize_4.classList.remove('running');
}

function resetTimer_exercize_4() {
  timeLeft_exercize_4= seconds_exercize_4;
  updateButton_exercize_4();
  countdown_exercize_4.classList.remove('finished');
  countdown_exercize_4.classList.remove('running');
  timerInterval_exercize_4= null;
}

countdown_exercize_4.addEventListener("click", () => {
  if (countdown_exercize_4.classList.contains('finished')) {
    resetTimer_exercize_4();
  } else {
    startTimer_exercize_4();
  }
});

updateButton_exercize_4();
-->
</script>



<!-- se ciascun valore si presenta una volta sola, le nostre osservazioni non hanno moda

Si usa soprattutto per i dati categorici -->



---
## Esercizio #4 -- Soluzione

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Qual e' la moda dei seguenti insiemi?


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $y= \{1, 1, 1, 3, 4, 4, 4, 7, 8, 8, 9, 9\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{moda}(y)=1 \land   4$

<span style="display:block; height:1px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $z= \{1, 3, 4, 7, 8, 9, 11, 17, 21, 42\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{moda}(z)= \text{Non esiste}$


---
## Misure di centralita': la mediana

:dart: &nbsp;&nbsp;&nbsp;Il valore "in mezzo"

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/descriptive/median.png" img height="300px" border="0px"/>
</center>

<div style="font-size: 90%" align="right">

:warning: I dati devono essere ordinati!

</div>

<!-- Divide l'insieme di dati in due parti uguali, con il numero osservazioni <= mediana uguale a quello >= -->

---
## Misure di centralita': la mediana

:dart: &nbsp;&nbsp;&nbsp;Il valore "in mezzo"

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:pushpin: &nbsp;&nbsp;&nbsp;  $n=7,  x= \{1, 3, 3, 6, 7, 8, 9\}$ 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{mediana}(x)=x_{(n+1)/2} = x_{(7+1)/2}=x_4=6$ 

:pushpin: &nbsp;&nbsp;&nbsp;  $n=8,  x= \{1, 2, 3, 4, 5, 6, 8, 9\}$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{mediana}(x)={\frac {x_{(n/2)}+x_{((n/2)+1)}}{2}} = {\frac {x_{(8/2)}+x_{((8/2)+1)}}{2}}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $={\frac {x_{4}+x_{5}}{2}} = {\frac {4+5}{2}} = 4.5$ 

</div>

<div style="font-size: 90%" align="right">

:warning: I dati devono essere ordinati!

</div>

<!-- Quando il numero di osservazioni e' pari, ci sono due valori mediani, e in questo caso si prende la loro media aritmetica -->

---
## Esercizio #5

:question: &nbsp;&nbsp;&nbsp; Quali sono le mediane di questi insiemi?

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $n=7,  y= \{1, 3, 3, 6, 7, 8, 9\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{mediana}(y)= \text{ ?}$ 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $n=7,  z= \{1, 3, 3, 6, 7, 8, 109\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{mediana}(z)=\text{ ?}$ 

</div>

<span style="display:block; height:100px;"></span>


<style>
  #countdown_exercize_5{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercize_5.running {
    background-color: green;
  }
  #countdown_exercize_5.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercize_5"></button>

<script>
<!--
const countdown_exercize_5= document.getElementById("countdown_exercize_5");
const seconds_exercize_5= 120; // seconds_exercize_5
let timeLeft_exercize_5= seconds_exercize_5;
let timerInterval_exercize_5= null;

function formatTime_exercize_5(seconds_exercize_5) {
  const minutes = Math.floor(seconds_exercize_5/ 60);
  const remainingseconds_exercize_5= seconds_exercize_5% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercize_5).padStart(2, '0')}`;
}

function updateButton_exercize_5() {
  countdown_exercize_5.textContent = formatTime_exercize_5(timeLeft_exercize_5);
}

function startTimer_exercize_5() {
  if (timerInterval_exercize_5=== null) {
    countdown_exercize_5.classList.add('running');
    countdown_exercize_5.classList.remove('finished');
    timerInterval_exercize_5= setInterval(() => {
      if (timeLeft_exercize_5> 0) {
        timeLeft_exercize_5--;
        updateButton_exercize_5();
      } else {
        clearInterval(timerInterval_exercize_5);
        timerInterval_exercize_5= null;
        countdown_exercize_5.classList.remove('running');
        countdown_exercize_5.classList.add('finished');
        countdown_exercize_5.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercize_5();
  }
}

function pauseTimer_exercize_5() {
  clearInterval(timerInterval_exercize_5);
  timerInterval_exercize_5= null;
  countdown_exercize_5.classList.remove('running');
}

function resetTimer_exercize_5() {
  timeLeft_exercize_5= seconds_exercize_5;
  updateButton_exercize_5();
  countdown_exercize_5.classList.remove('finished');
  countdown_exercize_5.classList.remove('running');
  timerInterval_exercize_5= null;
}

countdown_exercize_5.addEventListener("click", () => {
  if (countdown_exercize_5.classList.contains('finished')) {
    resetTimer_exercize_5();
  } else {
    startTimer_exercize_5();
  }
});

updateButton_exercize_5();
-->
</script>



<!-- La mediana non e' influenzata da valori anomali o estremi (outliers) -->

---
## Esercizio #5 -- Soluzione

:question: &nbsp;&nbsp;&nbsp; Quali sono le mediane di questi insiemi?


<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $n=7,  y= \{1, 3, 3, 6, 7, 8, 9\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{mediana}(y)=y_{(n+1)/2} = y_{(7+1)/2}=y_4=6$ 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $n=7,  z= \{1, 3, 3, 6, 7, 8, 109\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{mediana}(z)=\text{ ?}$ 

</div>

<div style="font-size: 90%" align="right">

<span style="display:block; height:40px;"></span>

:warning: I dati devono essere ordinati!

</div>


<!-- La mediana non e' influenzata da valori anomali o estremi (outliers) -->

---
## Esercizio #5 -- Soluzione

:question: &nbsp;&nbsp;&nbsp; Quali sono le mediane di questi insiemi?


<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $n=7,  y= \{1, 3, 3, 6, 7, 8, 9\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{mediana}(y)=y_{(n+1)/2} = y_{(7+1)/2}=y_4=6$ 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $n=7,  z= \{1, 3, 3, 6, 7, 8, 109\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{mediana}(z)=z_{(n+1)/2} = z_{(7+1)/2}=z_4=6$ 

</div>

<div style="font-size: 90%" align="right">

<span style="display:block; height:40px;"></span>

:warning: I dati devono essere ordinati!

</div>


<!-- La mediana non e' influenzata da valori anomali o estremi (outliers) -->


---
## Misure di centralita': la mediana

:question: &nbsp;&nbsp;&nbsp; Cosa ci mostra questo esempio?

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $n=7,  y= \{1, 3, 3, 6, 7, 8, 9\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{mediana}(y)=y_{(n+1)/2} = y_{(7+1)/2}=y_4=6$ 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $n=7,  z= \{1, 3, 3, 6, 7, 8, 109\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{mediana}(z)=z_{(n+1)/2} = z_{(7+1)/2}=z_4=6$ 

</div>

<div style="font-size: 90%" align="right">

<span style="display:block; height:1px;"></span>


</div>


<!-- La mediana non e' influenzata da valori anomali o estremi (outliers) -->



---
## Quartili

<span style="display:block; height:20px;"></span>

<center>
<img src="./img/descriptive/quartiles.png" img height="300px" border="0px"/>
</center>

<!-- Mentre la mediana divide i dati in due meta' esatte, molto usati sono anche i quartili, che dividono i dati in 4 parti uguali -->

<span style="display:block; height:20px;"></span>

<div style="font-size: 90%" align="right">


:warning: I dati devono essere ordinati!

</div>

---
## Esercizio #6

:question: &nbsp;&nbsp;&nbsp; Quali sono il primo e terzo quartile di questi insiemi?

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $y= \{1, 3, 3, 6, 7, 8, 9\}$  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q1}(y)= \text{ ?}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q3}(y)= \text{ ?}$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$z= \{1, 2, 3, 4, 5, 6, 8, 9\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q1}(z)= \text{ ?}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q3}(z)= \text{ ?}$

</div>

<style>
  #countdown_exercize_6{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercize_6.running {
    background-color: green;
  }
  #countdown_exercize_6.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercize_6"></button>

<script>
<!--
const countdown_exercize_6= document.getElementById("countdown_exercize_6");
const seconds_exercize_6= 180; // seconds_exercize_6
let timeLeft_exercize_6= seconds_exercize_6;
let timerInterval_exercize_6= null;

function formatTime_exercize_6(seconds_exercize_6) {
  const minutes = Math.floor(seconds_exercize_6/ 60);
  const remainingseconds_exercize_6= seconds_exercize_6% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercize_6).padStart(2, '0')}`;
}

function updateButton_exercize_6() {
  countdown_exercize_6.textContent = formatTime_exercize_6(timeLeft_exercize_6);
}

function startTimer_exercize_6() {
  if (timerInterval_exercize_6=== null) {
    countdown_exercize_6.classList.add('running');
    countdown_exercize_6.classList.remove('finished');
    timerInterval_exercize_6= setInterval(() => {
      if (timeLeft_exercize_6> 0) {
        timeLeft_exercize_6--;
        updateButton_exercize_6();
      } else {
        clearInterval(timerInterval_exercize_6);
        timerInterval_exercize_6= null;
        countdown_exercize_6.classList.remove('running');
        countdown_exercize_6.classList.add('finished');
        countdown_exercize_6.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercize_6();
  }
}

function pauseTimer_exercize_6() {
  clearInterval(timerInterval_exercize_6);
  timerInterval_exercize_6= null;
  countdown_exercize_6.classList.remove('running');
}

function resetTimer_exercize_6() {
  timeLeft_exercize_6= seconds_exercize_6;
  updateButton_exercize_6();
  countdown_exercize_6.classList.remove('finished');
  countdown_exercize_6.classList.remove('running');
  timerInterval_exercize_6= null;
}

countdown_exercize_6.addEventListener("click", () => {
  if (countdown_exercize_6.classList.contains('finished')) {
    resetTimer_exercize_6();
  } else {
    startTimer_exercize_6();
  }
});

updateButton_exercize_6();
-->
</script>

---
## Esercizio #6 -- Soluzione

:question: &nbsp;&nbsp;&nbsp; Quali sono il primo e terzo quartile di questi insiemi?

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $y= \{1, 3, 3, [6], 7, 8, 9\}$  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q1}(y) = \text{mediana}(y)[1:4] = \text{ ?}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q3}(y) = \text{mediana}(y)[4:7] = \text{ ?}$ 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$z= \{1, 2, 3, 4, 5, 6, 8, 9\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q1}(z)= \text{ ?}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q3}(z)= \text{ ?}$

<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$z= \{1, 2, 3, [4, 5], 6, 8, 9\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q1}(z)= \text{mediana}(z)[1:4] = \text{ ?}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q3}(z)= \text{mediana}(z)[5:8] = \text{ ?}$  -->

</div>

---
## Esercizio #6 -- Soluzione

:question: &nbsp;&nbsp;&nbsp; Quali sono il primo e terzo quartile di questi insiemi?

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $y= \{1, 3, 3, [6], 7, 8, 9\}$  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q1}(y) = \text{mediana}(y)[1:4] = \frac{3+3}{2} = 3$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q3}(y) = \text{mediana}(y)[4:7] = \frac{7+8}{2} = 7.5$ 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$z= \{1, 2, 3, 4, 5, 6, 8, 9\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q1}(z)= \text{ ?}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q3}(z)= \text{ ?}$

<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$z= \{1, 2, 3, [4, 5], 6, 8, 9\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q1}(z)= \text{mediana}(z)[1:4] = \frac{2+3}{2} = 2.5$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q3}(z)= \text{mediana}(z)[5:8] = \frac{6+8}{2} = 7$  -->

</div>

---
## Esercizio #6 -- Soluzione

:question: &nbsp;&nbsp;&nbsp; Quali sono il primo e terzo quartile di questi insiemi?

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $y= \{1, 3, 3, [6], 7, 8, 9\}$  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q1}(y) = \text{mediana}(y)[1:4] = \frac{3+3}{2} = 3$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q3}(y) = \text{mediana}(y)[4:7] = \frac{7+8}{2} = 7.5$  

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$z= \{1, 2, 3, [4, 5], 6, 8, 9\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q1}(z)= \text{mediana}(z)[1:4] = \text{ ?}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q3}(z)= \text{mediana}(z)[5:8] = \text{ ?}$

</div>

---
## Esercizio #6 -- Soluzione

:question: &nbsp;&nbsp;&nbsp; Quali sono il primo e terzo quartile di questi insiemi?

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $y= \{1, 3, 3, [6], 7, 8, 9\}$  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q1}(y) = \text{mediana}(y)[1:4] = \frac{3+3}{2} = 3$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q3}(y) = \text{mediana}(y)[4:7] = \frac{7+8}{2} = 7.5$ 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$z= \{1, 2, 3, [4, 5], 6, 8, 9\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q1}(z)= \text{mediana}(z)[1:4] = \frac{2+3}{2} = 2.5$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{Q3}(z)= \text{mediana}(z)[5:8] = \frac{6+8}{2} = 7$

</div>

---
## Misure di centralita': la media

<span style="display:block; height:1px;"></span>

:dart: &nbsp;&nbsp;&nbsp; Media aritmetica

$$
{\bar {x}}= {\frac {1}{n}}\left(\sum _{i=1}^{n}{x_{i}}\right)=
{\frac {x_{1}+x_{2}+\dots +x_{n}}{n}}
$$

<span style="display:block; height:10px;"></span>

:pushpin: &nbsp;&nbsp;&nbsp;  $x= \{4, 36, 45, 50, 75\}$ 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${\bar {x}} = {\frac{1}{n}}\left(\sum _{i=1}^{n}{x_{i}}\right) = \frac{4 + 36 + 45 + 50 + 75}{5} = 42$

<!-- Somma dei singoli valori diviso il numero di osservazioni  -->

---
## Esercizio #7

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Quali sono le medie di questi insiemi?


<span style="display:block; height:10px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $y= \{6, 34, 40, 55, 75\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${\bar {y}} = \text{ ?}$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $z= \{6, 34, 40, 55, 175\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${\bar {z}} = \text{ ?}$


<style>
  #countdown_exercize_7{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercize_7.running {
    background-color: green;
  }
  #countdown_exercize_7.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercize_7"></button>

<script>
<!--
const countdown_exercize_7= document.getElementById("countdown_exercize_7");
const seconds_exercize_7= 180; // seconds_exercize_7
let timeLeft_exercize_7= seconds_exercize_7;
let timerInterval_exercize_7= null;

function formatTime_exercize_7(seconds_exercize_7) {
  const minutes = Math.floor(seconds_exercize_7/ 60);
  const remainingseconds_exercize_7= seconds_exercize_7% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercize_7).padStart(2, '0')}`;
}

function updateButton_exercize_7() {
  countdown_exercize_7.textContent = formatTime_exercize_7(timeLeft_exercize_7);
}

function startTimer_exercize_7() {
  if (timerInterval_exercize_7=== null) {
    countdown_exercize_7.classList.add('running');
    countdown_exercize_7.classList.remove('finished');
    timerInterval_exercize_7= setInterval(() => {
      if (timeLeft_exercize_7> 0) {
        timeLeft_exercize_7--;
        updateButton_exercize_7();
      } else {
        clearInterval(timerInterval_exercize_7);
        timerInterval_exercize_7= null;
        countdown_exercize_7.classList.remove('running');
        countdown_exercize_7.classList.add('finished');
        countdown_exercize_7.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercize_7();
  }
}

function pauseTimer_exercize_7() {
  clearInterval(timerInterval_exercize_7);
  timerInterval_exercize_7= null;
  countdown_exercize_7.classList.remove('running');
}

function resetTimer_exercize_7() {
  timeLeft_exercize_7= seconds_exercize_7;
  updateButton_exercize_7();
  countdown_exercize_7.classList.remove('finished');
  countdown_exercize_7.classList.remove('running');
  timerInterval_exercize_7= null;
}

countdown_exercize_7.addEventListener("click", () => {
  if (countdown_exercize_7.classList.contains('finished')) {
    resetTimer_exercize_7();
  } else {
    startTimer_exercize_7();
  }
});

updateButton_exercize_7();
-->
</script>


<!-- Mentre la media e' la misura piu' usata per descrivere la tendenza centrale per la sua unicita' (c'e' solo una media) e semplicita', non e' particolarmente robusta rispetto agli outliers. Il valore atipico SOVRADIMENSIONA la media.

Vedremo piu' avanti, con le misure di dispersione, come accopagnare altri valori alla media per evidenziare queste situazioni  -->

---
## Esercizio #7 -- Soluzione

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Quali sono le medie di questi insiemi?


<span style="display:block; height:10px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $y= \{6, 34, 40, 55, 75\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${\bar {y}} = {\frac {1}{n}}\left(\sum _{i=1}^{n}{y_{i}}\right) = \frac{6 + 34 + 40 + 55 + 75}{5} = 42$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $z= \{6, 34, 40, 55, 175\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${\bar {z}} = {\frac {1}{n}}\left(\sum _{i=1}^{n}{z_{i}}\right) = \frac{4 + 36 + 45 + 50 + 175}{5} = 62$

<!-- Mentre la media e' la misura piu' usata per descrivere la tendenza centrale per la sua unicita' (c'e' solo una media) e semplicita', non e' particolarmente robusta rispetto agli outliers. Il valore atipico SOVRADIMENSIONA la media.

Vedremo piu' avanti, con le misure di dispersione, come accopagnare altri valori alla media per evidenziare queste situazioni  -->

---
## Misure di centralita': la media

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Cosa ci mostra questo esempio?


<span style="display:block; height:10px;"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $y= \{6, 34, 40, 55, 75\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${\bar {y}} = {\frac {1}{n}}\left(\sum _{i=1}^{n}{y_{i}}\right) = \frac{6 + 34 + 40 + 55 + 75}{5} = 42$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $z= \{6, 34, 40, 55, 175\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${\bar {z}} = {\frac {1}{n}}\left(\sum _{i=1}^{n}{z_{i}}\right) = \frac{4 + 36 + 45 + 50 + 175}{5} = 62$

<!-- Mentre la media e' la misura piu' usata per descrivere la tendenza centrale per la sua unicita' (c'e' solo una media) e semplicita', non e' particolarmente robusta rispetto agli outliers. Il valore atipico SOVRADIMENSIONA la media.

Vedremo piu' avanti, con le misure di dispersione, come accopagnare altri valori alla media per evidenziare queste situazioni  -->

--- 
## I valori anomali


<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/outliers_mean.png" img height="450px" border="0px"/>
</center>

<div style="font-size: 50%">

Reilly, J. *et al.*. Procedure‐Specific Surgical Site Infection Rates and Postdischarge Surveillance in Scotland,  Infection Control and Hospital Epidemiology, 2006, doi:10.1086/509839  

</div>

<!--  

---
## La forma della distribuzione

<span style="display:block; height:70px;"></span>

<center>
<img src="./img/descriptive/434px-Relationship_between_mean_and_median_under_different_skewness.png" img height="250px" border="0px"/>
</center>

<!-- Asimmetrica a destra/sinistra, dipende dalla presenza di valori anomali, vedremo meglio questo nella prossima lezione dedicata alla visualizzazione dei dati 

---
## Moda *vs* &nbsp;mediana *vs* &nbsp;media

<span style="display:block; height:100px;"></span>

<center>
<img src="./img/descriptive/mode_vs_median_vs_mean.png" img height="200px" border="0px"/>
</center> -->

<!-- La moda e' la parte piu' alta della curva, la mediana divide l'area in 2 parti uguali e la media e' il "balance point", quello in cui starebbe in equilibrio se fosse fatta di un materiale solido 

 Scelta della misura di tendenza centrale
- media se la distribuzione è simmetrica
- mediana se la distribuzione NON è simmetrica
(forse a causa di valori estremi)
- moda per indicare il valore più comune nell’ambito
della distribuzione 
---
## Esercizio #7 

:question: &nbsp;&nbsp;&nbsp; Con quale probabilità si potrà trovare nella popolazione 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; soggetti con valori superiori alla mediana?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) 25%
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) 50%
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) 75%
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Servono piu' informazioni per poter rispondere

---
## Esercizio #7 -- Soluzione

:question: &nbsp;&nbsp;&nbsp; Con quale probabilità si potrà trovare nella popolazione 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; soggetti con valori superiori alla mediana?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) 25%
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) 50% &nbsp;&nbsp;&nbsp; :white_check_mark: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) 75%
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Servono piu' informazioni per poter rispondere -->


---
## Misure di dispersione

<center>
<img src="./img/descriptive/drowning_statistician.png" img height="550px" border="0px"/>
</center>

---
## Misure di dispersione

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/descriptive/sd.png" img height="450px" border="4px"/>
</center>

---
## Misure di dispersione: range

<span style="display:block; height:30px;"></span>

:dart: &nbsp;&nbsp;&nbsp; ${\text{range}(x)}= \text{max}(x)-\text{min}(x)$

<span style="display:block; height:30px;"></span>

:pushpin: &nbsp;&nbsp;&nbsp;  $x= \{6, 7, 15, 36, 39, 40, 41, 42, 43, 47, 49\}$ 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${\text{range}(x)}= \text{max}(x)-\text{min}(x)=49-6=43$

<!-- INTERVALLO di VARIAZIONE. Il range pero' si basa solo sui due valori estremi, senza indicare come si distribuiscono i dati entro l’intervallo 

piu; semplice, meno informativo

 Non fornisce però informazioni sulla distribuzione delle osservazioni: non è ad esempio possibile capire se i valori siano dispersi o raggruppati in un’estremità…
-->

---
## Esercizio #8

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/descriptive/outliers_range.svg" img height="250px" border="0px"/>
</center>

<span style="display:block; height:10px;"></span>

:question: &nbsp;&nbsp;&nbsp; $\text{range}(x)= \text{ ?}$

<style>
  #countdown_exercize_8{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercize_8.running {
    background-color: green;
  }
  #countdown_exercize_8.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercize_8"></button>

<script>
<!--
const countdown_exercize_8= document.getElementById("countdown_exercize_8");
const seconds_exercize_8= 120; // seconds_exercize_8
let timeLeft_exercize_8= seconds_exercize_8;
let timerInterval_exercize_8= null;

function formatTime_exercize_8(seconds_exercize_8) {
  const minutes = Math.floor(seconds_exercize_8/ 60);
  const remainingseconds_exercize_8= seconds_exercize_8% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercize_8).padStart(2, '0')}`;
}

function updateButton_exercize_8() {
  countdown_exercize_8.textContent = formatTime_exercize_8(timeLeft_exercize_8);
}

function startTimer_exercize_8() {
  if (timerInterval_exercize_8=== null) {
    countdown_exercize_8.classList.add('running');
    countdown_exercize_8.classList.remove('finished');
    timerInterval_exercize_8= setInterval(() => {
      if (timeLeft_exercize_8> 0) {
        timeLeft_exercize_8--;
        updateButton_exercize_8();
      } else {
        clearInterval(timerInterval_exercize_8);
        timerInterval_exercize_8= null;
        countdown_exercize_8.classList.remove('running');
        countdown_exercize_8.classList.add('finished');
        countdown_exercize_8.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercize_8();
  }
}

function pauseTimer_exercize_8() {
  clearInterval(timerInterval_exercize_8);
  timerInterval_exercize_8= null;
  countdown_exercize_8.classList.remove('running');
}

function resetTimer_exercize_8() {
  timeLeft_exercize_8= seconds_exercize_8;
  updateButton_exercize_8();
  countdown_exercize_8.classList.remove('finished');
  countdown_exercize_8.classList.remove('running');
  timerInterval_exercize_8= null;
}

countdown_exercize_8.addEventListener("click", () => {
  if (countdown_exercize_8.classList.contains('finished')) {
    resetTimer_exercize_8();
  } else {
    startTimer_exercize_8();
  }
});

updateButton_exercize_8();
-->
</script>


<!-- Il range ha tuttavia un'utilita' limitata: tiene conto solo di due valori, e non e' robusta quando ci sono valori anomali

14 osservazioni -->

---
## Esercizio #8 -- Soluzione

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/descriptive/outliers_range.svg" img height="250px" border="0px"/>
</center>

<span style="display:block; height:10px;"></span>

:question: &nbsp;&nbsp;&nbsp; $\text{range}(x)= \text{max}(x)-\text{min}(x)=9,754-2,830=6,924$

<!-- Il range ha tuttavia un'utilita' limitata: tiene conto solo di due valori, e non e' robusta quando ci sono valori anomali -->

---
## Misure di dispersione: range interquantile

<span style="display:block; height:1px;"></span>

:dart: &nbsp;&nbsp;&nbsp; ${\text{IQR}(x)}= \text{Q3}(x)-\text{Q1}(x)$

<span style="display:block; height:20px;"></span>

<center>
<img src="./img/descriptive/iqr.png" img height="300px" border="0px"/>
</center>

---
## Esercizio #9

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/descriptive/outliers_range.svg" img height="250px" border="0px"/>
</center>


:pushpin: &nbsp;&nbsp;&nbsp; $\text{IQR}(x) \text{ }\text{ } = \text{ ?}$

<style>
  #countdown_exercize_9{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercize_9.running {
    background-color: green;
  }
  #countdown_exercize_9.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercize_9"></button>

<script>
<!--
const countdown_exercize_9= document.getElementById("countdown_exercize_9");
const seconds_exercize_9= 300; // seconds_exercize_9
let timeLeft_exercize_9= seconds_exercize_9;
let timerInterval_exercize_9= null;

function formatTime_exercize_9(seconds_exercize_9) {
  const minutes = Math.floor(seconds_exercize_9/ 60);
  const remainingseconds_exercize_9= seconds_exercize_9% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercize_9).padStart(2, '0')}`;
}

function updateButton_exercize_9() {
  countdown_exercize_9.textContent = formatTime_exercize_9(timeLeft_exercize_9);
}

function startTimer_exercize_9() {
  if (timerInterval_exercize_9=== null) {
    countdown_exercize_9.classList.add('running');
    countdown_exercize_9.classList.remove('finished');
    timerInterval_exercize_9= setInterval(() => {
      if (timeLeft_exercize_9> 0) {
        timeLeft_exercize_9--;
        updateButton_exercize_9();
      } else {
        clearInterval(timerInterval_exercize_9);
        timerInterval_exercize_9= null;
        countdown_exercize_9.classList.remove('running');
        countdown_exercize_9.classList.add('finished');
        countdown_exercize_9.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercize_9();
  }
}

function pauseTimer_exercize_9() {
  clearInterval(timerInterval_exercize_9);
  timerInterval_exercize_9= null;
  countdown_exercize_9.classList.remove('running');
}

function resetTimer_exercize_9() {
  timeLeft_exercize_9= seconds_exercize_9;
  updateButton_exercize_9();
  countdown_exercize_9.classList.remove('finished');
  countdown_exercize_9.classList.remove('running');
  timerInterval_exercize_9= null;
}

countdown_exercize_9.addEventListener("click", () => {
  if (countdown_exercize_9.classList.contains('finished')) {
    resetTimer_exercize_9();
  } else {
    startTimer_exercize_9();
  }
});

updateButton_exercize_9();
-->
</script>


<!-- Non sono considerati i valori estremi, ma sappiamo come si distribuisce la meta dei dati rispetto al valore centrale -->

---
## Esercizio #9 -- Soluzione

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/descriptive/outliers_range.svg" img height="250px" border="0px"/>
</center>


:pushpin: &nbsp;&nbsp;&nbsp; $\text{IQR}(x) \text{ }\text{ } = \text{Q3}(x)-\text{Q1}(x) \text{ }\text{ } = \text{ ?}$

---
## Esercizio #9 -- Soluzione

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/descriptive/outliers_iqr_sorted.png" img height="250px" border="0px"/>
</center>


:pushpin: &nbsp;&nbsp;&nbsp; $\text{IQR}(x) \text{ }\text{ } = \text{Q3}(x)-\text{Q1}(x) \text{ }\text{ } = \text{ ?}$

<!-- Non sono considerati i valori estremi, ma sappiamo come si distribuisce la meta dei dati rispetto al valore centrale -->

---
## Esercizio #9 -- Soluzione

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/descriptive/outliers_iqr_sorted_1.png" img height="250px" border="0px"/>
</center>


:pushpin: &nbsp;&nbsp;&nbsp; $\text{IQR}(x) \text{ }\text{ } = \text{Q3}(x)-\text{Q1}(x) \text{ }\text{ } = \text{ ?}$

<!-- Non sono considerati i valori estremi, ma sappiamo come si distribuisce la meta dei dati rispetto al valore centrale -->

---
## Esercizio #9 -- Soluzione

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/descriptive/outliers_iqr_sorted_2.png" img height="250px" border="0px"/>
</center>


:pushpin: &nbsp;&nbsp;&nbsp; $\text{IQR}(x) \text{ }\text{ } = \text{Q3}(x)-\text{Q1}(x) \text{ }\text{ } = \text{ ?}$

<!-- Non sono considerati i valori estremi, ma sappiamo come si distribuisce la meta dei dati rispetto al valore centrale -->

---
## Esercizio #9 -- Soluzione

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/descriptive/outliers_iqr_sorted_2.png" img height="250px" border="0px"/>
</center>


:pushpin: &nbsp;&nbsp;&nbsp; $\text{IQR}(x) \text{ }\text{ } = \text{Q3}(x)-\text{Q1}(x) \text{ }\text{ }\text{ }\text{ } =5,253-3,423=1,830$

<!-- Non sono considerati i valori estremi, ma sappiamo come si distribuisce la meta dei dati rispetto al valore centrale -->

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

:dart: &nbsp;&nbsp;&nbsp; $s^2 = \frac{1}{n-1}\sum _{i=1}^{n}(x_{i}-\bar {x} )^{2}$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dove &nbsp;&nbsp;&nbsp; ${\bar {x}}= {\frac {1}{n}}\left(\sum _{i=1}^{n}{x_{i}}\right)$ 

<span style="display:block; height:1px;"></span>

:pushpin: &nbsp;&nbsp;&nbsp;  $x= \{1, 2, 3\}$ &nbsp;&nbsp;&nbsp; $\bar{x}=\frac{1+2+3}{3}=2$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $s = \frac{1}{3-1}\times [(1-2)^2+ (2-2)^2+(3-2)^2] =$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $= \frac{1}{2}\times [1^2+ 0^2+1^2 ]=  \frac{1}{2}\times 2 = 1$

<!-- Andiamo a fare la distanza (differenza) tra ciascun valore e la media, la eleviamo al quatrato, la sommiamo e andiamo a dividerla per la dimensione del campione - 1 -->

---
## Misure di dispersione: varianza

<span style="display:block; height:1px;"></span>

:dart: &nbsp;&nbsp;&nbsp; $s^2 = \frac{1}{n-1}\sum _{i=1}^{n}(x_{i}-\bar {x} )^{2}$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; perche' &nbsp; $\frac{1}{n-1}$ &nbsp; ?  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\rightarrow$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\sum _{i=1}^{n}(x_{i}-\bar {x} ) = 0$

<span style="display:block; height:1px;"></span>

:pushpin: &nbsp;&nbsp;&nbsp;  $x= \{1, 2, 3\}$ &nbsp;&nbsp;&nbsp; $\bar{x}=\frac{1+2+3}{3}=2$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\sum _{i=1}^{n}(x_{i}-\bar {x} ) = (1-2) + (2-2) + (3-2) =$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $= -1 + 0 + 1 = 0$

<!-- Perche' si divide per (n-1) e non n, come ci aspetteremmo? 

Dipende dal fatto che La somma degli scarti dalla media aritmetica è nulla
Qundi se conosco i primi (n-1) valori, conosco anche l'ultimo

n-1 rappresenta quindi i gradi di liberta', il cui numero e' uguale al nuerio di dati (n) meno il numero di costanti gia' calcolate dai dati (in questo caso 1, la media) -->

---
## Misure di dispersione: deviazione standard

<span style="display:block; height:1px;"></span>

:dart: &nbsp;&nbsp;&nbsp; $s = \sqrt{s^2} = \sqrt {{\frac {1}{n-1}}\sum _{i=1}^{n}(x_{i}-\bar {x} )^{2}}$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dove &nbsp;&nbsp;&nbsp; ${\bar {x}}= {\frac {1}{n}}\left(\sum _{i=1}^{n}{x_{i}}\right)$ 

<span style="display:block; height:1px;"></span>

:pushpin: &nbsp;&nbsp;&nbsp;  $x= \{1, 2, 3\}$ &nbsp;&nbsp;&nbsp; $\bar{x}=\frac{1+2+3}{3}=2$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $s = \sqrt {\frac{1}{3-1}\times [(1-2)^2+ (2-2)^2+(3-2)^2] }=$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $= \sqrt {\frac{1}{2}\times [1^2+ 0^2+1^2 }]= \sqrt {\frac{1}{2}\times 2}= \sqrt {1} = 1$

<!-- che nella varianza l'unità di misura è diversa da quella della variabile su cui è calcolata (abbiamo fatto il quadrato delle fifferenze, ricordate?), si utilizza la sua radice quadrata detta SCARTO QUADRATICO MEDIO o deviazione standard. -->


---
## Esercizio #10

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Qual e' la deviazione standard di questo insieme?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $y= \{60, 34, 26\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $SD(y) = \text{? }$ 

<style>
  #countdown_exercize_10{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercize_10.running {
    background-color: green;
  }
  #countdown_exercize_10.finished {
    background-color: red;
  }
</style>

<span style="display:block; height:100px;"></span>

<button id="countdown_exercize_10"></button>

<script>
<!--
const countdown_exercize_10= document.getElementById("countdown_exercize_10");
const seconds_exercize_10= 300; // seconds_exercize_10
let timeLeft_exercize_10= seconds_exercize_10;
let timerInterval_exercize_10= null;

function formatTime_exercize_10(seconds_exercize_10) {
  const minutes = Math.floor(seconds_exercize_10/ 60);
  const remainingseconds_exercize_10= seconds_exercize_10% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercize_10).padStart(2, '0')}`;
}

function updateButton_exercize_10() {
  countdown_exercize_10.textContent = formatTime_exercize_10(timeLeft_exercize_10);
}

function startTimer_exercize_10() {
  if (timerInterval_exercize_10=== null) {
    countdown_exercize_10.classList.add('running');
    countdown_exercize_10.classList.remove('finished');
    timerInterval_exercize_10= setInterval(() => {
      if (timeLeft_exercize_10> 0) {
        timeLeft_exercize_10--;
        updateButton_exercize_10();
      } else {
        clearInterval(timerInterval_exercize_10);
        timerInterval_exercize_10= null;
        countdown_exercize_10.classList.remove('running');
        countdown_exercize_10.classList.add('finished');
        countdown_exercize_10.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercize_10();
  }
}

function pauseTimer_exercize_10() {
  clearInterval(timerInterval_exercize_10);
  timerInterval_exercize_10= null;
  countdown_exercize_10.classList.remove('running');
}

function resetTimer_exercize_10() {
  timeLeft_exercize_10= seconds_exercize_10;
  updateButton_exercize_10();
  countdown_exercize_10.classList.remove('finished');
  countdown_exercize_10.classList.remove('running');
  timerInterval_exercize_10= null;
}

countdown_exercize_10.addEventListener("click", () => {
  if (countdown_exercize_10.classList.contains('finished')) {
    resetTimer_exercize_10();
  } else {
    startTimer_exercize_10();
  }
});

updateButton_exercize_10();
-->
</script>


---
## Esercizio #10 -- Soluzione

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Qual e' la deviazione standard di questo insieme?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $y= \{60, 34, 26\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $SD(y) = \sqrt {{\frac {1}{n-1}}\sum _{i=1}^{n}(y_{i}-\bar {y} )^{2}}= \text{? }$ 

---
## Esercizio #10 -- Soluzione

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Qual e' la deviazione standard di questo insieme?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $y= \{60, 34, 26\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ${\bar {y}} = {\frac {1}{n}}\left(\sum _{i=1}^{n}{y_{i}}\right) = \frac{60 + 34 + 26}{3} = 40$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $SD(y) = \sqrt {{\frac {1}{n-1}}\sum _{i=1}^{n}(y_{i}-\bar {y} )^{2}}= \text{? }$ 


---
## Esercizio #10 -- Soluzione

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Qual e' la deviazione standard di questo insieme?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $y= \{60, 34, 26\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${\bar {y}} = 40$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $SD(y) = \sqrt {{\frac {1}{n-1}}\sum _{i=1}^{n}(y_{i}-\bar {y} )^{2}}=$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $= \sqrt {\frac{1}{3-1}\times [(60-40)^2+ (34-40)^2+(26-40)^2] }=$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $= \sqrt {\frac{1}{2}\times [20^2+ (-6)^2+ (-14)^2 }] =$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $= \sqrt {\frac{1}{2}\times [400+ 36 + 196]} = \sqrt {\frac{632}{2}}= \sqrt {316} = 17.8$

---
## Esercizio #11

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; La deviazione standard e' robusta rispetto ai valori anomali?

---
## Esercizio #11

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; La deviazione standard e' robusta rispetto ai valori anomali?

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $z= \{60, 34, 125\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $SD(z) = \text{? }$ 

<div>

<span style="display:block; height:100px;"></span>

<style>
  #countdown_exercize_11{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercize_11.running {
    background-color: green;
  }
  #countdown_exercize_11.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercize_11"></button>

<script>
<!--
const countdown_exercize_11= document.getElementById("countdown_exercize_11");
const seconds_exercize_11= 300; // seconds_exercize_11
let timeLeft_exercize_11= seconds_exercize_11;
let timerInterval_exercize_11= null;

function formatTime_exercize_11(seconds_exercize_11) {
  const minutes = Math.floor(seconds_exercize_11/ 60);
  const remainingseconds_exercize_11= seconds_exercize_11% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercize_11).padStart(2, '0')}`;
}

function updateButton_exercize_11() {
  countdown_exercize_11.textContent = formatTime_exercize_11(timeLeft_exercize_11);
}

function startTimer_exercize_11() {
  if (timerInterval_exercize_11=== null) {
    countdown_exercize_11.classList.add('running');
    countdown_exercize_11.classList.remove('finished');
    timerInterval_exercize_11= setInterval(() => {
      if (timeLeft_exercize_11> 0) {
        timeLeft_exercize_11--;
        updateButton_exercize_11();
      } else {
        clearInterval(timerInterval_exercize_11);
        timerInterval_exercize_11= null;
        countdown_exercize_11.classList.remove('running');
        countdown_exercize_11.classList.add('finished');
        countdown_exercize_11.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercize_11();
  }
}

function pauseTimer_exercize_11() {
  clearInterval(timerInterval_exercize_11);
  timerInterval_exercize_11= null;
  countdown_exercize_11.classList.remove('running');
}

function resetTimer_exercize_11() {
  timeLeft_exercize_11= seconds_exercize_11;
  updateButton_exercize_11();
  countdown_exercize_11.classList.remove('finished');
  countdown_exercize_11.classList.remove('running');
  timerInterval_exercize_11= null;
}

countdown_exercize_11.addEventListener("click", () => {
  if (countdown_exercize_11.classList.contains('finished')) {
    resetTimer_exercize_11();
  } else {
    startTimer_exercize_11();
  }
});

updateButton_exercize_11();
-->
</script>


---
## Esercizio #11 -- Soluzione

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; La deviazione standard e' robusta rispetto ai valori anomali?

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $z= \{60, 34, 125\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $SD(z) = \sqrt {{\frac {1}{n-1}}\sum _{i=1}^{n}(z_{i}-\bar {z} ^{2}})= \text{? }$ 

</div>

---
## Esercizio #11 -- Soluzione

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; La deviazione standard e' robusta rispetto ai valori anomali?

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $z= \{60, 34, 125\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ${\bar {z}} = {\frac {1}{n}}\left(\sum _{i=1}^{n}{z_{i}}\right) = \frac{60 + 34 + 125}{3} = 73$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $SD(z) = \sqrt {{\frac {1}{n-1}}\sum _{i=1}^{n}(z_{i}-\bar {z} )^{2}}= \text{? }$ 

</div>

---
## Esercizio #11 -- Soluzione

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; La deviazione standard e' robusta rispetto ai valori anomali?

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $z= \{60, 34, 125\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${\bar {z}} = 73$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $SD(z) = \sqrt {{\frac {1}{n-1}}\sum _{i=1}^{n}(z_{i}-\bar {z} )^{2}}=$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $= \sqrt {\frac{1}{3-1}\times [(60-73)^2+ (34-73)^2+(125-73)^2] }=$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $= \sqrt {\frac{1}{2}\times [(-13)^2+ (-39)^2+ 52^2 }] =$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $= \sqrt {\frac{1}{2}\times [169 + 1521 + 2704]} = \sqrt {\frac{4394}{2}}= \sqrt {2197} = 46.9$

</div>

---
## Centralita', dispersione e tipi di dati

<span style="display:block; height:50px;"></span>

<div style="font-size: 90%">

|Tipo di dato | Misura di centralita' | Misura di dispersione |
| ---- | ----- | ---- |
| Nominali | Moda | - |
| Ordinali | Moda, Mediana | Range, IQR |
| Numerici | Moda, Mediana, Media | Range, IQR, deviazione standard |

</div>

<!-- Scelta della misura di tendenza centrale
- media se la distribuzione è simmetrica
- mediana se la distribuzione NON è simmetrica
(forse a causa di valori estremi)
- moda per indicare il valore più comune nell’ambito
della distribuzione -->

---
## Esercizio #12

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Dei ricercatori hanno raccolto eta', sesso e livelli di colesterolo 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Come possono presentare i loro dati?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Eta': media (SD), sesso: N (%), colesterolo: media (SD)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Eta': mediana (IQR), sesso: N (%), colesterolo: median (IQR)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Eta': media (SD), sesso: media (SD), colesterolo: media (SD) 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Sia a) che b)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e) Sia a) che c)


<style>
  #countdown_exercize_12{
    padding: 10px 20px;
    font-size: 20px;
    color: white;
    background-color: gray;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right;
  }
  #countdown_exercize_12.running {
    background-color: green;
  }
  #countdown_exercize_12.finished {
    background-color: red;
  }
</style>

<button id="countdown_exercize_12"></button>

<script>
<!--
const countdown_exercize_12= document.getElementById("countdown_exercize_12");
const seconds_exercize_12= 60; // seconds_exercize_12
let timeLeft_exercize_12= seconds_exercize_12;
let timerInterval_exercize_12= null;

function formatTime_exercize_12(seconds_exercize_12) {
  const minutes = Math.floor(seconds_exercize_12/ 60);
  const remainingseconds_exercize_12= seconds_exercize_12% 60;
  return `${String(minutes).padStart(2, '0')}:${String(remainingseconds_exercize_12).padStart(2, '0')}`;
}

function updateButton_exercize_12() {
  countdown_exercize_12.textContent = formatTime_exercize_12(timeLeft_exercize_12);
}

function startTimer_exercize_12() {
  if (timerInterval_exercize_12=== null) {
    countdown_exercize_12.classList.add('running');
    countdown_exercize_12.classList.remove('finished');
    timerInterval_exercize_12= setInterval(() => {
      if (timeLeft_exercize_12> 0) {
        timeLeft_exercize_12--;
        updateButton_exercize_12();
      } else {
        clearInterval(timerInterval_exercize_12);
        timerInterval_exercize_12= null;
        countdown_exercize_12.classList.remove('running');
        countdown_exercize_12.classList.add('finished');
        countdown_exercize_12.textContent = "Time's up!";
      }
    }, 1000);
  } else {
    pauseTimer_exercize_12();
  }
}

function pauseTimer_exercize_12() {
  clearInterval(timerInterval_exercize_12);
  timerInterval_exercize_12= null;
  countdown_exercize_12.classList.remove('running');
}

function resetTimer_exercize_12() {
  timeLeft_exercize_12= seconds_exercize_12;
  updateButton_exercize_12();
  countdown_exercize_12.classList.remove('finished');
  countdown_exercize_12.classList.remove('running');
  timerInterval_exercize_12= null;
}

countdown_exercize_12.addEventListener("click", () => {
  if (countdown_exercize_12.classList.contains('finished')) {
    resetTimer_exercize_12();
  } else {
    startTimer_exercize_12();
  }
});

updateButton_exercize_12();
-->
</script>


---
## Esercizio #12 -- Soluzione

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Dei ricercatori hanno raccolto eta', sesso e livelli di colesterolo 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Come possono presentare i loro dati?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Eta': media (SD), sesso: N (%), colesterolo: media (SD)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Eta': mediana (IQR), sesso: N (%), colesterolo: median (IQR)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Eta': media (SD), sesso: media (SD), colesterolo: media (SD) 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Sia a) che b) &nbsp;&nbsp; :white_check_mark: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e) Sia a) che c)

---
## Parametri *vs*  &nbsp;statistiche

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/descriptive/parametro_vs_statistica.png" img height="450px" border="0px"/>
</center>

<!-- Una cosa che non vi ho detto, ma che ci tornera' utile in seguito e' che la media e la SD di una popolazione si chiamano PARAMETRI e si indicano con le lettere greche media e SD misurati su un campione si chiamano invece STATISTICHE e sono indicati con lettere latine -->


---
## In questa lezione abbiamo...

<span style="display:block; height:50px;"></span>

<div style="font-size: 85%">

- imparato come riassumere ogni tipo di dato nel modo migliore
- imparato a costruire e interpretare una tabella di frequenza
- imparato a calcolare e interpretare diverse misure di centralita' e dispersione
- esplorato alcuni limiti delle misure di centralita' e dispersione introdotte
- descritto le differenze tra "parametri" e "statistiche"

</div>

<!-- ---
### Exercise #4

<div class="columns">
<div>

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Which curve has the larger 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mean?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) blue
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) green
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) red

</div>
<div>

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/descriptive/exercise_mean.png" img height="300px" border="4px"/>
</center>

</div>

---
### Exercise #4 -- Solution

<div class="columns">
<div>

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Which curve has the larger 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mean?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) blue
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) green
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) red :white_check_mark: 

</div>
<div>

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/descriptive/exercise_mean.png" img height="300px" border="4px"/>
</center>

</div>

---
### Exercise #5

<div class="columns">
<div>

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Which curve has the larger 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; standard deviation?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) blue
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) green
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) red

</div>
<div>

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/descriptive/exercise_sd.png" img height="300px" border="4px"/>
</center>

</div>

---
### Exercise #5 -- Solution

<div class="columns">
<div>

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Which curve has the larger 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; standard deviation?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) blue
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) green
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) red  :white_check_mark: 

</div>
<div>

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/descriptive/exercise_sd.png" img height="300px" border="4px"/>
</center>

</div> -->


