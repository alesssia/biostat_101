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
# La visualizzazione dei dati
## &nbsp;

---
## Obiettivi di apprendimento

<span style="display:block; height:50px;"></span>

<div style="font-size: 85%">

- Decidere qual e' l'approccio migliore per rappresentare i diversi tipi di dati
- Saper interpretare grafici in articoli scientifici

</div>

<!-- Figures get more space in publications. This is quite easy in electronic publications, but also in print editions half or even full-page figures are becoming a sight. -->

---
## Variabili categoriche

<div class="columns">
<div>

<span style="display:block; height:40px;"></span>

#### Tabella di frequenza

<div style="font-size: 90%">


* frequenza assoluta (numero)
* frequenza relativa (percentuale)

</div>

<span style="display:block; height:100px;"></span>

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

---
## Variabili categoriche

<div class="columns">
<div>

<span style="display:block; height:40px;"></span>

#### Tabella di frequenza

<div style="font-size: 90%">


* frequenza assoluta (numero)
* frequenza relativa (percentuale)

</div>

<span style="display:block; height:100px;"></span>

<div style="font-size: 50%">
	
Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<center>
<img src="./img/visualization/Table1_var_categoriche_metastatic.png" img height="550px" border="4px"/>
</center>

</div>
</div>

---
## Bar chart

<div class="columns">
<div>

<span style="display:block; height:40px;"></span>


<div style="font-size: 90%">

* frequenza assoluta


</div>


</div>
<div>

<center>
<img src="./img/visualization/MStage_barplot_vertical.png" img height="500px" border="4px"/>
</center>

</div>
</div>


<!-- Diagramma a barre 

A barplot shows the relationship between a numeric and a categoric variable. Each entity of the categoric variable is represented as a bar. The size of the bar represents its numeric value.

Barplot is sometimes described as a boring way to visualize information. However it is probably the most efficient way to show this kind of data. Ordering bars and providing good annotation are often necessary.

Sorting bars often add insight.

Long labels? Think of an horizontal version.
-->

---
## Horizontal bar chart


<div class="columns">
<div>

<span style="display:block; height:40px;"></span>


<div style="font-size: 90%">

* frequenza assoluta

</div>

</div>
<div>

<center>
<img src="./img/visualization/MStage_barplot_horizontal.png" img height="500px" border="4px"/>
</center>

</div>
</div>



<!-- Diagramma a barre orizzontali 
variazione ulteriore: Circular bar chart, lollipop -->

---
## Horizontal bar chart


<div class="columns">
<div>

<span style="display:block; height:40px;"></span>


<div style="font-size: 90%">

* frequenza relativa

</div>

</div>
<div>

<center>
<img src="./img/visualization/MStage_barplot_horizontal_relative.png" img height="500px" border="4px"/>
</center>

</div>
</div>



<!-- Diagramma a barre orizzontali 
variazione ulteriore: Circular bar chart, lollipop -->


---
## Pie chart

<div class="columns">
<div>

<span style="display:block; height:40px;"></span>


<div style="font-size: 90%">

* frequenza relativa

</div>

</div>
<div>

<center>
<img src="./img/visualization/MStage_piechart.png" img height="500px" border="4px"/>
</center>

</div>
</div>

<!-- Diagramma a torta

A pie chart is a circle divided into sectors that each represent a proportion of the whole. It is often used to show proportion, where the sum of the sectors equal 100%.

Pie charts are highly critized and must be avoided as much as possible. Human is very bad at translating angles towards values. 

Don't use it
Don't use 3D.
Don't use a legend, annotate directly each slice.
If displaying proportion, sum must add up to 100.
Don't put several pie charts one beside each other to compare them.

-->

---
## Donut chart

<div class="columns">
<div>

<span style="display:block; height:40px;"></span>


<div style="font-size: 90%">

* frequenza relativa

</div>

</div>
<div>

<center>
<img src="./img/visualization/MStage_donut.png" img height="500px" border="4px"/>
</center>

</div>
</div>


<!-- Diagramma a ciambella - cugino di primo grado. 
Ho migliorato la grafica andando ad annotare le percentuali -->

---
## Waffle chart

<div class="columns">
<div>

<span style="display:block; height:40px;"></span>


<div style="font-size: 90%">

* frequenza relativa

</div>

</div>
<div>

<center>
<img src="./img/visualization/MStage_waffle.png" img height="500px" border="4px"/>
</center>

</div>
</div>


<!-- A Waffle Chart visually represents categorical data through a grid of small squares, resembling a waffle. Each category is assigned a unique color, and the number of squares allocated to each category corresponds to its proportional share of the total data count. 

Common Mistakes
 sum must add up to 100.
 -->

---
## Data visualisation: boxplots

<span style="display:block; height:70px;"></span>

<center>
<img src="./img/descriptive/boxplot_explanation.png" img height="250px" border="0px"/>
</center>


<!-- boxplot consente di rappresentare visivamente alcune caratteristiche di una distribuzione statistica: 

- il grado di dispersione dei dati (via IQR)
-  la misura di tendenza centrale (via mediana)
- la forma della distribuzione (con i "baffi")
- la presenza di valori anomali -->

---
## Boxplots in the wild

<div class="columns">
<div>

<span style="display:block; height:400px;"></span>

<div style="font-size: 50%">

Visconti A., *et al.*, Total serum *N*‐glycans associate with response to immune checkpoint inhibition therapy and survival in patients with advanced melanoma, BMC Cancer, 2023 doi:10.1186/s12885-023-10511-3

</div>

</div>
<div>

<span style="display:block; height:10px;"></span>

<center>
<img src="./img/visualization/boxplot.png" img height="450px" border="4px"/>
</center>

</div>
</div>

<!-- 50% dei dati sta tra -0.6 e 1, la mediana e' circa 0.3, il baffo ci dice che e' assimmetrica a dx, non ci sono outliers

conrontare due distribuzioni, simile IQR, ma diverse mediane

Mediana, quartili (ma anche percentili) si dicono misure di posizionamento perche' ci fanno "posizionare" i dati -->


---
## Data visualisation: DataSaurus Dozen

<span style="display:block; height:2px;"></span>

<center>
<img src="./img/visualization/DataSaurusDozen.gif" img height="450px" border="4px"/>
</center>

---

## The shape of a distribution

<span style="display:block; height:70px;"></span>

<center>
<img src="./img/visualization/434px-Relationship_between_mean_and_median_under_different_skewness.png" img height="250px" border="0px"/>
</center>

---
## In questa lezione abbiamo...

<span style="display:block; height:50px;"></span>

<div style="font-size: 85%">

- imparato l'importanza dell'esplorazione grafica dei dati
- imparato come rappresentare ogni tipo di dato nel modo migliore
- imparato come interpretare i grafici all'interno di articoli scientifici
- esplorato alcuni limiti delle varie rappresentazioni grafiche introdotte
- esplorato alcune rappresetazioni fallaci dei dati

</div>