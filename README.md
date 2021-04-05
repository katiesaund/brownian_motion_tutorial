# Brownian Motion Tutorial
Tutorial to demonstrate properties of Brownian Motion. Used code in this repo for a talk at Snitkin Lab meeting in May 2018. 

Good resource: O’Meara et al 2006 Evolution. This is the paper that all of the BM papers cite. 
“Brownian motion (BM). This is the standard model for continuous character evolution, used in independent contrasts (Felsenstein 1985) and estimation of ancestral states (Schluter et al. 1997).” 

Some notes: 
* BM does not necessarily imply neutral evolution (it could be changes in direction selection, punctuated change, or genetif drift). 
* OU is preferable to BM when there is a single optimum trait value. 
* BM works better on log transformed data than the raw values if the raw values cannot go up or down with equal likelihood. For example, if there is an absolute minimum (eg 0 toxin production) and the current trait value is 0.5, the character can’t equally likely go up to 1.5 and down to -.5; log transforming helps alleviate this problem (But not always). This is why log transforming the data is better for ancestral reconstruction (which uses BM). 
* “Brownian motion also has a deficiency as a model in that it does not explicitly model a particular process. Finding that one group has a higher rate of Brownian motion than another does not reveal whether this is due to drift happening more quickly as a result of smaller population size, more changes in the location of an adaptive peak due to environmental change, or more frequent shifts in character state due to com- petition following speciation.”

