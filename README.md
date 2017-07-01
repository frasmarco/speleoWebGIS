## speleoWebGIS
A complete system for managing and distributing speleometric catastal data.
The front-end is an Angular 4 application leveraging OpenLayers.
Backend is made with the LoopBack 3.0 API framework and Node.js, Geoserver, and PostGis Postgresql spatial extension.
Data model is based and derived from the needs of the SSI, the italian speleological society.
### Integrations
1. Geoserver Authentication - SSO with Angular/Loopback made possible by using the community module ["Key authentication module"](http://docs.geoserver.org/stable/en/user/community/authkey/index.html). Geoserver points to [/api/people/me?access_token={key}]().
1. The Angular application is compiled to static HTML (AOT) served by Apache. It has been configured to use Loopback for every server side stuff, ( [/api]() ). Deployed in /web to avoid conflicts.
1. OpenLayers module is custom made, no npm because none is sufficiently mature (as 30 Jun 2017)
1. Loopback 3.0 models are exported to Angular ones by [mean-expert-official/loopback-sdk-builder
](https://github.com/mean-expert-official/loopback-sdk-builder). Build them with `npm run build:sdk`. Loopback package.json snippet:
`"build:sdk": "./node_modules/.bin/lb-sdk server/server ../seed-project/shared/sdk -d ng2web -i disabled"`.
1. Authentication/authorization leverages the standard Loopback acl system, 'Person' model extends the built in 'User' and features OAuth to Google, Facebook and LinkedIn.
### Projects on GitHub
* This is the main project, [speleoWebGis](https://github.com/frasmarco/speleoWebGIS). It contains docs and general Linux config files and configuration commands.
* [apiServer](https://github.com/frasmarco/apiServer) is the backend Loopback application.
* [webGui](https://github.com/frasmarco/webGui) is the Angular web front end.

