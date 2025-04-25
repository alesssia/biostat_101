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

<!-- ### Lezione 6 -->
# La distribuzione Normale
## &nbsp;

---
## Obiettivi di apprendimento

<span style="display:block; height:10px;"></span>

<div style="font-size: 90%">

- Conoscere le caratteristiche della distribuzione Normale e Normale Standardizzata
- Calcolare e intepretare lo $z$-score
- Calcolare la proporzione di individui in una popolazione con una determinata caratteristica
- Calcolare la probabilit&agrave; di avere degli individui in una popolazione con una determinata caratteristica

</div>

---
## Le fasi della ricerca

<span style="display:block; height:2px;"></span>

<center>
<img src="./img/normal/PPDAC.png" img height="450px" border="0px"/>
</center>

<div style="font-size: 50%" align="right">

Spiegelhalter, D., *The Art of Statistics: Learning From Data*, Pelican, 2019

</div>




<!-- We see that the measures used to summarize data sets in Chapter 2 can be applied as descriptions of a population too – the difference is that terms such as mean and standard deviation are known as statistics when describing a set of data, and parameters when describing a population. -->

---
## La distribuzione della popolazione

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

Qual &egrave; la distribuzione del peso alla nascita per i gemelli inglesi?

</div>
<div>
<span style="display:block; height:30px;"></span>

</div>

<!-- We have already discussed the concept of a data distribution – the pattern the data makes, sometimes known as the empirical or sample distribution. Next we must tackle the concept of a population distribution – the pattern in the whole group of interest.

Supponiamo di voler sapere qual e' il peso alla nascita dei gemelli, mono e di zigoti inglesi. 
 -->

---
## La distribuzione della popolazione

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

Qual &egrave; la distribuzione del peso alla nascita per i gemelli inglesi?

<span style="display:block; height:180px;"></span>

<div style="font-size: 80%" align="right">

$N=1 \text{M}$
$mediana = 2408\text{ g}$
$\mu = 2404\text{ g}; \text{ } \sigma = 580\text{ g}$

</div>

</div>
<div>


<center>
<img src="./img/normal/Twin_BW_hist.png" img height="550px" border="0px"/>
</center>

</div>

<!-- The population distribution is the pattern made by the birth weights of all these babies, which we can obtain from TwinsUK data on the weights for 1M twins born in the UK from 1917 to 1998 to non-Hispanic white women – although this is not the entire set of twin births, it is such a large sample that we can take it as the population. (sono dati simulati a partire da dati reali) -->

---
## La distribuzione della popolazione

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

Qual &egrave; la distribuzione del peso alla nascita per i gemelli inglesi?

<span style="display:block; height:180px;"></span>

<div style="font-size: 80%" align="right">

$N=1 \text{M}$
$mediana = 2408\text{ g}$
$\mu = 2404\text{ g}; \text{ } \sigma = 580\text{ g}$

</div>

</div>
<div>


<center>
<img src="./img/normal/Twin_BW_hist_normale.png" img height="550px" border="0px"/>
</center>

</div>

<!-- The shape of this distribution is important. Measurements such as weight, income, height, and so on can, at least in principle, be as fine-grained as desired, and so can be considered ‘continuous’ quantities whose population distributions are smooth. The classic example is the ‘bell-shaped curve’, or normal distribution, first explored in detail by Carl Friedrich Gauss.

Theory shows that the normal distribution can be expected to occur for phenomena that are driven by large numbers of small influences, for example a complex physical trait that is not influenced by just a few genes. 

Figure shows a normal curve with the same mean and standard deviation as the recorded weights. The smooth normal curve and the histogram are gratifyingly close, and other complex traits such as height and cognitive skills also have approximately normal population distributions. 
-->

---
## La distribuzione Normale

<div class="columns">
<div>

<span style="display:block; height:40px;"></span>

- $\mathcal{N} = (\mu, \sigma^2)$
- $\text{moda} \equiv \text{media} \equiv \text{mediana}$
- Simmetrica

