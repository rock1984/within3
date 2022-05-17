# Installing

## Installing the App
Just run `yarn` !  
Proceed with the database configuration.

## Creating Postgres DB using Docker
With docker installed,
1. Verify if the port 5432 is free (kill the process or choose another port)
2. Run the following command to create a Postgres DB image in docker (within3 as database name):  
`docker run --name within3 -e POSTGRES_PASSWORD=root -e POSTGRES_DB=within3 -p 5432:5432 -d postgres`
3. To populate the database, choose one of the options:   
3.1 Run the following command to import the postgres dump (changing the path):   
`docker exec -i within3 /bin/bash -c "PGPASSWORD=root psql --username postgres within3" < /path/to/project/dump.sql`   
3.2 Or run the migrations with the following command:  
`yarn typeorm migration:run`

## Configuring Database in the App
Open `ormconfig.json` and change the port, database name or host if necessary.


---
# Running
Run:  
`yarn run dev`
  
  
---
# Automated tests
Run:  
`yarn test`
  
  
---
# Testing
Use Apollo Studio (https://studio.apollographql.com/sandbox/explorer) or some tool to do a GraphQL Query with the following:
```
query {
  zipCode(zipCode: 20601) {
    zipCode,
    county {
      name
    }
    city {
      name
    }
  }
}
```
Try with '20605' zipcode to receive a 404 not found response.  
Other valid zipcodes are in `src/database/data/Zip_Code_Lookup_Table.csv`
  

---
# Ideas / Improvements

- Add unit tests and not only e2e.
- Create relationship between Cities and Counties.
- Zipcode validation?
- Docker for the App
