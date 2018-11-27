# Data and method {#sec:data} 

We take @Plaskovitskaya:2018, which is, as far as we are aware, the only existing description of the RSL phonological system to date, as the point of departure for our study both empirically and analytically. The data for our study comes from a small annotated corpus presented in @Plaskovitskaya:2018, whose main aim was to test the predictions of existing approaches to SL phonology against the data from RSL, and to compile a preliminary inventory of phonological primitives in RSL as well as sketch a model of their compositional interaction.

## The corpus 

Plaskovitskaya's [-@Plaskovitskaya:2018] corpus consists of  400 primarily monomorphemic, citation-form verbs taken from the [*Spread the Sign* dictionary](http://www.spreadthesign.com/be/) in the Belarusian dialect of Russian Sign Language. Because the signs normally appear in the dictionary in their citation form, annotation also resorted to entries from other dialects of RSL from the same dictionary as well as field notes from elicitation sessions with the native signers of the Belarusian dialect of RSL to resolve any potential ambiguities and facilitate decision making.[^3]

All entries were manually annotated in ELAN v.5.1 [@Crasborn:2008]. The theoretical model buttressing the annotation is Van der Kooij's [-@vanderKooij:2002] Dependency model with minor modifications, briefly addressed directly below. The approach to annotation is intentionally detailed: even minute features are annotated or introduced to test the theoretical predictions regarding their status as RSL phonemes, paving the way for statistically oriented studies such as the one attempted in this paper. The data, their annotation in the `.eaf` format and a dedicated script to facilitate corpus navigation are all freely available for download as a [GitHub repository](https://github.com/ToszaPlaskovickaja/Term_paper) at [`https://github.com/ToszaPlaskovickaja/Term_paper`](https://github.com/ToszaPlaskovickaja/Term_paper).

## The model: @Plaskovitskaya:2018

The model in @Plaskovitskaya:2018 is a modified version of Van der Kooij's [-@vanderKooij:2002] *Dependency model*. Like @vanderKooij:2002, and unlike most of the other models of sign language phonology, it is inductively organised and crafted on the basis of large datasets, rather than being deductive in character. It is also hierarchical: head nodes can restrict the values of their dependent nodes, which, in turn, modify them. The Dependency model and its descendants differ from most of the other phonological models in viewing movement as a phonetic/prosodic reflex rather than as a separate parameter as described in [@Sec:properties] above. 

Perhaps the most significant departure of @Plaskovitskaya:2018 from @vanderKooij:2002 concerns the placement of the [symmetrical] and [crossed] features in the hierarchical representation of RSL signs: whilst @vanderKooij:2002 situates them inside the Manner node (which is structurally higher than any of the articulators), @Plaskovitskaya:2018 notes that they are restricted to the Active Articulator node, and their original positioning in the Manner node runs the risk of generating unattested interpretations. The proposed hierarchical structure is schematically represented in @Fig:plaskovitskaya.

![RSL phonology [@Plaskovitskaya:2018]](RSL-phonology-plaskovitskaya-2018-model.pdf){#fig:plaskovitskaya}

As can be glimpsed from the representation in @Fig:plaskovitskaya, @Plaskovitskaya:2018 indeed follows @vanderKooij:2002 in removing movement in the case of the active articulator from within the purview of phonology and assigns it a phonetic/prosodic status, whereas the passive articulator is specified with both Location and Trajectory nodes with an internal complexity of their own.

By way of illustration, let us consider a minimal working example of the model at work: the RSL  sign for \textsc{betray}, for instance, will receive the schematic representation in @Fig:betray.

![\textsc{betray} in @Plaskovitskaya:2018](RSL-phonology-model-BETRAY.pdf){#fig:betray}

The sign involves two articulators: an active articulator (i.e. the dominant hand) and one passive articulator corresponding to the middle of the signer's face (Location: mid-head). Four fingers of the dominant hand are extended (Curve: straight), and the dominant hand dynamically changes orientation from prone (i.e. palm facing down) to neutral.

Whilst Plaskovitskaya's [-@Plaskovitskaya:2018] model can handle 1-hand signs reasonably well, a complication arises when it comes to 2-hand signs. Even though the model comes equipped with enough flexibility to accommodate those signs which contain multiple articulators and which are asymmetrical (cf. \textsc{betray} above, where the location parameter for the entire sign is encoded into the passive articulator), it is symmetrical 2-hand signs which are problematic. To see this, let us consider the symmetrical 2-hand sign \textsc{deter}.

* DETER + other 2-handers??? 

A further issue with Plaskovitskaya's original annotation scheme concerned its reliance on lexical items rather than segments: for the purposes of her study, @Plaskovitskaya:2018 treats all lexical items as single segments in their own right.

* WHY DO WE THINK THIS IS A PROBLEM?
    * (put differently, why did we want to reannotate everything as either 1- or 2-hand signs?)

It is for this reason that we reannotated the corpus for it to also reflect both the 1- *vs.* 2-hand nature of every sign and the presence of multiple segments before running the MCA. The entire project is available for download as a [GitHub repository](https://github.com/agricolamz/2018_RSL_phonology_with_P_Rudnev) at [`https://github.com/agricolamz/2018_RSL_phonology_with_P_Rudnev`](https://github.com/agricolamz/2018_RSL_phonology_with_P_Rudnev). 

# Results {#sec:results}

Having isolated 515 segments on the basis of the new annotation, we subjected them to Multiple Correspondence Analysis [MCA, see @Husson:2017, especially ch. 3], with a view to identifying natural classes based on certain elements of the annotation. 

* we discovered 3 clusters corresponding to 
    * two-hand signs 
    * cluster 2 (defined by H1 features including movement to a physiologically less tense position)
    * cluster 3 (less marked class comprising one-hand signs defined by H1 features including movement to a physiologically more tense position)

##### Iconicity ##### {.unnumbered}

We can see that even though almost all outliers are iconic, the converse does not hold: rather than 

  * **major problem with @Plaskovitskaya:2018: words vs. segments**
  * having amended Plaskovitskaya's original annotation scheme on the basis of the intermediate results, we isolated 515 segments---rather than words---on which to run the MCA.
  * we propose that Plaskovitskaya's [-@Plaskovitskaya:2018] analysis can be simplified further
  
  
[^3]: One set of such difficult cases where annotating the citation form of a sign-language verb is insufficient involves the so-called *agreeing* verbs [see @Pfau:2018 for a recent minimalist analysis], also sometimes dubbed *indicating* verbs [@Schembri:2018], where one or more of a sign's parameters can change depending on the presence of agreement targets in the sentence.
