# Jest

- Automated testing, ccreated by facebook to test React applications

- `yarn`: Yet Another Resource Negotiator - a package manager for your code

- Three things to consider:
    1. Input
    2. Result received
    3. Expected output

## Test Driven Development
- Breaking the code into a series of tests helps us break the big problem down into much smaller ones, and smaller problems are easier to solve, so we write dramatically better code because of it.

## How to use Jest

### Naming Convention

- `filename.test.js`
- The filename will typically match the original filename

### YARN

- `yarn add jest`
    - Will add a BUNCH of dependencies into the directory that you are in wrapped in a `yarn.lock` file
    - Will create a `package.json` file

### Example

- `describe()` - Jest uses a method called **describe()** that runs other nested methods.
  - Here we provide an argument of a string, with the name of our function, or the name of this particular test.
- `test()` or `it()` - **test()** or **it()** are methods nested within the describe's code block.
  - Here we provide an argument of string, which is a statement that explains in **regular words** what the test is doing.
- `expect()` - **expect()** is a method that is nested within the test's code block. It calls the function being tested, passes any test-case arguments.
  - Here we follow it with a **matcher** ( Example: **.toEqual()** or **.toBe()** ) that compares the output.
    - Learn more about [Jest Matchers](https://jestjs.io/docs/en/using-matchers)
    
```javascript
// a describe method that lists the name of the function OR naming of the particular test.
describe("hello", () => {

  // a test/it method, nested within the describe block, that in plain words, describes that the function does.
  it("returns a string that says hi", () => {

    //an expect method, nested within the test block, calling on the hello() function, followed by the .toEqual() matcher that checks the expected output of the function return.
    expect(hello()).toEqual("hi")
  })
})
```

### How to Export / Import a function

#### Export

```javascript
'use strict';

const reverse = (list) => {
  let start = 0;
  let end = list.length - 1;
  while (start <= end ) {
    let temp = list[start];
    list[start] = list[end];
    list[end] = temp;
    start++;
    end--;
  }
};

// Exports the variable you choose
module.exports = reverse;
```

#### Import

```javascript
'use strict';

// Syntax for importing a functio to a different file
// This is typical when testing
const reverse = require('../array-reverse.js');

describe('Array Rerverse', () => {

  it('should reverse the array', () => {
    let myArray = [1,2,3,4,5];
    let expected = [5,4,3,2,1];
    reverse(myArray);
    expect(myArray).toEqual(expected);
  });

});
```

### Running your Test

- `yarn jest`

## Summary
- open your directory
- `yarn add jest`
- `touch filename.test.js`
```javascript
describe('Test Suite (Collection of tests)', () => {
  it('Name of the test', () => {
    expect(myArray).toEqual(expected);
  });
});
```
- `yarn jest`

## References

- [Jest Overview](https://github.com/learn-academy-2022-charlie/Syllabus/blob/main/javascript/jest.md)
- [Jest Matchers](https://jestjs.io/docs/en/using-matchers)