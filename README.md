# nat-guide

This is a set of notebooks is designed to be an introduction to working with some of useful [natverse] (http://natverse.org/) functions in R. You can view all of these notebooks online [here](http://www.isabeldalessandro.com/nat-guide/). 

## Information contained in these guides 
Currently, I've made available the following four notebooks: 

* <b>Basic Nat Functions</b> - This notebook describes some basic operations that can be performed using the [neuroanatomy toolbox](http://natverse.org/nat/). It includes examples showing how to register a light level tracing, view a traced skeleton in 3D, transform a neuron between template brain spaces, and work with [flycircuit](http://www.flycircuit.tw/) data. 

* <b>NBLAST</b> - This notebook describes how to work with the [nblast package](http://natverse.org/nat.nblast/) in R to implement the neuron similarity algorithm described in [Costa et al. 2016](https://linkinghub.elsevier.com/retrieve/pii/S0896627316302653). It includes examples showing how to use NBLAST to assess the similarity between neurons, and how to use NBLAST to find flycircuit clones and Gal4 lines matching a neuron of interest. 

* <b>CATMAID</b> - This notebook describes how to work with the [FAFB EM dataset](https://www.cell.com/cell/fulltext/S0092-8674(18)30787-6) by making calls to CATMAID through R. It incldues examples showing how to fetch neurons from FAFB, how to compare these neurons with neurons in other brain spaces, how to find and evaluate synapses and synaptic partners.

* <b>Hemibrain</b> - This notebook describes how to use the [neuprintr](http://natverse.org/neuprintr/index.html) package to work with the [hemibrain dataset](https://www.janelia.org/project-team/flyem/hemibrain) by interfacing with [neuprint](https://neuprint.janelia.org/?dataset=hemibrain:v1.0.1). It includes examples showing how to fetch hemibrain skeletons and brain regions, how to compare these skeletons with neurons in other brain spaces, and how to find and evaluate synapses and synaptic partners. 

## Working with these notebooks 
I've also made available the R notebooks used to generate these online guides. You can download the notebooks to work with and modify the code yourself. To do so, just download the <b>R-notebooks</b> folder. Contained in this folder are four .Rmd notebooks corresponding to the four online notebooks described above, a data folder containing all the data files necessary to run the code, and some files to load in the required packages. I suggest running the code block-by-block. Some code blocks require you to add in your own information (e.g. your own catmaid login info and natverse token). 
