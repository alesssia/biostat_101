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

### Lezione 5
# La statistica descrittiva
## (Parte II: Le variabili numeriche)
## &nbsp;

---
## Obiettivi di apprendimento

<span style="display:block; height:50px;"></span>

- Saper calcolare e interpretare diverse misure di centralita', dispersione e correlazione
- Saper visualizzare dati numerici
- Saper interpretare tabelle e figure in articoli scientifici

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
## Esercizio #1

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
## Esercizio #1 -- Soluzione

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
## Esercizio #2

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
## Esercizio #2 -- Soluzione

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
## Esercizio #2 -- Soluzione

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
## Esercizio #3

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
## Esercizio #3 -- Soluzione

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
## Esercizio #3 -- Soluzione

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
## Esercizio #3 -- Soluzione

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
## Esercizio #3 -- Soluzione

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
## Esercizio #4

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
## Esercizio #4 -- Soluzione

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
## Esercizio #5

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
## Esercizio #5 -- Soluzione

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
## Esercizio #6

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
## Esercizio #6 -- Soluzione

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/descriptive/outliers_range.svg" img height="250px" border="0px"/>
</center>


:pushpin: &nbsp;&nbsp;&nbsp; $\text{IQR}(x) \text{ }\text{ } = \text{Q3}(x)-\text{Q1}(x) \text{ }\text{ } = \text{ ?}$

---
## Esercizio #6 -- Soluzione

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/descriptive/outliers_iqr_sorted.png" img height="250px" border="0px"/>
</center>


:pushpin: &nbsp;&nbsp;&nbsp; $\text{IQR}(x) \text{ }\text{ } = \text{Q3}(x)-\text{Q1}(x) \text{ }\text{ } = \text{ ?}$

<!-- Non sono considerati i valori estremi, ma sappiamo come si distribuisce la meta dei dati rispetto al valore centrale -->

---
## Esercizio #6 -- Soluzione

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/descriptive/outliers_iqr_sorted_1.png" img height="250px" border="0px"/>
</center>


:pushpin: &nbsp;&nbsp;&nbsp; $\text{IQR}(x) \text{ }\text{ } = \text{Q3}(x)-\text{Q1}(x) \text{ }\text{ } = \text{ ?}$

<!-- Non sono considerati i valori estremi, ma sappiamo come si distribuisce la meta dei dati rispetto al valore centrale -->

---
## Esercizio #6 -- Soluzione

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/descriptive/outliers_iqr_sorted_2.png" img height="250px" border="0px"/>
</center>


:pushpin: &nbsp;&nbsp;&nbsp; $\text{IQR}(x) \text{ }\text{ } = \text{Q3}(x)-\text{Q1}(x) \text{ }\text{ } = \text{ ?}$

<!-- Non sono considerati i valori estremi, ma sappiamo come si distribuisce la meta dei dati rispetto al valore centrale -->

---
## Esercizio #6 -- Soluzione

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
## Esercizio #7

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
## Esercizio #7 -- Soluzione

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Qual e' la deviazione standard di questo insieme?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $y= \{60, 34, 26\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $SD(y) = \sqrt {{\frac {1}{n-1}}\sum _{i=1}^{n}(y_{i}-\bar {y} )^{2}}= \text{? }$ 

---
## Esercizio #7 -- Soluzione

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Qual e' la deviazione standard di questo insieme?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $y= \{60, 34, 26\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ${\bar {y}} = {\frac {1}{n}}\left(\sum _{i=1}^{n}{y_{i}}\right) = \frac{60 + 34 + 26}{3} = 40$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $SD(y) = \sqrt {{\frac {1}{n-1}}\sum _{i=1}^{n}(y_{i}-\bar {y} )^{2}}= \text{? }$ 

---
## Esercizio #7 -- Soluzione

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; Qual e' la deviazione standard di questo insieme?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $y= \{60, 34, 26\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${\bar {y}} = 40$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $SD(y) = \sqrt {{\frac {1}{n-1}}\sum _{i=1}^{n}(y_{i}-\bar {y} )^{2}}=$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $= \sqrt {\frac{1}{3-1}\times [(60-40)^2+ (34-40)^2+(26-40)^2] }=$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $= \sqrt {\frac{1}{2}\times [20^2+ (-6)^2+ (-14)^2 }] =$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $= \sqrt {\frac{1}{2}\times [400+ 36 + 196]} = \sqrt {\frac{632}{2}}= \sqrt {316} = 17.8$

---
## Esercizio #8

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; La deviazione standard e' robusta rispetto ai valori anomali?

