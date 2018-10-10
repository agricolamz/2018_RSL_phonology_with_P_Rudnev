# Data and method #

The data for our study comes from a small annotated corpus presented in Plaskovitskaya [-@Plaskovitskaya:2018], whose main aim was to test the predictions of existing approaches to SL phonology against the data from RSL, and to compile a preliminary inventory of phonological primitives in RSL as well as sketch a model of their compositional interaction.

The corpus consists of  400 ELAN v.5.1-annotated, primarily monomorphemic, citation-form verbs taken from the [*Spread the Sign* dictionary](http://www.spreadthesign.com/be/) in the Belarusian dialect of Russian Sign Language. The theoretical model buttressing the annotation is Van der Kooij's [-@vanderKooij:2002] Dependency model with minor modifications. The data, their annotation and the dedicated script to facilitate navigation are all available as a [GitHub repository](https://github.com/ToszaPlaskovickaja/Term_paper) at [`https://github.com/ToszaPlaskovickaja/Term_paper`](https://github.com/ToszaPlaskovickaja/Term_paper). 

* float illustrating an annotated lexical entry?

## Results ##

We initially subjected all the entries to the Multiple Correspondence Analysis (MCA) with a view to identifying natural classes based on certain elements of the annotation.

* we discovered 3 clusters corresponding to 
    * two-hand signs 
    * cluster 2 (defined by H1 features including movement to a physiologically less tense position)
    * cluster 3 (less marked class comprising one-hand signs defined by H1 features including movement to a physiologically more tense position)

## @Plaskovitskaya:2018 ##

The model in @Plaskovitskaya:2018 is a modified version of Van der Kooij's [-@vanderKooij:2002] *Dependency model*. It is hierarchically organised: head nodes can restrict the values of their dependent nodes, which, in turn, modify them. Perhaps the most significant departure from @vanderKooij:2002 concerns the placement of the [symmetrical] and [crossed] features in the hierarchical representation of RSL signs: whilst @vanderKooij:2002 situates them inside the Manner node (which is structurally higher than any of the articulators), @Plaskovitskaya:2018 notes that they are restricted to the Active Articulator node, and their original positioning in the Manner node runs the risk of generating unattested interpretations.

![RSL phonology [@Plaskovitskaya:2018]](RSL-phonology-plaskovitskaya-2018-model.pdf)

  * **major problem with @Plaskovitskaya:2018: words vs. segments**
  * having amended Plaskovitskaya's original annotation scheme on the basis of the intermediate results, we have isolated 515 segments---rather than words---on which to run the MCA.
  * we propose that Plaskovitskaya's [-@Plaskovitskaya:2018] analysis can be simplified further
  
  
  
![Revised model](RSL-phonology-model-revised.pdf)
