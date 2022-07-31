import React from 'react';

function Header(props) {
    return (
        <div>
            <h1>{props.title}</h1>
        </div>
    );
}

Header.defaultProps = {
    // Passed in props take precedence
    // title: "Title"
}

export default Header;