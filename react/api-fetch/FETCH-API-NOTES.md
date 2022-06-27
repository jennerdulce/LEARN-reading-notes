# API FETCH NOTES

- Application Program Interface (API)
    - Acts as a Database and Provides Information
    - API does not have a view
- User Interface (UI)
    - Allows user's to interact with some kind of program

## Fetch API

- Fetch is asynchronous and creates a queue of objects that will resolve into other objects
- Allows web browser to make requests to web network
- Initiate our request in order to receive a response
- The Request Object
- THe Response Object

## Promises

- Promise is a JavaScript Object
- Promises *AWAIT* for something
- Fetch immediately gives us an object called a promimse
- Promimses will either return:
    - Paylod of data (json, HTML, JSX)
    - An nerror
- Promises always start in a state called pending
- Promise resolve into states
    - Successful (Fulfilled)
    - Error (Rejected)

### Promises States

- Pending
- Fulfilled
- Rejected


```javascript
  getIp = () => {
    fetch("https://ipapi.co/json/")
    .then( response => response.json()) // Response is parsed into JSON
    .then( payload => this.setState({ ipAddress: payload.ip })) // Using another .then() on the parsed Response
    .catch(error => console.log(error))
  }
```