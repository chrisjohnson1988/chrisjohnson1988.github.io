---
title:  applications
layout: fullscreen
---
# Applications

## CEH Catalogue

Working within the Application Development team, I designed a [catalogue][CEH Catalogue] application which uses a Git repository to persist Metadata records. The use of git repository means that the Metadata records:

- Can conform to any schema 
- Be adjusted with tools developers are familiar with
- Have a solid audit of changes

I was also responsible for the creation of the search interface. A key requirement was that the application could support spatial searching of the catalogue. Usability was a key concern for me, that is why I designed the search interface to be as uncluttered as possible. 

[![CEH Catalogue](images/screenshots/ceh-catalogue.png)][CEH Catalogue]

## National Biodiversity Network - Interactive Map Tools

I was responsible for the development of the [NBN Gateway](http://data.nbn.org.uk) mapping capability. As part of this, I designed and developed an [application][NBN IMT] which allows end users to visualise the Biodiversity records held within the gateway.

In order to ensure that the Interactive Mapping Tool could generate images without overwelming the SQL database source, I designed [dynamo mapping][dynamo]. A library which supports the generation of Atlas Grade Grid Maps, and controls a double-buffered cache of spatial data.

[![NBN Gateway Interactive Mapper](images/screenshots/nbn-gateway.png)][NBN IMT]

[NBN IMT]: https://data.nbn.org.uk/imt "National Biodiversity Network"
[dynamo]: https://github.com/NERC-CEH/dynamo-mapping "Dynamo Mapping Repository"
[CEH Catalogue]: https://catalogue.ceh.ac.uk "CEH Metadata Catalogue"