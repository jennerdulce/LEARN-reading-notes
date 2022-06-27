import React, { Component } from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom'
import Header from './components/Header.js'
import Footer from './components/Footer.js'
import Home from './pages/Home.js'
import CatIndex from './pages/CatIndex.js'
import CatShow from './pages/CatShow.js'
import CatNew from './pages/CatNew.js'
import CatEdit from './pages/CatEdit.js'
import NotFound from './pages/NotFound.js'
import mockCats from './mockCats.js'

class App extends Component {
  constructor(props){
    super(props)
    this.state = {
      cats: mockCats
    }
  }

  render() {
    console.log(this.state.cats)
    return (
      <div>
        <h1>Cat Tinder</h1>
        <Header />
        <Router>
          <Switch>
            <Route exact path="/" component={Home} />
            <Route path="/catindex" component={CatIndex} />
            <Route path="/catshow" component={CatShow} />
            <Route path="/catnew" component={CatNew} />
            <Route path="/catedit" component={CatEdit} />
            <Route component={NotFound}/>
          </Switch>
        </Router>
        <Footer />
      </div>
    );
  }
}

export default App;