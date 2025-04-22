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

- Saper calcolare e interpretare misure di centralit&agrave;, dispersione e correlazione
- Saper visualizzare dati numerici
- Saper interpretare tabelle e figure in articoli scientifici

---
## Le fasi della ricerca

<span style="display:block; height:2px;"></span>

<center>
<img src="./img/descriptive/PPDAC_quantitative.png" img height="450px" border="0px"/>
</center>

<div style="font-size: 50%" align="right">

Spiegelhalter, D., *The Art of Statistics: Learning From Data*, Pelican, 2019

</div>

---
## Misure di centralit&agrave; e dispersione

<span style="display:block; height:50px;"></span>

<center>
<img src="./img/descriptive/descriptive.png" img height="350px" border="4px"/>
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


<!-- se ciascun valore si presenta una volta sola, le nostre osservazioni non hanno moda

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

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $x= \{6, 34, 40, 55, 75\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{mediana}(x)= \text{ ?}$ 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $y= \{6, 34, 40, 55, 175\}$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $\text{mediana}(y)=\text{ ?}$ 

</div>


---
## Mediana e valori anomali

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

:question: &nbsp;&nbsp;&nbsp; Maria ha ricevuto un punteggo di 70 a un esame, posizionandosi 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nel 45$^o$ percentile.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; L'esame &egrave; andato...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) bene: Maria ha ricevuto un voto superiore a pi&ugrave; met&agrave; delle  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; persone che hanno dato quell'esame
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) non benissimo: Maria ha ricevuto un voto inferiore a pi&ugrave; met&agrave; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; delle persone che hanno dato quell'esame
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

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $x= \{6, 34, 40, 55, 75\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${\bar {x}} = \text{ ?}$

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $y= \{6, 34, 40, 55, 175\}$ 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${\bar {y}} = \text{ ?}$

<div>

<span style="display:block; height:10px;"></span>

---
## Media e valori anomali

<center>
<img src="./img/descriptive/mean_outlier.png" img height="500px" border="0px"/>
</center>

---
## La forma delle distribuzioni

<span style="display:block; height:70px;"></span>

<center>
<img src="./img/descriptive/434px-Relationship_between_mean_and_median_under_different_skewness.png" img height="250px" border="0px"/>
</center>

<!-- La posizione di moda media e mediana va a definire anche quella che e' la forma della distribuzione, che descrive come una Distribuzione empirica e/o Di- stribuzione di popolazione si distribuisce. 

Si dice che una distribuzione abbia una forma simmetrica quando Moda, Mediana e Media coincidono e dividono la distribuzione stessa in due parti identiche. 

Qualora que- sta condizione non si verificasse, la forma della distribuzione viene detta asimmetrica. 
Una distribuzione asimmetrica positiva `e caratterizzata da una curva in cui i valori sono raggruppati nella parte sinistra, con una lunga coda a destra (anche detta: asimmetrica a destra). 
Viceversa, una distribuzione asimmetrica negativa `e caratterizzata da una curva in cui i valori sono raggruppati nella parte destra, con una lunga coda a sinistra (anche detta: asimmetrica a sinistra). --->


---
## La forma delle distribuzioni

<span style="display:block; height:70px;"></span>

<center>
<img src="./img/descriptive/Bimodal_geological.png" img height="350px" border="0px"/>
</center>

<!-- Si dice che una distribuzione sia bi- o multi-modale quando presenta due o piu` gobbe corrispondenti ai diversi valori che la moda puo` assumere nel campione.
 -->

---
### Esercizio 5

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Nei risultati di uno studio è riportata la seguente frase:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *The mean length of stay was 22.4 days (median: 14 days).*

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; La distribuzione empirica ha una forma...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) simmetrica
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) asimmetrica a destra 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) asimmetrica a sinistra
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) nessuna delle precedenti

</div>


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

piu; semplice, meno informativo  Il range ha tuttavia un'utilita' limitata: tiene conto solo di due valori, e non e' robusta quando ci sono valori anomali 

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

