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
        <h2>Counter: { count }</h2>
        <button onClick={this.handleChange}>
          Press Me!
        </button>
      </div>
    )
  }
}

export default Counter