</div>
<div>



<center>
<img src="./img/normal/Twin_BW_normale.png" img height="550px" border="0px"/>
</center>

</div>

<!-- The normal distribution is characterized by its mean, or expectation, and its standard deviation.

It is an impressive achievement to be able to summarize over a million births by just these two quantities. 
 -->

---
## La distribuzione Normale

<div class="columns">
<div>

<span style="display:block; height:40px;"></span>

- Area sottesa alla curva $= 1$
- proporzione $\equiv$ probabilit&agrave;

<span style="display:block; height:120px;"></span>

<div style="font-size: 80%" align="right">

$\text{neonati di peso molto basso se} < 1500 \text{ g}$
$\text{ neonati di peso molto basso} = 6\%$
$\mathcal{P}(\text{neonati di peso molto basso}) = 0.06$


</div>

</div>
<div>

<center>
<img src="./img/normal/Twin_BW_normale_area.png" img height="550px" border="0px"/>
</center>

</div>

<!-- il fatto che l'area e' 1 dipende dal fatto che la normale sia una distribuzione di probabilita'

For medical rather than statistical reasons, babies below 1,500 g ‘very low birth weight’. Figure 3.2(d) shows that we would expect 6% of babies in this group to be very low birth weight – in fact the actual number is ~74K (0.7%), in close agreement with the prediction from the normal curve. 

 -->

---
### Esercizio #1

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

<div style="font-size: 85%">

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; la curva con la media
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pi&ugrave; grande?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Verde
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Blu
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Gialla
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Non lo posso sapere
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e) Nessuna delle precedenti

</div>

</div>
<div>
<span style="display:block; height:80px;"></span>

<center>
<img src="./img/normal/1200px-Normal_Distribution_PDF.svg_covered.png" img height="350px" border="4px"/>
</center>

</div>
</div>

<span style="display:block; height:1px;"></span>

---
### Esercizio #2

<div class="columns">
<div>

<span style="display:block; height:10px;"></span>

<div style="font-size: 85%">

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; la curva con la  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; deviazione standard pi&ugrave; grande?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Verde
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Blu
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Gialla
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Non lo posso sapere
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e) Nessuna delle precedenti

</div>

</div>
<div>
<span style="display:block; height:80px;"></span>

<center>
<img src="./img/normal/1200px-Normal_Distribution_PDF.svg_sd_covered.png" img height="350px" border="4px"/>
</center>

</div>
</div>

<span style="display:block; height:1px;"></span>

---
## La distribuzione Normale

<div class="columns">
<div>

<span style="display:block; height:0px;"></span>

<div style="font-size: 85%">

- Regola del 3 $\sigma$:
  - 68% dei valori osservati sono a 1 $\sigma$ dalla media
  - 95% sono a 2 $\sigma$
  - 99.7% sono a 3 $\sigma$
  
<span style="display:block; height:0px;"></span>

- Regola empirica:
  - valori $< 2 \sigma$ sono *"comuni"*
  - valori $> 2 \sigma$ sono *"inusuali"*  
  - valori $> 3 \sigma$ sono *"estremi"*  

</div>
</div>
<div>

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/normal/Standard_Normal_Distribution_3sigma.png" img height="420px" border="4px"/>
</center>

</div>

<!-- From the mathematical properties of the normal distribution, we know that roughly 95% of the population will be contained in the interval given by the mean ± two standard deviations, and 99.8% in the central ± three standard deviations. 

68% at 1SD -> valori comuni vs valori inusuali -->

---
## I valori estremi 

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/normal/Boxplot_vs_PDF.svg.png" img height="480px" border="0px"/>
</center>

<!-- Se i dati sono distribuiti normalmente c'e' una corrispondenza tra 1.5IQR dal 1o e 3o quartile e le standard deviation dalla media 
1.5 IQR (fence of the boxplot) -> If the data are normally distributed, the fence will be 2.7 standard deviations from the mean, so cases outside of it will be quite rare (0.4%)
-->

