# hOCR Analysis - How To

## 1 Preparation

Requires
* Linux
* Firefox
* hocr-tools
* OCRopus

### 1.1 Install hocr-tools

* The hocr-tools are available on 
![Github](https://github.com/tmbdev/hocr-tools)
* Basically, you only need `hocr-extract-images`

### 1.2 Install OCRopus

## 2 Acquire works for processing

### 2.1 Look for already scanned works in the complete list

* Look up scanned works in the `ancien_droid_titel_liste_sc_letsch.xlsx` document. The works have to be already subjected to the OCR. If they aren't yet, consult Stefan Weil.

### 2.2 Save the images and hocr-files of representative pages out of a work

* Copy the PPN of a scanned work out of the xlsx and paste it into the search bar in ![http://digi.bib.uni-mannheim.de/](http://digi.bib.uni-mannheim.de/). Hit Enter.
* Open the Work and click on `Page Previews (Seitenvorschau)`.
* Choose 5-6 Pages representing the whole work (best both odd and even page numbers). For each of the selected pages, take the following steps:
	* Click on the corresponding pages in the preview to get to the `Page View`
	* Right click on the image in the `Page View (Seitenansicht)` an choose `View Image`.
	* Right click there again and choose `Save Image As...`. Create a Folder named with the PPN of the work (eg. `426110269`), a folder inside that named with the page number (eg. `0064`). Inside the page number folder create a similar folder also named with the page number. Save the jpg inside here. The hierarchy should look like the following example:

	```
	./426110269             
		└── 0064          
			└── 0064
				└── 426110269_0064.jpg
	```
	* The url of the jpg image looks like the following: `http://digi.bib.uni-mannheim.de/fileadmin/digi/426110269/max/426110269_0064.jpg`
	* To get to the hOCR-file, change the `\max\` to `\hocr\` and the `.jpg` to `.hocr`. So you get a URL like this: `http://digi.bib.uni-mannheim.de/fileadmin/digi/426110269/hocr/426110269_0064.hocr`
	* Right click on the hocr and save it inside the second page folder, the same in which you saved the jpg.

	```
	./426110269             
		└── 0064          
			└── 0064
				└── 426110269_0064.jpg
				└── 426110269_0064.hocr
	```
