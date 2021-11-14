# stroff
I'd just like to interject for a moment.
What you're referring to as stroff, is in fact, st-roff, or as I've recently taken to calling it, stroff ([/ɛs:ti:rɔff/](https://en.wikipedia.org/wiki/Help:IPA/English) s-t-roff).  
Roff is not a complete typesetting system unto itself, but rather another free component of a fully functioning ST system made useful by the ST macros, preprocessors and vital components comprising a full typesetting system as defined by POSIX.

This repository is to keep all my groff files as reference for myself and whomever might want to start using groff.

To compile the documents use:
```sh
pic <document-name>.ms | groff -m ms -Kutf8 -Tpdf > <output-name>.pdf
```
This command preprocess the graphs with ```pic``` and then compiles the document to pdf, using the ```ms``` macro. Then I use the option -K to specify the encoding, because without this option some spanish characters wouldn't render correctly.