---
### Esercizio #3

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; L'altezza della popolazione maschile italiana si distribuisce secondo
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   una normale con media 170 cm e deviazione standard 9.5 cm

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E' possibile calcolate i seguenti valori? Se s&igrave;, quali sono?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) La mediana
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) La proporzione di italiani con altezza $>170 \text{ cm}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) I "range" di altezze considerabili come "inusuali" o "estremi"
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) L'altezza pi&ugrave; comune
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e) L'italiano pi&ugrave; alto di sempre

</div>

---
### Esercizio #4

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

:question: &nbsp;&nbsp;&nbsp; Indicativamente, in quale range di et&agrave; &egrave; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; compreso il $68\%$ dei pazienti nel   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gruppo di intervento?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) $3-17$ anni
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) $6.3-14.5$ anni
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) $4.1-16.7$ anni
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Non &egrave; possibile dirlo 

</div>

<span style="display:block; height:100px;"></span>



</div>
</div>

---
### Esercizio #5

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Con quale probabilità si potrà trovare nella popolazione
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; soggetti con valori superiori al terzo quartile?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) 25%
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) 50%
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) 75%
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Servono pi&ugrave; informazioni per poter rispondere

</div>

<span style="display:block; height:40px;"></span>

---
## Caratterizzare una singola osservazione

<span style="display:block; height:0px;"></span>

<div style="font-size: 90%">

Supponiamo di avere presa in cura un neonato (gemello) che pesa 1454g. 

</div>

<span style="display:block; height:50px;"></span>

<div style="font-size: 90%" align="right">

Come si caratterizza rispetto all'intera<br/> popolazione dei neonati (gemelli)?

</div>

---
## Facciamo un passo indietro...

<div style="font-size: 90%">

<img src="./img/normal/Twin_BW_normale_zscore.png" img height="500px" border="0px" align="right"/>

<span style="display:block; height:70px;"></span>

- La media ci dice qual &egrave; il centro di una distribuzione
- La deviazione standard ci dice qual &egrave; la distanza "tipica" dalla media

</div>


---
## Caratterizzare una singola osservazione

<span style="display:block; height:0px;"></span>

<div style="font-size: 90%">

Supponiamo di avere presa in cura un neonato (gemello) che pesa 1454g

- La media ci dice qual &egrave; il centro di una distribuzione

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $x = 1454\text{ g} < \mu = 2404\text{ g}$ &nbsp;&nbsp; $\rightarrow$ &nbsp;&nbsp; $x - \mu = 1454\text{ g}-2404\text{ g}=-950\text{ g}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\rightarrow$ il neonato pesa meno della media

---
## Caratterizzare una singola osservazione

<span style="display:block; height:0px;"></span>

<div style="font-size: 90%">

Supponiamo di avere presa in cura un neonato (gemello) che pesa 1454g

- La media ci dice qual &egrave; il centro di una distribuzione

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $x = 1454\text{ g} < \mu = 2404\text{ g}$ &nbsp;&nbsp; $\rightarrow$ &nbsp;&nbsp; $x - \mu = 1454\text{ g}-2404\text{ g}=-950\text{ g}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\rightarrow$ il neonato pesa meno della media

- La deviazione standard ci dice qual &egrave; la distanza "tipica" dalla media

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $|x - \mu| = 950\text{ g} > \sigma = 580\text{ g}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\rightarrow$ il peso &egrave; a una distanza maggiore di quella "tipica" 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

</div>

---
## Caratterizzare una singola osservazione

<span style="display:block; height:0px;"></span>

<div style="font-size: 90%">

Supponiamo di avere presa in cura un neonato (gemello) che pesa 1454g

- La media ci dice qual &egrave; il centro di una distribuzione

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $x = 1454\text{ g} < \mu = 2404\text{ g}$ &nbsp;&nbsp; $\rightarrow$ &nbsp;&nbsp; $x - \mu = 1454\text{ g}-2404\text{ g}=-950\text{ g}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\rightarrow$ il neonato pesa meno della media

