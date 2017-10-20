## speleoWebGIS
A complete system for managing and distributing speleometric catastal data.
The front-end is an Angular 4 application leveraging OpenLayers.
Backend is made with postGraphQL framework and Node.js, Geoserver, and PostGis Postgresql spatial extension.
Data model is based and derived from the needs of the SSI, the italian speleological society.
### Integrations
1. Geoserver Authentication - SSO with Angular/Loopback made possible by using the community module ["Key authentication module"](http://docs.geoserver.org/stable/en/user/community/authkey/index.html). Geoserver points to [TBD]().
1. The Angular application is compiled to static HTML (AOT) served by Apache. It has been configured to use postGraphQL for every server side stuff, ( [/graphql]() ). Deployed in /web to avoid conflicts.
1. OpenLayers module is custom made, no npm because none is sufficiently mature (as 30 Jun 2017)
1. Integration beetween Angular and graphql uses [apollo-client](http://dev.apollodata.com/angular2/).
1. Authentication/authorization leverages [passport](http://passportjs.org/).
1. Postgres full backup: pg_basebackup -D "/tmp/$(date +%Y%m%d-%H%M%z)" -R -X stream
### Projects on GitHub
* This is the main project, [speleoWebGis](https://github.com/frasmarco/speleoWebGIS). It contains docs and general Linux config files and configuration commands.
* [apiServer](https://github.com/frasmarco/apiServer) is the backend Node.js application.
* [webGui](https://github.com/frasmarco/webGui) is the Angular web front end.

