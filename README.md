# 2024-25.IT.3D-INF_TPSI-media

## ffmpeg
Software CLI che permette la manipolazione di audio e video

https://www.ffmpeg.org/

### Visualizzare versioni ed opzioni di default

`ffmpeg -version`

### Visualizzare i codec attivi

Cosa e' un codec?

> Un codec (da codificatore/decodificatore) è un software o un dispositivo che si occupa della codifica e/o decodifica digitale informatica di un segnale (tipicamente audio o video) perché possa essere salvato su un supporto di memorizzazione o aperto per la sua riproduzione.
https://it.wikipedia.org/wiki/Codec

`ffmpeg -encoders`

Tutte le opzioni sono descritte nel file README.ffmpeg.txt

### Ottenere informazioni su un video

Si svolge tramite `ffprobe` un comando che viene sempre installato assieme ad `ffmpeg`

`ffprobe video-da-yt.mp4`

### Estrarre audio da un video

`ffmpeg -i video-da-yt.mp4 -vn -acodec copy video-da-yt-only-audio.aac`

## Estrarre un frame da un video

`ffmpeg -ss 00:00:05 -i video-da-yt.mp4 -frames:v 5 'frames-%02d.png'`

## Visualizzare lo spettrogramma di un file audio

> A spectrogram is a visual representation of the spectrum of frequencies of a signal as it varies with time. When applied to an audio signal, spectrograms are sometimes called sonographs, voiceprints, or voicegrams. When the data are represented in a 3D plot they may be called waterfall displays.
https://en.wikipedia.org/wiki/Spectrogram

Tramite l'estensione VSCode gia' installata in questo codespace (https://marketplace.visualstudio.com/items?itemName=sukumo28.wav-preview) e' possibile visualizzare lo spettrogramma (frequenze) e la forma d'onda (volume) dei file audio.

## Scaricare un video da YT

__NB: in base alla licenza del video potrebbe esserne vietato il download__

Si puo' utilizzare yt-dlp, tutte le opzioni sono descritte nel file README.yt-dlp.txt

`yt-dlp -o video-da-yt.mp4 'https://www.youtube.com/watch?v=A7wA2do8AH8'`

### Utilizzare i cookie del nostro account YT

Puo' succedere che YT blocchi il nostro IP quando usiamo yt-dlp.

Per ovviare a cio' dobbiamo

- effettuare login su YouTube
- aggiungere estensione Chrome che ci permette di esportare i nostri cookies (https://chromewebstore.google.com/detail/get-cookiestxt-locally/cclelndahbckbenkjhflpdbgdldlbecc)
- [esportare i cookies](how-to-export-cookies.png)
- caricare il file txt dei cookie su GitHub Codespace
- usare la variante del comando yt-dl `yt-dlp --cookies www.youtube.com_cookies.txt -o video-da-yt.mp4 'https://www.youtube.com/watch?v=A7wA2do8AH8'`

__NB: non condividere o disperdere assolutamente il file dei cookie, e' come condividere/disperdere la propria password!__