- La deviazione standard ci dice qual &egrave; la distanza "tipica" dalla media

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $|x - \mu| = 950\text{ g} > \sigma = 580\text{ g}$ &nbsp;&nbsp; $\rightarrow$ &nbsp;&nbsp; $\frac{x - \mu}{\sigma} = \frac{-950\text{ g}}{580\text{ g}} = -1.87$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\rightarrow$ il peso &egrave; a una distanza maggiore di quella "tipica" 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\rightarrow$ &egrave; un peso (quasi) "inusuale"

</div>

---
## Caratterizzare una singola osservazione

<span style="display:block; height:0px;"></span>

<div style="font-size: 90%">

Supponiamo di avere presa in cura un neonato (gemello) che pesa 1454g

<span style="display:block; height:0px;"></span>

<img src="./img/normal/Twin_BW_normale_zscore_annotated.png" img height="450px" border="0px" align="right"/>

<span style="display:block; height:1px;"></span>


- La media ci dice qual &egrave; il centro di una distribuzione
&nbsp;&nbsp;&nbsp;&nbsp; $\rightarrow$ il neonato pesa meno della media

- La deviazione standard ci dice qual &egrave; la distanza "tipica" dalla media
&nbsp;&nbsp;&nbsp;&nbsp; $\rightarrow$ il peso &egrave; a una distanza "atipica" 
&nbsp;&nbsp;&nbsp;&nbsp; $\rightarrow$ &egrave; un peso (quasi) "inusuale"

</div>

---
## Lo $z$-score

<div style="font-size: 120%">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $z= \frac{x - \mu}{\sigma}$

</div>

<span style="display:block; height:20px;"></span>

<div style="font-size: 90%">

- ci dice se un'osservazione &egrave; maggiore o minore della media della popolazione
- ci dice se la deviazione di un'osservazione dalla media &egrave; grande o piccola rispetto alla deviazione tipica nella popolazione

</div>

---
### Esercizio #6

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Quale delle seguenti $z$-score rappresenta l'osservazione pi&ugrave; atipica?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) $-3.20$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) $-0.41$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) $+1.10$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) $+2.40$

:question: &nbsp;&nbsp;&nbsp; L'osservazione &egrave; superiore alla media?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e) S&igrave; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; f) No

</div>

<span style="display:block; height:10px;"></span>


---
### Esercizio #7 

<div style="font-size: 65%">

:question: &nbsp;&nbsp;&nbsp; Maria ha subito un trauma cranico a seguito di un incidente e il neurologo che l'ha
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; presa in cura la sottopone a 3 test. 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $1.$ Maria deve ascoltare delle parole e ripeterle (memory test). Maria ne rircorda
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  6, la popolazione generale 7, con una deviazione standard di 1.3 parole

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $2.$ Maria deve identificare degli oggetti da dei disegni (object naming test). Maria ne 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; riconosce 7, la popolazione generale 10, con una  deviazione standard di 0.59 oggetti

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $3.$ Maria ha un elenco di colori scritti con inchiostri diversi e deve dire di quale
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  colore &egrave; ciascun inchiostro il pi&ugrave; velocemente possibile (Stroop test). Maria impiega
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  15.7 secondi, la popolazione generale 16.2, con una deviazione  standard di 1.30 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; secondi

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nelle prossime viste, il neurologo deve concentrarsi sulla memoria, sull'abilita di 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nominare le cose o sull'attenzione di Maria?

</div>

---
## La standardizzazione

<span style="display:block; height:0px;"></span>

<div style="font-size: 90%">

- $z = \frac{x - \mu}{\sigma}$
- $\mathcal{N} = (\mu, \sigma^2) \rightarrow Z = (0, 1)$

</duv>

<img src="./img/normal/n2z.png" img height="400px" align="right" border="0px"/>



---
## La distribuzione Normale standardizzata

