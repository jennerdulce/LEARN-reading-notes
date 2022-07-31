import React, { Component } from 'react';
import { Card, CardImg, CardText, CardBody,
    CardTitle, CardSubtitle, Button } from 'reactstrap';

class CatIndex extends Component {
    render() {
        const { cats } = this.props
        console.log(cats)
        return (
            <div>
                <h1>Cat Index</h1>
                {/* Conditional Rendering */}
                {cats && 
                    cats.map((cat, index) => {
                        // Card from React Strap **NOT REACT BOOTSTRAP**
                    return <Card key={index}>
                        <CardImg top width="100%" src={cat.image} alt="Card image cap" />
                        <CardBody>
                        <CardTitle>{cat.name}</CardTitle>
                        <CardSubtitle>{cat.age}</CardSubtitle>
                        <CardText>{cat.enjoys}</CardText>
                        <Button>Button</Button>
                        </CardBody>
                    </Card>
                    })
                }
            </div>
        );
    }
}

export default CatIndex;