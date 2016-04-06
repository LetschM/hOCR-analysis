# hOCR Analysis - How To
## Preparation

Requires
* Linux
* Firefox
* hocr-tools
* OCRopus

### 1 Install hocr-tools
* The hocr-tools are available on 
![Github](https://github.com/tmbdev/hocr-tools)
* Basically, you only need `hocr-extract-images`

### 2 Install OCRopus

## Acquire works for processing

* Look up scanned works in the `ancien_droid_titel_liste_sc_letsch.xlsx` document. The works have to be already subjected to the OCR. If they aren't yet, consult Stefan Weil.
* Copy the PPN of a scanned work out of the xlsx and paste it into the search bar in ![http://digi.bib.uni-mannheim.de/](http://digi.bib.uni-mannheim.de/). Hit Enter.
* Open the Work and click on `Page Previews (Seitenvorschau)`.
* Choose 5-6 Pages representing the whole work (best both odd and even page numbers. 
* Click on the corresponding pages in the preview to get to the `page View`
* Right click on the image in the `Page View (Seitenansicht)` an choose `View Image`.
* Right click there again and choose `Save Image As...`. Create a Folder named with the PPN of the work (eg. `426110269`), a folder inside that named with the page number (eg. `0064`). Inside the page number folder create a similar folder also named with the page number. Save the jpg inside here.
./426110269             
└── 0064          
	└── 0064
		└── 426110269_0064.jpg