--- 
## I valori estremi

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/outliers_mean.png" img height="450px" border="0px"/>
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

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Nei risultati di uno studio è riportata la seguente frase:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *Coronary-artery calcium scores averaged 68.9&plusmn;244.2 (range 0 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to 1526) in  patients and 8.8&plusmn;41.8 (range 0 to 243.4) in controls.*


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Come descrivereste in Table 1 questa variabile?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) con media e deviazione standard
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) con mediana e interquantile range 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) con mediana e deviazione standard
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) non ho abbastanza elementi per decidere

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

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; la percentuale di bambine e 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ragazze nel gruppo di intervento?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) 13%
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) 12%
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

:question: &nbsp;&nbsp;&nbsp; Qual &egrave; l’et&agrave; media dei pazienti nel  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gruppo di controllo?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) 10.4
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

<div style="font-size: 90%">

Quanti partner (etero)sessuali le persone in Gran Bretagna riferiscono di aver avuto nella loro vita?

<!-- The purpose of this question is not simply to be nosey about people’s private lives. When AIDS first became a serious concern in the 1980s, public health officials realized that there was no reliable evidence about sexual behaviour in Britain, particularly in terms of the frequency with which people changed partners, how many had multiple simultaneous partners, and what sexual practices people engaged in. This knowledge was essential to predict the spread of sexually transmitted diseases through society and to plan health services

resulting in the National Sexual Attitudes and Lifestyle Survey (Natsal) which has been carried out in the UK every ten years since 1990.
 -->

---
### Esercizio #11

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
### Esercizio #11 (bis)

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Il grafico della distribuzione conferma quello che abbiamo detto? 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Aggiunge informazione? 

<span style="display:block; height:1px;"></span>

<center>
<img src="./img/descriptive/British_sex_partner_histogram.png" img height="350px" border="4px"/>
</center>

<div style="font-size: 50%" align="right">

Spiegelhalter, D., *The Art of Statistics: Learning From Data*, Pelican, 2019

</div>


<!-- ---
Bimps sulle decine, asimmetrica
Multimodale, particolarmente accentuato sull'1 -->

---
### Esercizio #12

<span style="display:block; height:1px;"></span>

<img src="./img/descriptive/gym.png" img height="400px" align="left" border="4px"/>

<div style="font-size: 70%">

&nbsp; :question: &nbsp; Questi dati sono stati raccolti intevistando  41 genitori
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

---
### La relazione (lineare) tra due variabili numeriche

<div style="font-size: 78%">

Cosa &egrave; successo ai bambini sottoposti a interventi cardiochirugici in alcuni ospedali britannici tra il 1984 e il 1995?

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

<span style="display:block; height:170px;"></span>

<div style="font-size: 60%">

$^1$ In questo caso di Peason. Un altro indice di 
&nbsp;&nbsp; correlazione &egrave;  quello di Spearman

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
### Esercizio #13

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Una correlazione $r=-0.7$ indica che al crescere del valore  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; di una variabile, il valore dell'altra variabile...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) cresce
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) descresce
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) rimane costante
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) dipende dalle variabili

</div>

<span style="display:block; height:70px;"></span>

---
### Esercizio #14

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; Quale dei seguenti valori di $r$ indica la correlazione pi&ugrave; forte?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) $- \text{ } 0.2$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) $+ \text{ } 0.4$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) $- \text{ } 0.7$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) $+ \text{ } 1.1$

</div>

<span style="display:block; height:100px;"></span>

---
### Esercizio #15

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
## Perch&eacute; visualizzare i dati?

<span style="display:block; height:2px;"></span>

<center>
<img src="./img/visualization/DataSaurusDozen.gif" img height="400px" border="4px"/>
</center>

<div style="font-size: 50%" align="right">

<br/> <b>Datasaurus Dozen</b>,  Matejka, J &; Fitzmaurice, G. *Same Stats, Different Graphs: Generating Datasets with Varied Appearance and Identical Statistics through Simulated Annealing*, Proceedings of the 2017 CHI Conference on Human Factors in Computing Systems, doi:10.1145/3025453.3025912

</div>


---
## Parametri *vs*&nbsp; statistiche

<span style="display:block; height:1px;"></span>

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
### Esercizio #13

<span style="display:block; height:1px;"></span>

<div style="font-size: 90%">

:question: &nbsp;&nbsp;&nbsp; La media nella popolazione viene indicata con...

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) M 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) m
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) $\mu$
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) $\bar{x}$ 

</div>

<span style="display:block; height:100px;"></span>

