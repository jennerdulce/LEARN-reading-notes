import React, { Component } from 'react'
import Header from './components/Header'
import Footer from './components/Footer'
import Counter from './components/Counter'
import Box from './components/Box'
import './App.css'

class App extends Component{
  render(){
    return(
      <>
        <Header />
        <h2>This is in my application Component</h2>
        <Footer />
        <Counter />
        <Box />
      </>
    )
  }
}

export default App

