// Imports React into our test file.
import React from 'react'

// Imports Enzyme testing and deconstructs Shallow into our test file.
import Enzyme, { shallow } from 'enzyme'

// Imports Adapter utilizing the latest react version into our test file so we can run a testing render on any component we may need.
import Adapter from 'enzyme-adapter-react-16'

// Imports in the component we are going to be testing.
import Header from './Header.js'

//Allows us to utilize the adapter we import in earlier, allowing us to call and render a component.
Enzyme.configure({adapter: new Adapter()})

// TERMINAL CMD: yarn test
describe("When Header.js renders to the user", () => {

  it("displays navlinks", () => {
    let headerRender = shallow(<Header />)
    // NavLink comes from React Router DOM
    const navLinkHeaderRender = headerRender.find("NavLink")
    expect(navLinkHeaderRender.length).toEqual(3)
  })
})