---
## Perch&eacute; c'&egrave; variabilit&agrave; nelle osservazioni?

<div style="font-size: 85%">

:dart: &nbsp;&nbsp; In uno studio sull'et&agrave; neonatale, 18 pediatri misurano la circonferenza 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cranica di un bambolotto che simula un  bambino di un anno
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<img src="./img/descriptive/head_circiference_doll.png" img height="350px" align="left" border="4px"/>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A cosa &egrave; dovuta questa 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; variabilit&agrave;?

</div>

<!-- Given that all nurses were measuring the head of the same doll, all of the head circumference measurements should be the same. In other words, there should be no variability in the measurements. However, the above graph clearly illustrates that there was variability in the measurements. Why was there variability in the measurements of the doll’s head circumference? (Select all that apply.)

Some nurses held the tape measure tighter around the infants head while others held it looser.
Each nurse put the tape measure in a slightly different place on the doll’s head
Some nurses may have misread the tape measure.
The doll’s head changed size between measurements. -->

---
## Perch&eacute; c'&egrave; variabilit&agrave; nelle osservazioni?

<div style="font-size: 85%">

:dart: &nbsp;&nbsp; Nello stesso studio, un pediatria misura la circonferenza cranica di 35
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bambini di un anno
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


<img src="./img/descriptive/head_circiference_children.png" img height="350px" align="left" border="4px"/>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A cosa &egrave; dovuta questa 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; variabilit&agrave;?

</div>

<div style="font-size: 85%" align="right">



</div>

<!--   the above question, all of the variability in scores was created by measurement error because everyone was measuring the same thing and, therefore, should have obtained the same score. Unfortunately, measurement error is always present. No matter what you are measuring, you will never be able to measure it perfectly every time. You can, however, reduce the amount of measurement error. In the context of measuring an infant’s head circumference, how could the developmental psychologist and/or nurses reduce the variability in scores created by measurement error (i.e., what could they do to increase the accuracy/reliability of each measurement?). Select all that apply.

Give the nurses a lot of practice measuring different dolls’ heads.
Train the nurses to use a consistent degree of tension in the tape measure.
-->

---
## Perch&eacute; c'&egrave; variabilit&agrave; nelle osservazioni?

<div style="font-size: 85%">

:dart: &nbsp;&nbsp; Nello stesso studio, lo stesso pediatra misura altri 35 bambini di un 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; anno che vivono in famiglie di stato socioeconomico molto basso
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


<img src="./img/descriptive/head_circiference_children_groups.png" img height="350px" align="left" border="4px"/>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A cosa &egrave; dovuta questa 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; variabilit&agrave;?

</div>

<div style="font-size: 85%" align="right">

<br/>


</div>

<!-- Anche qui rimangono errori di misurazione e variabilita' individuale -->

---
## Perch&eacute; dobbiamo conoscere la differenza?

<div style="font-size: 85%">

:dart: &nbsp;&nbsp; Vedremo come determinare se la variabilit&agrave; &egrave; generata dalle condizioni 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sperimentali o se &egrave; generata da differenze individuali e/o da errori di 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; misurazione


<span style="display:block; height:60px;"></span>

<center>
<img src="./img/descriptive/head_circiference_doll.png" img height="190px"  border="4px"/> 
<img src="./img/descriptive/head_circiference_children.png" img height="190px"  border="4px"/>
<img src="./img/descriptive/head_circiference_children_groups.png" img height="190px" border="4px"/>
</center>



---
### Cosa abbiamo imparato in questa lezione?

<!-- -->

<div style="font-size: 80%">

- Le variabili numeriche possono essere rappresentate con misure di centralit&agrave;, dispersione e correlazione (statistiche)
- Alcune statistiche sono "falsate" se le distribuzioni empiriche sono asimmetriche e/o includono valori estremi e  possono nascondere dettagli importanti dei dati
- Le variabili numeriche possono essere rappresentate graficamente in diversi modi, ma alcune  possono nascondere dettagli importanti delle distribuzioni empiriche
- Visualizzare i dati &egrave; importante per interpretarli
- Il campione viene rappresentato con le statistiche, la popolazione con i parametri
- La variabilit&agrave; che osserviamo pu&ograve; essere causata da errori di misurazione, differenze individuali e/o di condizione sperimentale

</div>

