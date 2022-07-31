// Imports React into our test file.
import React from 'react'

// Imports Enzyme testing and deconstructs Shallow into our test file.
import Enzyme, { shallow } from 'enzyme'

// Imports Adapter utilizing the latest react version into our test file so we can run a testing render on any component we may need.
import Adapter from 'enzyme-adapter-react-16'

// Imports in the component we are going to be testing.
import CatNew from './CatNew.js'

//Allows us to utilize the adapter we import in earlier, allowing us to call and render a component.
Enzyme.configure({adapter: new Adapter()})

// TERMINAL CMD: yarn test
describe("When CatNew.js renders to the user", () => {

    it("displays a header", () => {
        let catNewRender = shallow(<CatNew />)
        const catNewHeading = catNewRender.find("h3")
        expect(catNewHeading.length).toEqual(1)
    })

    it("displays a form", () => {
        let catNewRender = shallow(<CatNew />)
        const catNewForm = catNewRender.find("Form")
        expect(catNewForm.length).toEqual(1)
    })

    it("displays an input for name", () => {
        let catNewRender = shallow(<CatNew />)
        const catNewInput = catNewRender.find('name=["name"]')
        expect(catNewInput.length).toEqual(1)
    })

    it("displays a input for age", () => {
        catNewRender = shallow(<CatNew />)
        const catNewInput = catNewRender.find('name=["age"]')
        expect(catNewInput.length).toEqual(1)
    })

    it("displays a input for enjoys", () => {
        catNewRender = shallow(<CatNew />)
        const catNewInput = catNewRender.find('name=["enjoys"]')
        expect(catNewInput.length).toEqual(1)
    })

    it("displays a input for image", () => {
        catNewRender = shallow(<CatNew />)
        const catNewInput = catNewRender.find('name=["image"]')
        expect(catNewInput.length).toEqual(1)
    })

})