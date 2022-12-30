#!/bin/bash
#El propio script delimita donde va a buscar los archivos con esas propiedades.
#En otras palabras, si tu script está en tu Home, buscará recursivamente desde allí hacia abajo.
clear
ls -lR $PWD/* | grep  .......rwx >> archivos_peligrosos.txt

