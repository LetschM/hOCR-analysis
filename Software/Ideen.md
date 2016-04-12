# Ideen zur Optimierung der hOCR-Software

## Special-Buttons

* Buttons für wiederkehrende Spezialfälle für einzelne Lines

	* Falsch erfasster Bildausschnitt
	* Zeile abgeschnitten / nicht vollständig erfasst
	* ...

## Legende für aufzulösende und zu übernehmende Spezialzeichen (z.B. Ligaturen, Kreuze etc.)

* Zeichen mit UTF8-Code (`strg+shift+u+XXXX`)

* Angabe, ob so übernehmen (Haken?) oder nicht (Kreuz?) 

	* z.B. Vokale Ligaturen übernehmen (æ etc.)
	* Konsonantische Ligaturen ausschreiben (ct)
	* "que" (q3) ausschreiben etc.

* Beispiele

	* Kürzungsstrich (U+0303)
	* Kreuz (U+2020)
	* Diakritika

		* Trema

			* e (U+00EB)
			* u (U+00FC)
			* i (U+00EF)

		* Ogonek
		* Hatschek
		* etc.

	* Ligatur

		* oe (U+0153)
		* ae (`alt gr`+a)
		* AE (U+00C6)
