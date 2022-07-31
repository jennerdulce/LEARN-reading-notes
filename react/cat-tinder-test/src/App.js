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

  createCat = (cat) => {
    console.log(cat)
  }

  render() {

    return (
      <div>
        <h1>Cat Tinder</h1>
        <Router>
        <Header />
          <Switch>
            <Route exact path="/" component={Home} />
            {/* Syntax of using React Router DOM and passing props */}
            <Route path="/catindex" render={(props) => <CatIndex cats={this.state.cats}/>} />
            <Route path="/catshow/:id"
            render={(props) => {
              let id = props.match.params.id // Obtains id from route
              let cat = this.state.cats.find(catObject => catObject.id == id) // JavaScript Method within an object
              return <CatShow cat={cat} />
            }}
            />
            {/* <Route path="/catnshow" component={CatShow} />  ** OLD ROUTE***/} 
            <Route
              path="/catnew"
              render={(props) => <CatNew createCat={this.createCat} />}
            />
            {/* <Route path="/catnew" component={CatNew} /> */}
            <Route path="/catedit" component={CatEdit} />
            <Route component={NotFound}/>
          </Switch>
          <Footer />
        </Router>
      </div>
    );
  }
}

export default App;