import React, { Component } from 'react';

class NasaApi extends Component {
    constructor(props){
        super(props)
        this.state = {
            pictures: null
        }
    }

    componentDidMount() {
        this.getNasesImages()
    }

    getNasesImages = () => {
        fetch(`https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY`)
        .then(res => {
            // console.log(res)
            return res.json()
        })
        .then(payload => {
            // console.log(payload.photos)
            this.setState({pictures: payload.photos})
        })
        .catch(error => console.log(error))
    }

    render() {
        return (
            <div>
                    {this.state.pictures &&
                        <ul>
                        {this.state.pictures.map((image, index) => {
                            return <li><img src={image.img_src} key={index} /></li>
                        })}
                        </ul>
                    }
                    {/* Using component did mount instead */}
                {/* <button onClick={this.getNasesImages}>Get Images!</button> */}
            </div>
        );
    }
}

export default NasaApi;