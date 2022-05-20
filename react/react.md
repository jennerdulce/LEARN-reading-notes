# React

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

## JSX
- JavaScript and HTML combined
- Uses the keyword `className` instead of `class` for the same purposes


## Efficiency
- REACTing to user view
- DOM (Document Object Model): Visual representation of the code
    - HTML elements/tags are called nodes when talking about the DOM
- VDOM (Virtural DOM): Listens for changes, isolates node, and reconciles the diff
- Use JavaScript to make DOM interactive with realtime changes that everyone can see