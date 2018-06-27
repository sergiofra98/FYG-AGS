# ORIGMETODOLOGIA

Este proyecto fue hecho utilizando angular 6.0.3 y typescript, este es un framework de desarrollo de páginas web, más info en `https://angular.io/`

# Instalación de Angular CLI

Para instalar angular CLI y poder editar el proyecto

1) Descargar e instalar NodeJS versión mínima de 10.1
2) Una vez instalado NodeJS, se debe instalar angular utilizando el comando `npm install -g @angular/cli`. Este proceso tardará unos minutos
3) Cuando termine de instalar Angular, se debe descargar los prerrequisitos del proyecto. para esto, se debe abrir una ventana de consola en la 
   ubicación del proyecto, en este caso `.\FYG-AGS\` y correr el comando `npm install`. Este comando tardará unos minutos.

## Pruebas

Ya instalado todo lo necesario, se debe correr el compilador de tiempo real utilizando el comando `ng serve` y navegando a `http://localhost:4200/`
en el explorador. Este se actualizará automáticamente al detectar cambios en los archivos fuente.

## Compilación

El proyecto proveído es simplemente los archivos fuente y debe ser compilado para distribución y liberación.

El comando para compilar el proyecto de forma correcta es `ng build --prod --base-href /FYG-AGS/ --build-optimizer`

Los archivos se guardarán en la carpeta `dist` dentro de la raíz del proyecto

¡¡¡ATENCIÓN!!! 
    Estos archivos compilados deberan estar en un servidor virtual, sea `tomcat` o `XAMPP`´
    No servirán si se abren directamente en un explorador

## Notas Extras
