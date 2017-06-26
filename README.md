## speleoWebGIS
A complete system for managing and distributing speleometric catastal data.
The front-end is an Angular 4 application leveraging OpenLayers.
Backend is made with the LoopBack 3.0 API framework and Node.js, Geoserver, and PostGis Postgresql spatial extension.
Data model is based and derived from the needs of the SSI, the italian speleological society.

## Integrations
Geoserver Auth via authkey Key Authentication community module, Geoserver points to http://0.0.0.0:3000/api/people/me?access_token={key}