<div class="columns">
<div>

<span style="display:block; height:80px;"></span>

<div style="font-size: 90%">

- $Z = (0, 1)$
- Area sottesa alla curva $= 1$
- proporzione $\equiv$ probabilit&agrave;

</div>

</div>
<div>

<span style="display:block; height:20px;"></span>

<center>
<img src="./img/normal/normal_table_zoom.jpg" img height="420px" border="4px"/>
</center>

</div>
</div>

<!-- 
this is also known as her Z-score, which simply measures how many standard deviations a data-point is from the mean.

E perche la SND ci piace? Perche' esistono delle tavole che ci dicono qual e' l'area sottesa  ad una certa porzione della curva, che corrispondono alla probabilita' di trovare (nel caso di queste tavole) un valore < di quello osservato (area colorata)

Ci sono diverse versioni di queste tabelle, per esempio quella complementare che riporta l'area per la zona bianca (probabilita' di osservare valori piu' estremi) -->

---
## Proporzione $\equiv$ probabilit&agrave;


<div style="font-size: 90%">

<img src="./img/normal/Twin_BW_normale_area.png" img height="500px" border="0px" align="right"/>

<span style="display:block; height:70px;"></span>

- 6% dei gemelli nascono con un peso molto basso 
- La probabilit&agrave; di nascere con un peso molto basso &egrave; 0.06 

<span style="display:block; height:20px;"></span>

<div align="right">
Ma come &egrave; stato calcolato? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</div>

</div>

---
## Calcoliamo la probabilit&agrave;/proporzione

<span style="display:block; height:0px;"></span>

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp; Qual &egrave; la probabilit&agrave;, per un gemello, di nascere con un peso molto basso?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\mathcal{N} = (2404, 580^2)$

<span style="display:block; height:1px;"></span>

</div>

---
## Calcoliamo la probabilit&agrave;/proporzione

<span style="display:block; height:0px;"></span>

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp; Qual &egrave; la probabilit&agrave;, per un gemello, di nascere con un peso molto basso?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\mathcal{N} = (2404, 580^2)$



&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Calcoliamo lo $z$-score
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $z = \frac{x - \mu}{\sigma} = \frac{1500-2404}{580} = \frac{-904}{580} = -1.56$

</div>

---
## Calcoliamo la probabilit&agrave;/proporzione

<span style="display:block; height:0px;"></span>

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp; Qual &egrave; la probabilit&agrave;, per un gemello, di nascere con un peso molto basso?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\mathcal{N} = (2404, 580^2)$

<img src="./img/normal/Twin_BW_normale_area_z.png" img height="400px" align=right border="0px"/>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Calcoliamo lo $z$-score
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $z = \frac{x - \mu}{\sigma} = \frac{1500-2404}{580} = \frac{-904}{580} = -1.56$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Identifichiamo l'area

</div>

---
## Calcoliamo la probabilit&agrave;/proporzione

<span style="display:block; height:0px;"></span>

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp; Qual &egrave; la probabilit&agrave;, per un gemello, di nascere con un peso molto basso?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\mathcal{N} = (2404, 580^2)$

<img src="./img/normal/normal_table_zoom.jpg" img height="350px" align=right border="4px"/>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Calcoliamo lo $z$-score
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $z = \frac{x - \mu}{\sigma} = \frac{1500-2404}{580} = \frac{-904}{580} = -1.56$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Identifichiamo l'area

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Cerchiamo lo $z$-score sulle tavole e 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ragioniamo sull'area identificata

</div>

---
## Calcoliamo la probabilit&agrave;/proporzione

<span style="display:block; height:0px;"></span>

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp; Qual &egrave; la probabilit&agrave;, per un gemello, di nascere con un peso molto basso?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\mathcal{N} = (2404, 580^2)$

