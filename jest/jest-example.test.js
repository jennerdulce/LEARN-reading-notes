const addNumbers = require('./jest-example')

describe("Adding Numbers", () => {
    it("Should add two numbers together", () => {
        expect(addNumbers(1, 2)).toEqual(3)
        expect(addNumbers(2, 2)).toEqual(4)
        expect(addNumbers(5, 2)).toEqual(7)
    })
})