# Redux

## What is it used for?
- Beneficial for large applications
- When you have components that need to interact with each other and share same state
- Components tha thave own state
    - Form component has value for each field
    - Data is stored in state
    - Large applications with many components
    - Managaing is difficult and messsy
        - Thats where redux comes in

## Redux data flow
- Store:
    - Holds whole state tree of your application
    - Only way to change state inside is to dispatch an action
    - Includes state
    - Sends state to your components
- View:
    - View / Component
    - Button for example, when clicked will fire off an action
    - Action creator
- Action Creator:
    - Dispatch an action to the store
- Reducers:
    - Functions that will dictate how the state will change, in response to that action.
    - Responds with new state
    - State does not get modified, it just gets completely replaced

## Start
- `create-react-app appname`
- `cd appname`
- create components folder in src folder
- install redux `npm i redux react-redux redux-thunk`
- in app.js:
```js
import { Provider } from 'react-redux'
```
- Wrap app in `<Provider> </Provider>`
```js
// Before:
<div className="App">
    <PostForm />
    <hr />
    <Post />
</div>

// After:
import store from './store'

<Provider store={store}>
    <div className="App">
    <PostForm />
    <hr />
    <Post />
    </div>
</Provider>
```

- create store.js file in src
```js
import { configureStore as createStore, applyMiddleware } from 'redux'
import thunk from 'redux-thunk'
import rootReducer from './reducers'

const initialState = {}
const middleware = [thunk]
const store = createStore(
    rootReducer, 
    initialState, 
    applyMiddleware(...middleware)
    )

export default store
```

- create reducers folder in src
- create index.js in reducers folder
```js
import { combineReducers } from "redux"
import postReducer from './postReducer'
// Acts as root reducer

export default combineReducers({
    posts: postReducer
})
```
- create actions folder in src
- create types.js in actions folder
```js
export const FETCH_POSTS = 'FETCH_POSTS'
export const NEW_POSTS = 'NEW_POSTS'
```
- within actions folder, create postActions.js
```js
import { FETCH_POSTS, NEW_POSTS } from './types'

export const fetchPosts = () => dispatch => {
    fetch('https://jsonplaceholder.typicode.com/posts')
        .then(res => res.json())
        .then(payload => dispatch({
            type: FETCH_POSTS,
            payload: payload
        }))
    }
```

- use state in components
```js
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
```