<img src="./img/introduction/panic.gif" img height="350px" align=right border="4px"/>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Calcoliamo lo $z$-score
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $z = \frac{x - \mu}{\sigma} = \frac{1500-2404}{580} = \frac{-904}{580} = -1.56$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Identifichiamo l'area

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Cerchiamo lo $z$-score sulle tavole e 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ragioniamo sull'area identificata
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\rightarrow$ non ci sono $z$-score negativi

</div>

---
## Ragioniamo sulle aree...

---
## Ragioniamo sulle aree...

<div class="columns">
<div>

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/normal/Twin_BW_normale_area_z.png" img height="450px" border="0px"/>
</center>

</div>
<div>

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/normal/Twin_BW_normale_area_z_simmetrica.png" img height="450px" border="0px"/>
</center>

</div>
</div>

---
## Ragioniamo sulle aree...

<div class="columns">
<div>

<span style="display:block; height:1px;"></span>



</div>
<div>

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/normal/Twin_BW_normale_area_z_1-alpha.png" img height="450px" border="0px"/>
</center>


</div>
</div>


---
## Calcoliamo la probabilit&agrave;/proporzione

<span style="display:block; height:0px;"></span>

<div style="font-size: 80%">

&nbsp;&nbsp;&nbsp; Qual &egrave; la probabilit&agrave;, per un gemello, di nascere con un peso molto basso?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\mathcal{N} = (2404, 580^2)$

<img src="./img/normal/normal_table_zoom_example.jpg" img height="350px" align=right border="4px"/>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Calcoliamo lo $z$-score
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $z = \frac{x - \mu}{\sigma} = \frac{1500-2404}{580} = \frac{-904}{580} = -1.56$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Identifichiamo l'area


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Cerchiamo lo $z$-score sulle tavole e 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ragioniamo sull'area identificata

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\mathcal{P} = 1 - 0.9406 = 0.0594 \rightarrow 5.94\%$

<!-- Fare vedere che la curva e' simmetrica quindi possiamo usare 1.56 per conoscere l'area -->


---
### Esercizio #8

<div style="font-size: 80%" >

:question: &nbsp;&nbsp;&nbsp; Non sapendo che il bambino ha un gemello, il pediatra dice alla madre che un
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; peso alla nascita inferiore ai $2500$g &egrave; inusuale. La madre deve preoccuparsi?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<img src="./img/normal/normal_table_zoom.jpg" img height="380px" border="4px" align="right"/>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\mathcal{N} = (2404, 580^2)$

</div>

<span style="display:block; height:200px;"></span>


</div>
<div>

<span style="display:block; height:10px;"></span>



</div>
</div>

<!-- For medical rather than statistical reasons, babies below 2,500 g are considered ‘low birth weight’, and those below 1,500 g ‘very low birth weight’.  -->

---
## Percentili

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/percentile.png" img height="350px" border="0px"/>
</center>

<!-- Mentre la mediana divide i dati in due meta' esatte, molto usati sono anche i quartili, che dividono i dati in 4 parti uguali -->

<span style="display:block; height:10px;"></span>

<div style="font-size: 90%" align="right">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\mathcal{P} = 56.75\%$ ci dice che il nostro bambino &egrave; nel 56.75$^o$ percentile

</div>

---
### Cosa abbiamo imparato in questa lezione?

<span style="display:block; height:0px;"></span>

<div style="font-size: 80%">

- Diversi fenomeni naturali sono normalmente distribuiti
- La distribuzione Normale &egrave; definita dalla media e dalla deviazione standard e corrisponde a una distribuzione di probabilit&agrave;
- La distribuzione (Normale) di una popolazione ci fornisce la probabilit&agrave; di estrarre un individuo da quella popolazione, ma anche la sua frequenza 
- Se i dati sono normalmente distribuiti, il 68% della popolazione si trova a 1 $\sigma$ dalla media, il 95% a 2 $\sigma$ e il 99.7% a 3 $\sigma$
- Lo $z$-score ci permette di "posizionare" un'osservazione rispetto alla popolazione e di confrontare pi&ugrave; distribuzioni (anche molto diverse)

</div>
