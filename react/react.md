# React

-[Create a React Application Walkthrough](https://github.com/learn-academy-2022-charlie/Syllabus/blob/main/react/create-react-app.md)

- JavaScript library for building user interfaces
    - Library: Collection of code snippets
- React is used to build webpages, mobile web pages, and even native mobile applications. It is component based, which means that we use it to build many small parts, and then join them together to form entire applications. This turns out to be extremely scalable. It was created from Facebook as that application grew and became more dynamic.

- Developer's goals in creating React:
    1. Reusable code
    2. Handle user interactions quickly and efficiently without reloading the page

- Everything in react is a component
    - Analogous to functions in that they share characteristics and can be used in a similar way
- Components return something in the same way that a function returns something
- Everything visibile on the page is made up of `Logic` and `Display` components
    - Logic: Also known as `Smart Components` hold all logic
    - Display: Hold all `User Interface` elements
- In React, the component renders only ONE JSX element`render()` 

## What is State?

- The state is a built-in React object that is used to contain data or information about the component. A component’s state can change over time; whenever it changes, the component re-renders. The change in state can happen as a response to user action or system-generated events and these changes determine the behavior of the component and how it will render.
- setState is a built in method that allows us to change the state of a component
- **To change the value of state we use a JavaScript method called setState(). You should never manipulate state directly. The React DOM will re-render every time you call this.setState and update the component.**
- If a component is holding data in a state object it is referred to as a logic component. Other, interchangeable names for a logic component are a smart component or an impure component. If a component does not hold state it is considered a display component. Other terms for display components are dumb components or pure components. It is important to make the distinction as we want to streamline the data flow in our apps and be able to fix any issues quickly.

## Props

- Props (properties) is a keyword in React for passing information from one component to another
- Props are only passed in one direction, from parent to child
- Where nested components gave us the ability to build modular interfaces and state gave us a means of tracking and updating data within components, props give us the ability to communicate by passing data and methods between components. Specifically, it gives us the ability to pass data down to nested components.

## JSX
- JavaScript and HTML combined
- Uses the keyword `className` instead of `class` for the same purposes


## Efficiency
- REACTing to user view
- DOM (Document Object Model): Visual representation of the code
    - HTML elements/tags are called nodes when talking about the DOM
- VDOM (Virtural DOM): Listens for changes, isolates node, and reconciles the diff
- Use JavaScript to make DOM interactive with realtime changes that everyone can see

## Create React APP

- `yarn create react-app application-name`
- A terminal command that creates a lot of folders that initializes a React Application
- DO NOT CROSS STREAMS
    - Different hierarchys will corrupt the code base
- `yarn start` to use localhost server

### Public Folder 

- ONLY CHANGE: favicon and title of index html

### App.js

- function App() is a react component
- Is being exported and used in index.js where it is being rendered
    - targets the DOM 


- Basic React App Component
```jsx
import React, { Component } from 'react'

class App extends Component{
  render(){
    return(
      <>
        <h1>Hello</h1>
      </>
    )
  }
}

export default App
```

### Logical Component

```jsx

import React, { Component } from 'react'

class Counter extends Component {

  // NEED FOR STATE
  constructor(props){
    super(props)
    this.state = {
      count: 0
    }
  }

  handleChange = () => {
    // Create a variable to contain number
    let newCount = this.state.count + 1

    // Change state to this new number
    this.setState({count: newCount})
  }

  render(){
  let {count} = this.state

    return(
      <div>
      // NEED FOR STATE
        <h2>Counter: { count }</h2>
        // WILL CHANGE STATE
        // Event Listener 'onClick'
        <button onClick={this.handleChange}>
          Press Me!
        </button>
      </div>
    )
  }
}

export default Counter
```

## Styling Components

- inline styling
- `import './file.css'`


- objects collection of key value pairs
- keys customly named and values can be any data type or functions


## Inputs & Events

```jsx

class App extends Component{
  constructor(props){
    super(props)
    this.state = {
      userInput: ""
    }
  }

  handleChange = (e) => {
    console.log(e.target.value)
    this.setState({userInput: e.target.value})
  }

  render(){
    return(
      <>
        <input
          type="text"
          value={this.state.userInput}
          onChange={this.handleChange}
        />
        <p>{this.state.userInput}</p>
      </>
    )
  }
}
export default App

```


## Functional Props

```jsx
someFunction = (item) => {
  alert(item)
}

<OtherComponent someFunction={this.props.someFunction} />

// In OtherComponent
// WRONG EXAMPLE:
// <button onClick={this.props.someFunction(item)}></button>
// RIGHT EXMAPLE:
<button onClick={() => {this.props.someFunction(item)}}></button>
```

## Conditional Rendering

```jsx
constructor(props){
  super()
  this.state = {
    form: null
  }
}

// Waits for form to have some sort of value
 { this.state.form &&
            <div>
              <p>Pet name: { this.state.form.petName }</p>
              <p>Type of pet: { this.state.form.petType}</p>
              <p>Pet age: { this.state.form.petAge }</p>
            </div>
          }
```

## Component Did Mount
```jsx
compoentDidMount() {

}
- Executes during startup
```