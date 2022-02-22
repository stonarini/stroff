# stroff
I'd just like to interject for a moment.
What you're referring to as stroff, is in fact, st-roff, or as I've recently taken to calling it, stroff ([/ɛs:ti:rɔff/](https://en.wikipedia.org/wiki/Help:IPA/English) s-t-roff).  
Roff is not a complete typesetting system unto itself, but rather another free component of a fully functioning ST system made useful by the ST macros, preprocessors and vital components comprising a full typesetting system as defined by POSIX.

This repository is to keep all my groff files as reference for myself and whomever might want to start using groff.

To compile the metodologias_de_desarrollo.ms document use:  
```sh
pic metodologias_de_desarrollo.ms | groff -m ms -Kutf8 -Tpdf > <output-name>.pdf
```
This command preprocess the graphs with ```pic``` and then compiles the document to pdf, using the ```ms``` macro. Then I use the option -K to specify the encoding, because without this option some spanish characters wouldn't render correctly.

To compile the curriculum.ms document with the .pdf photo use:  
```sh
groff -m mspdf -U -Kutf8 -Tpdf curriculum.ms > <output-name>.pdf
```
To add links and photos to a pdf we need to use the mspdf macro, that is a expanded version of ms with utilities for pdfs.  
One of this utilities is ```.pdfhref```, that lets us add links to the pdf. Another is PDFPIC, that is like PSPIC but for pdfs; To use PDFPIC we need to use the -U option.  
