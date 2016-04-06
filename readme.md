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
	* Right click there again and choose `Save Image As...`. Create a Folder named with the PPN of the work (eg. `426110269`) (Important: Do this one just once while saving the first page of a work), a folder inside that named with the page number (eg. `0064`). Inside the page number folder create another folder also named with the page number. Inside that folder, save the jpg. The hierarchy should look like the following example:

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
	* Repeat those steps for all the other selected pages. Example:
	```
	./426110269             
		└── 0064          
		|	└── 0064
		|		└── 426110269_0064.jpg
		|		└── 426110269_0064.hocr
		└── 0073          
		|	└── 0073
		|		└── 426110269_0073.jpg
		|		└── 426110269_0073.hocr
		└── 0102          
		|	└── 0102
		|		└── 426110269_0102.jpg
		|		└── 426110269_0102.hocr		
		└── 0133          
		|	└── 0133
		|		└── 426110269_0133.jpg
		|		└── 426110269_0133.hocr	
		└── 0140          
			└── 0140
				└── 426110269_0140.jpg
				└── 426110269_0140.hocr	
	```
## 3 Extract the lines and create the Correction.html document to write down the lines manually
* First you have to make minimal changes inside the `.hocr` file so that the `hocr-extract-images` program can access it. 
	* Open it in an editor. Inside the first div is a reference to the jpg looking like following example:
		`<div class="ocr_page" id="page_1" title="image &quot;max/417576986_0064.jpg&quot;; bbox 0 0 1304 2208; ppageno 0">` 
	* Replace `image` with `file` and remove the quotation marks respectively the `&quot;` phrases as well as the `max/`. The line should then look like the following:
		`<div class="ocr_page" id="page_1" title="file 417576986_0064.jpg; bbox 0 0 1304 2208; ppageno 0">` 
	* Save and close the file.
* Extract the single lines of the page as png-images
	* copy-paste the `hocr-extract-images` file into the current folder. Right-click inside the folder and choose `Open Terminal Here` or cd to the folder in the terminal.
	* type `.\hocr-extract-images FILENAME.hocr`. Example: `.\hocr-extract-images 426110269_0064.hocr`
* Next, you can create the Corrections.html. For this step I created a shell command alias to simplify the required tasks.
	* Open the .zsh folder inside your home folder. Open the aliases.txt
	* add the following line:
		`alias corr="ocropus-gtedit html -x xxx */line*.png -o Correction.html; firefox Correction.html; geany specials.md"`
		The last command `geany specials.md` is optional, as it opens a new md file in the editor (geany) to write down special occurrences.
	* Save and close the file.
* CD up to the first page folder and type `corr`. The Correction.html will be automatically created and opened in the firefox browser. As already mentioned, `geany specials.md` is optional.

