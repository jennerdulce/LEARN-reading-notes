import React, { useEffect, useState } from 'react';
import { connect } from 'react-redux'
import { fetchPosts } from '../actions/postActions'
import PropTypes from 'prop-types'

function Post(props) {
    useEffect(() => {
        props.fetchPosts();
    }, [])

    const postItems = props.posts.map(post => (
        <div key={post.id}>
            <h3>{post.title}</h3>
            <p>{post.body}</p>
        </div>
    ))

    return ( 
        <div>
            <h1>Post</h1>
            {postItems}
        </div>
    );
}

// Posts.propTypes = {
//     fetchPosts: PropTypes.func.isRequired,
//     posts: PropTypes.array.isRequired
// }

const mapStateToProps = state => ({
    posts: state.posts.items
})

export default connect(mapStateToProps, { fetchPosts })(Post)