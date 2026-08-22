# cs2-audio-classifier

Herzlich willkommen zu meinem Projekt aus den Sommersemesterferien 26!


Dieses Projekt analysiert und klassifiziert Schussgeräusche aus dem Spiel *Counter-Strike 2* mittels digitaler Signalverarbeitung in MATLAB.

> Disclaimer: Dieses Projekt dient ausschließlich zu Bildungs- und Forschungszwecken im Rahmen der digitalen Signalverarbeitung und Mustererkennung. Alle analysierten Audiodaten stammen aus dem Videospiel Counter-Strike 2 und stehen in keinerlei Zusammenhang mit realer Waffentechnik oder Rüstungsforschung.

**Reicht die Fast Fourier Transformation (FFT) aus, um Waffensounds in CS2 treffsicher zu unterscheiden?**
Das finden wir nun heraus! :)

Das Projekt teilt sich in zwei Schritte auf:
1. **Audio-Analyse:** Untersuchung der Schussgeräusche im Zeit- und Frequenzbereich (FFT).
2. **Klassifikation:** Automatisierte Erkennung unbekannter Schüsse anhand der extrahierten Merkmale (kommt noch).

## Teil 1: Audio-Analyse (Zeit- & Frequenzbereich)
**Zeitbereich x(t)**: Zeigt den Schalldruckverlauf über die Zeitachse. Hier sieht man, wie hart der Schuss einschlägt und wie lange der Schall im Raum nachhallt.

**Frequenzbereich mit FFT**: Zerlegt den Sound in Bestandteile von Bass (0 Hz) bis zu den Höhen (4000 Hz). Die Peaks im Plot markieren die dominanten Töne der Waffe.

- *AK-47* (Peak = 127 Hz): Der ungedämpfte Schuss startet mit einer hoher Anfangsamplitude und verteilt seine Energie breit über den Bereich bis 1000 Hz. Die kleinen Anstiege im mittleren Bereich (2000 - 3000 Hz) tragen dazu bei, dass die Waffe einen aggresiven metallisch scheppernden Sound hat.
- *M4A1-S* (Peak = 76 Hz): Auffälig ist bei diesem Sturmgewehr die extrem kurze Signaldauer. Im Zeitbereich ist nach knapp 0,3s das Signal abgeklungen
  ![](plots/audio_analyser/Figure_1_ak47_m4a1s.png)