---
## Esercizio #8

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
## Esercizio #8 -- Soluzione

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; La deviazione standard e' robusta rispetto ai valori anomali?

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $z= \{60, 34, 125\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $SD(z) = \sqrt {{\frac {1}{n-1}}\sum _{i=1}^{n}(z_{i}-\bar {z} ^{2}})= \text{? }$ 

</div>

---
## Esercizio #8 -- Soluzione

<span style="display:block; height:1px;"></span>

:question: &nbsp;&nbsp;&nbsp; La deviazione standard e' robusta rispetto ai valori anomali?

<div style="font-size: 90%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $z= \{60, 34, 125\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ${\bar {z}} = {\frac {1}{n}}\left(\sum _{i=1}^{n}{z_{i}}\right) = \frac{60 + 34 + 125}{3} = 73$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $SD(z) = \sqrt {{\frac {1}{n-1}}\sum _{i=1}^{n}(z_{i}-\bar {z} )^{2}}= \text{? }$ 

</div>

---
## Esercizio #8 -- Soluzione

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
della distribuzione 

Lo vedremo piu' nel dettaglio piu' avanti
-->

---
## Esercizio #9 

<div class="columns">
<div>

<center>
<img src="./img/descriptive/Drug_compliace_exercize.png" img height="550px" border="4px"/>
</center>

</div>
<div>

<div style="font-size: 90%">

:question: Quale farmaco sembra essere 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tollerato meglio dai pazienti?

<span style="display:block; height:280px;"></span>

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
const seconds_exercise_12= 300; // seconds_exercise_12
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


</div>
</div>



<!-- I dati qui a fianco si riferiscono ad un trial clinico randomizzato, doppio cieco, di confronto tra due farmaci anti-ipertensivi, somministrati a pazienti con ipertensione accertata.

P3m -> media dei 3 misuramenti di pressione

Discutere prima di dare la risposta -->

---
## Esercizio #9 -- Soluzione

<div class="columns">
<div>

<center>
<img src="./img/descriptive/Drug_compliace_exercize.png" img height="550px" border="4px"/>
</center>

</div>
<div>

<div style="font-size: 90%">

:question: Quale farmaco sembra essere 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tollerato meglio dai pazienti?

<span style="display:block; height:1px;"></span>

<center>

| Drug/Comp | Si' | No | Totale |
| ----: | -----: | ----: | ----: |
| A |  13 | 4  | 17 |
| B | 2 |  12 | 14 |
| Totale | 15 | 16  | 31 |

</center>

</div>
</div>

---
## Esercizio #10 

<div class="columns">
<div>

<center>
<img src="./img/descriptive/Drug_compliace_exercize.png" img height="550px" border="4px"/>
</center>

</div>
<div>

<div style="font-size: 90%">

:question: Quale farmaco sembra essere 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; piu' efficace?

<span style="display:block; height:280px;"></span>

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
const seconds_exercise_13= 300; // seconds_exercise_13
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


</div>
</div>

---
## Esercizio #10 -- Soluzione

<div class="columns">
<div>

<center>
<img src="./img/descriptive/Drug_compliace_exercize.png" img height="550px" border="4px"/>
</center>

</div>
<div>

<div style="font-size: 90%">

:question: Quale farmaco sembra essere 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; piu' efficace?

<span style="display:block; height:1px;"></span>

**Farmaco A**:  media = 124.1, SD = 11.6
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mediana = 120, IQR = 15
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; moda = 120

**Farmaco B**:  media = 133.6, SD = 8.4
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mediana = 130, IQR = 10
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; moda = 130

</div>
</div>


---
<span style="display:block; height:150px;"></span>

# La visualizzazione dei dati numerici
 

---
# Istogramma

<div class="columns">
<div>

<span style="display:block; height:350px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/Age_histogram_bin1.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- A histogram takes as input a numeric variable only. The variable is cut into several bins, and the number of observation per bin is represented by the height of the bar. It is possible to represent the distribution of several variable on the same axis using this technique.

Common Mistakes

Play with the bin size, it can give different insight.
Avoid filling with color palettes. -->

---
# Istogramma

<div class="columns">
<div>

<span style="display:block; height:350px;"></span>


<div style="font-size: 50%">
 
Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/Age_histogram_bin5.png" img height="500px" border="4px"/>
</center>

</div>
</div>

---
## Istogramma

<div class="columns">
<div>

<span style="display:block; height:350px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/Age_histogram_bin5_response.png" img height="500px" border="4px"/>
</center>

</div>
</div>

---
## Miami plot/Mirror histogram

<div class="columns">
<div>

<span style="display:block; height:350px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/Age_histogram_bin5_response_mirror.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- No legenda, uso i colori, ho fissato gli assi -->

---
# Density plot

<div class="columns">
<div>

<span style="display:block; height:350px;"></span>

<div style="font-size: 50%">
 
Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/Age_histogram_bin5_response_density.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- A density plot shows the distribution of a numeric variable. It takes only numeric variables as input and is very close from an histogram. It can be use in the same exact condition.

Common Mistakes

Play with the bandwith of your density function.
Avoid filling with color palettes. 

Questa e' leggermente bimodale-->

---
## La forma delle distribuzioni

<span style="display:block; height:70px;"></span>

<center>
<img src="./img/visualization/434px-Relationship_between_mean_and_median_under_different_skewness.png" img height="350px" border="0px"/>
</center>

---
## Boxplot

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/visualization/boxplot_explanation.png" img height="450px" border="0px"/>
</center>

<div style="font-size: 50%" align="right">

https://r-graph-gallery.com/boxplot

</div>

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

<!-- A boxplot gives a nice summary of one or several numeric variables. The line that divides the box into 2 parts represents the median of the data. The end of the box shows the upper and lower quartiles. The extreme lines show the highest and lowest value excluding outliers.
Common Mistakes

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
<img src="./img/visualization/Boxplot_age_ORR_dots.png" img height="500px" border="4px"/>
</center>

</div>
</div>

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
<img src="./img/visualization/Boxplot_age_ORR_violin.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- Leggermente bimodale -->


---
# Esercizio #11

<div style="font-size: 90%">

> Quanti partner sessuali le persone in Gran Bretagna riferiscono di aver avuto nella loro vita?

<!-- The purpose of this question is not simply to be nosey about people’s private lives. When AIDS first became a serious concern in the 1980s, public health officials realized that there was no reliable evidence about sexual behaviour in Britain, particularly in terms of the frequency with which people changed partners, how many had multiple simultaneous partners, and what sexual practices people engaged in. This knowledge was essential to predict the spread of sexually transmitted diseases through society and to plan health services

resulting in the National Sexual Attitudes and Lifestyle Survey (Natsal) which has been carried out in the UK every ten years since 1990.
 -->

---
# Esercizio #11

<div style="font-size: 90%">

> Quanti partner sessuali le persone in Gran Bretagna riferiscono di aver avuto nella loro vita?

</div>

<div class="columns">
<div>

<div style="font-size: 90%">

<br/>

:question: &nbsp;&nbsp;&nbsp; Cosa ci dicono 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; queste statistiche? 

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

Think &nbsp;&nbsp;&nbsp; <button id="countdown_think"></button>

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
| IQR | 4-18 (14) | 3-10 (7) |

</center>

</div>
</div>
	
<!-- The third survey, known as Natsal-3, was carried out around 2010. Table 2.2 shows the summary statistics concerning the number of (opposite-sex) sexual partners reported by people aged 35–44 in Natsal-3. 

 It is a good exercise to use these summaries alone to try to reconstruct what the pattern of data might look like.
-->


---
# Esercizio #11

<div style="font-size: 90%">

> Quanti partner sessuali le persone in Gran Bretagna riferiscono di aver avuto nella loro vita?

</div>

<div class="columns">
<div>

<div style="font-size: 90%">

<br/>

:question: &nbsp;&nbsp;&nbsp; Cosa ci dicono 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; queste statistiche? 

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

Pair &nbsp;&nbsp;&nbsp; <button id="countdown_pair"></button>

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
| IQR | 4-18 (14) | 3-10 (7) |

</center>

</div>
</div>

---
# Esercizio #11

<div style="font-size: 90%">

> Quanti partner sessuali le persone in Gran Bretagna riferiscono di aver avuto nella loro vita?

</div>

<div class="columns">
<div>

<div style="font-size: 90%">

<br/>

:question: &nbsp;&nbsp;&nbsp; Cosa ci dicono 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; queste statistiche? 

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

Share &nbsp;&nbsp;&nbsp; <button id="countdown_share"></button>

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
| IQR | 4-18 (14) | 3-10 (7) |

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
## Esercizio #11 (bis)

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Il grafico della distribuzione conferma quello che abbiamo detto? 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Aggiunge informazione? 

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/British_sex_partner_histogram.png" img height="350px" border="4px"/>
</center>

<div style="font-size: 50%" align="right">
<br/> Spiegelhalter, D., *The Art of Statistics: Learning From Data*, Pelican, 2019
</div>


<!-- ---
<span style="display:block; height:150px;"></span>

# The wisdom of crowds -->

---
### La relazione tra due variabili numeriche

<div style="font-size: 78%">

> Cosa è successo ai bambini sottoposti a interventi al cardiochirugici in alcuni ospedali britannici tra il 1984 e il 1995?

</div>

<div style="font-size: 50%">

<center>

Hospital | Operations | Survivors | Deaths | 30-day Survival (%) | Dying (%) |
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

 D.J. Spiegelhalter *et al.*, *Commissioned Analysis of Surgical Performance Using Routine Data: <br/> Lessons from the Bristol Inquiry, 2002, Journal of the Royal Statistical Society Series A: Statistics in Society*

 </div>


<!-- Public concern did not die down, and an official inquiry was ordered: this brought in a team of statisticians who were given the grim task of comparing the survival rates in Bristol with elsewhere in the UK between 1984 and 1995. 

Sto mostrando sia morti che sopravvissuti per evirare positive/negative framing, che abbiamo visto nella lezione introduttiva -->

---
## Visualizziamo di dati

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

---
## Visualizziamo di dati

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

<!-- Qui si vede gia' la differenza con Bristol 

There is a considerable interest in the so-called ‘volume effect’ in surgery – the claim that busier hospitals get better survival rates, possibly since they achieve greater efficiency and have more experience.


-->

---
### La relazione tra due variabili numeriche

<span style="display:block; height:1px;"></span>

<div class="columns">
<div>

Pearson's correlation coefficient

* $\rho = 0.82$
* $\rho_\text{no Bristol} = 0.93$

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


launched an investigation after complaints from Joshua’s and other bereaved parents, and in 1998 two surgeons and the ex-chief executive were found guilty of serious medical misconduct. 

A Pearson correlation runs between −1 and 1, and expresses how close to a straight line the dots or data-points fall. A correlation of 1 occurs if all the points lie on a straight line going upwards, while a correlation of −1 occurs if all the points lie on a straight line going downwards. A correlation near 0 can come from a random scatter of points, or any other pattern in which there is no systematic trend upwards or downwards

Attenzione alla causalita':
0- the high correlation showed that bigger hospitals were associated with lower mortality. But we could not conclude that bigger hospitals caused the lower mortality.
- piccoli ospedali hanno magari casi piu' semplici, che spiegano Leeds & Co 

But, as we shall explore further in Chapter 4 on causation, this presupposes the direction in which the influence might lie. Even in Figure 2.5(a) we cannot conclude that the higher survival rates were in any sense caused by the increased number of cases – in fact it could even be the other way round: better hospitals simply attracted more patients.
-->

---
## Correlazione & valori anomali

<span style="display:block; height:1px;"></span>


<div class="columns">
<div>

Pearson's correlation coefficient

- $\rho = 0.74$


</div>
<div>

<center>
<img src="./img/descriptive/Basketball.png" img height="500px" border="4px"/>
</center>

</div>
</div>

---
## Correlazione & valori anomali

<span style="display:block; height:1px;"></span>


<div class="columns">
<div>
Pearson's correlation coefficient

- $\rho = 0.74$
- $\rho_\text{no outliers} = 0.07$

</div>
<div>

<center>
<img src="./img/descriptive/Basketball_noout.png" img height="500px" border="4px"/>
</center>

</div>
</div>

---
## Perche' visualizzare i dati?

<span style="display:block; height:2px;"></span>

<center>
<img src="./img/visualization/DataSaurusDozen.gif" img height="400px" border="4px"/>
</center>

<div style="font-size: 50%" align="right">

<br/> <b>Datasaurus Dozen</b>,  Matejka, J &; Fitzmaurice, G. *Same Stats, Different Graphs: Generating Datasets with Varied Appearance and Identical Statistics through Simulated Annealing*, Proceedings of the 2017 CHI Conference on Human Factors in Computing Systems, doi:10.1145/3025453.3025912

</div>


---
### Cosa abbiamo imparato in questa lezione?

<span style="display:block; height:0px;"></span>

<div style="font-size: 90%">

- Le variabili numeriche possono essere rappresentate con misure di centralita', dispersione e correlazione (statistiche)
- Alcune statistiche sono "falsate" se le distribuzioni empiriche (la forma dei dati) sono asimmetriche e/o includono valori anomali
- Le statistiche possono nascondere dettagli importanti dei dati
- Le variabili numeriche possono essere rappresentate graficamente in diversi modi, ma alcune rappresentazioni possono nascondere dettagli importanti delle distribuzioni sottostanti
- visualizzare i dati e' importante per "capirli"

</div>

