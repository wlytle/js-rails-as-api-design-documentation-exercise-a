# API Design Exercise - A

## Part I - Backend API Documentation

In this repository there is a Rails app. Your job is to explore that app (read and run the code) and write documentation for one of the resources. You should write your documentation in a markdown file.

Document the search action of the DogController. You should include information on:

- how to access the resource
- how to pass the search text
- how to change the ordering

Once you've finished writing the documentation, send the markdown file to your partner.

## Part II - Build a Frontend Feature

Your partner will send you a markdown file documenting an API. Using that documentation, add the following feature to your frontend app.

Build a coffee search page. It should

- When the page loads, display a list of the first 5 coffees
- When the user types an origin into the origin input, show the first 5 coffees whose origin matches
- When displaying coffees, only show 5 results at a time
- When the user clicks the 'Next' button, show the next 5 results
