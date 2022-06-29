import React, { Component } from 'react';
import { Card, CardImg, CardText, CardBody,
    CardTitle, CardSubtitle, Button } from 'reactstrap';


class Show extends Component {
    render() {
        const { cat } = this.props
        return (
            <div>
                <h1>Cat Show</h1>
                {cat && 
                    <Card>
                        <CardImg top width="100%" src={cat.image} alt="Card image cap" />
                        <CardBody>
                        <CardTitle>{cat.name}</CardTitle>
                        <CardSubtitle>{cat.age}</CardSubtitle>
                        <CardText>{cat.enjoys}</CardText>
                        <Button>Button</Button>
                        </CardBody>
                    </Card>
                }
            </div>
        );
    }
}

export default Show;