# REST API starter

This application is the start point for Sprint 1 of the Lloyds Bank Group Modern Engineering Bootcamp Project Specification.

## Installation

To initialise the project you will need to install several dependencies, open up a git bash terminal from the repo directory and run the command:

~~~ bash
$ npm install
~~~

## Running the application

In order to run the application, from your git bash terminal run:

~~~ bash
$ npm start
API Listening on http://localhost:8080
~~~

## Stopping the application

In order to stop the application from the git bash terminal that is running the server press ``CTRL`` + ``C``

## Running on a different port

To start the application on an alternative port to the default (8080) from your git bash terminal run:

~~~ bash
$ PORT=9090 npm start
API Listening on http://localhost:9090
~~~

## Functionality

### Through the browser

In order to interact with this application through a browser navigate to http://localhost:8080/ or change the port number to the alternative that you have used.

There is a full CRUD functionality through the buttons on the web page.

### CREATE

To create the example product run the command:

~~~ bash
$ curl -s -X POST http://localhost:8080/create -H 'Content-type:application/json' -d '{"name":"example product", "description":"this is an example", "price":9.99}'
~~~

### READ (all)

To read all of the products run the command:

~~~ bash
$ curl -s -X GET http://localhost:8080/read
~~~

### READ (one)

To read one of the products run the command:

~~~ bash
$ curl -s -X GET http://localhost:8080/read/<id>
~~~

n.b: For these commands anything surrounded by angled braces <> needs to be replaced by you

### UPDATE

To update one of the products run the command:

~~~ bash
$ curl -s -X PUT http://localhost:8080/update/<id> -H 'Content-type:application/json'  -d '{"name":"updated product", "description":"its brand new", "price":99.99}'
~~~

n.b: For these commands anything surrounded by angled braces <> needs to be replaced by you

### DELETE

To delete one of the products run the command:

~~~ bash
$ curl -s -X DELETE http://localhost:8080/delete/<id>
~~~

n.b: For these commands anything surrounded by angled braces <> needs to be replaced by you

---

## Testing

To run tests on this project, use the command

~~~ bash
$ npm test
~~~

### Example tests

#### Unit

There is a unit test included in this project, we are testing the item builder for the objects that it returns.

If we test the builder and input a name of "item", a description of "test description", a price of 99 and a id of 4... We can expect an object to be created that matches this format.

~~~ JavaScript
{
    name : "item",
    description : "test description",
    price : 99,
    _id : 4
}
~~~

#### Integration

AN example integration test that we can create for this project is to test the RESTful endpoints.

If we test the DELETE endpoint by sending a request with a method of 'DELETE' and a path of '/delete/1' we should expect the reponse to be:

Status code: 200 
Status Text: OK

#### System Testing

For system integration testing, we could test our CREATE method for our project, and check that the output from our READ method is expected.

Alternatively we could 'black-box' system test by using the front-end to create an item and reading the page to make sure the new item has been created.

#### User Acceptance Testing

*As a* user
*When* I enter a item id into the delete field and press the delete button
*I want* the item to be deleted

*GIVEN* a user can acces the front-end of the application
*WHEN* they input an id into the delete item input
*AND* an item with that id exists
*AND* they press the delete item button
*THEN* that item is deleted from the database