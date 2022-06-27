import React, { Component } from 'react';
import NasaApi from './NasaApi.js'

class App extends Component {
  constructor(props){
    super(props)
    this.state = {
      ipAddress: ""
    }
  }

  getIp = () => {
    fetch("https://ipapi.co/json/")
    .then( response => response.json())
    .then( payload => this.setState({ ipAddress: payload.ip }))
    .catch(error => console.log(error))
  }

  render() {
    return (
      <div>
        <h1>FIND YOUR IP ADDRESS</h1>
        <button onClick={ this.getIp }>Click Me!</button>
        <p>{ this.state.ipAddress }</p>
        <NasaApi />
      </div>
    );
  }
}

export default App;