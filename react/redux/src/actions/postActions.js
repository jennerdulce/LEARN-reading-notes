import { FETCH_POSTS, NEW_POST } from './types'

export const fetchPosts = () => dispatch => {
    fetch('https://jsonplaceholder.typicode.com/posts')
        .then(res => res.json())
        .then(payload => 
            dispatch({
                type: FETCH_POSTS,
                payload: payload
        }))
}

export const createPost = (postData) => dispatch => {
    fetch('https://jsonplaceholder.typicode.com/posts', {
            method: "POST",
            headers: {
                'content-type': 'application/json'
            },
            body: JSON.stringify(postData)
        })
        .then(res => res.json())
        .then(payload => 
            dispatch({
                type: NEW_POST,
                payload: payload
        }))
}