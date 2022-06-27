import React, { Component } from 'react';

class App extends Component {
  constructor(props){
    super(props)
    this.state = {
      pictures: null
    }
  }

  componentDidMount() {
    this.getNasaImages()
  }

  getNasaImages = () => {
    fetch(`https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY`)
    .then(res => {
      return res.json()
    })
    .then(payload => {
      this.setState({pictures: payload.photos})
    })
  }

  render() {
    return (
      <div>
        <h1>Welcome to my page</h1>
        {this.state.pictures &&
            <ul>
            {this.state.pictures.map((image, index) => {
                return <li><img src={image.img_src} key={index} /></li>
            })}
            </ul>
        }
      </div>
    );
  }
}

export default App;