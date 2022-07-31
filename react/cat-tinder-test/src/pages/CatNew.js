import React, { Component } from 'react';
import { Redirect } from 'react-router-dom'
import {
    Form,
    FormGroup,
    Input,
    Label, Button
  } from 'reactstrap'

class CatNew extends Component {
    constructor(props){
        super(props)
        this.state = {
          newCat: {
            name: "",
            age: "",
            enjoys: "",
            image: ""
          },
          submitted: false
        }
      }

    handleChange = (e) => {
        let { newCat } = this.state
        newCat[e.target.name] = e.target.value
        this.setState({newCat: newCat})
    }

    handleSubmit = (e) => {
        console.log(this.state.newCat)
        this.props.createCat(this.state.newCat)
        this.setState({submitted: true})
    }

    render() {
        if (this.state.submitted) {
            return (<Redirect to={'/catindex'} />);
        }
        return (
            <div>
                <h3>Cat New</h3>
                <Form>
                    <FormGroup>
                        <Label for="name">
                        Name
                        </Label>
                        <Input
                        id="name"
                        name="name"
                        placeholder="Name"
                        type="text"
                        onChange={this.handleChange}
                        />
                    </FormGroup>
                    <FormGroup>
                        <Label for="Age">
                        Age
                        </Label>
                        <Input
                        id="Age"
                        name="age"
                        placeholder="Age"
                        type="text"
                        onChange={this.handleChange}
                        />
                    </FormGroup>
                    <FormGroup>
                        <Label for="enjoy">
                        Enjoys
                        </Label>
                        <Input
                        id="enjoy"
                        name="enjoys"
                        placeholder="What do you enjoy?"
                        type="text"
                        onChange={this.handleChange}
                        />
                    </FormGroup>
                    <FormGroup>
                        <Label for="image">
                        Image
                        </Label>
                        <Input
                        id="image"
                        name="image"
                        placeholder="Image Url"
                        type="text"
                        onChange={this.handleChange}
                        />
                    </FormGroup>
                    <Button
                    name="submit"
                    onClick={this.handleSubmit}
                    >
                        Submit
                    </Button>
                </Form>
            </div>
        );
    }
}

export default CatNew;