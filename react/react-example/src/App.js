import React, { Component } from 'react'
import Header from './components/Header'
import Footer from './components/Footer'

class App extends Component{
  render(){
    return(
      <>
        <Header />
        <h2>This is in my application Component</h2>
        <Footer />
      </>
    )
  }
}

export default App

