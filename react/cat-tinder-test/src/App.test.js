// Imports React into our test file.
import React from 'react'

// Imports Enzyme testing and deconstructs Shallow into our test file.
import Enzyme, { shallow } from 'enzyme'

// Imports Adapter utilizing the latest react version into our test file so we can run a testing render on any component we may need.
import Adapter from 'enzyme-adapter-react-16'

// Imports in the component we are going to be testing.
import App from './App.js'
import Home from './pages/Home.js'

//Allows us to utilize the adapter we import in earlier, allowing us to call and render a component.
Enzyme.configure({adapter: new Adapter()})

// TERMINAL CMD: yarn test
describe("When App.js renders to the user", () => {
  // MORE DRY
  // let appRender
  // beforeEach(() => {
  //   appRender = shallow(<App />)
  // })

  // Real scenarios
  it("it displays a header", () => {
    // Pick a component and make sure it shows up
    const appRender = shallow(<App />)
    const appHeaderRender = appRender.find("Header")
    expect(appHeaderRender.length).toEqual(1)
  })

  it("it displays a footer", () => {
    // Pick a component and make sure it shows up
    const appRender = shallow(<App />)
    const appFooterRender = appRender.find("Footer")
    expect(appFooterRender.length).toEqual(1)
  })

  it("it provides a path to the home componenet", () => {
    const appRender = shallow(<App />)
    // Testing for attribute
    const renderedHomePath = appRender.find('[path="/"]')
    // DEBUG FUNCTION
    // Take the thing that we are looking at and will display the information that is happening
    console.log(renderedHomePath.debug())
    // console.log(renderedHomePath.props().component.toEqual(Home))
    expect(renderedHomePath.length).toEqual(1)
  })
})