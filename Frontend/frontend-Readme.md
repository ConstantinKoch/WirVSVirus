# Frontend Dokumentation

Die Webapplikation gibt eine Übersicht über die von Non-Profit-Organisationen oder Privatpersonen angebotenen Aufgaben.
Außerdem erhält man hier eine schnelle Übersicht, wie viel jeweils an eine gemeinnützige Organisation gespendet wird.
Über die Map können die Nutzer direkt auf ihren Heimatort zoomen, um Angebote in ihrer Umgebung ausfindig zu machen.
Des Weiteren können sich sowohl Hilfesuchende als auch Hilfegebende registrieren, um die Sicherheit der Auftraggeber und -nehmer zu gewährleisten.

## Getting Started

Diese Anleitung beschreibt den Aufbau des Frontend-Bereichs der Webapplikation.
Hier wird die Struktur erklärt und wie die verschiedenen Teile miteinander interagieren.
Somit soll ein leichter Einstieg für neue Entwickler in dieses Projekt ermöglicht werden.

### Vorraussetzungen

Kenntnisse in HTML5, CSS, JavaScript, AngularJS, MDL, MDC (Leaflet, mapbox)


### Struktur/Aufbau

Die App ist mit dem Model-View-Controller-Modell von AngularJS aufgebaut und besteht aus Templates, die beim ersten Seitenaufruf geladen und während der Nutzung dynamisch ausgetauscht werden.
Über die Controller werden die Interaktionen des Nutzers mit der Webapplikation bearbeitet und über JavaScript ausgeführt.
Die Stylesheets (CSS) beinhalten hierbei den Style der html-Elemente und verbessern dadurch die UX.

Im Folgenden werden wichtige Bereiche beschrieben, um die App-Struktur klarzustellen.

#### app.js

Über einen RouteProvider von AngularJS werden die einzelnen Templates dynamisch eingebunden.

#### templates

Hier befinden sich die einzelnen Templates, die dynamisch in die Applikation eingebunden werden sollen.
Jedem Template wird hierbei ein Controller zugewiesen.
Außerdem werden diese über separate Stylesheets angepasst.

#### controller

Hier werden die Controller abgelegt zur Steuerung der Nutzer-Interaktionen.

#### stylesheets

Hier werden die css Files abgelegt. Diese beinhalten den Style zu den einzelnen Templates.

## Authors

* **Christian Schreier**
