import React, {useState} from 'react';
import { connect } from 'react-redux'
import { createPost } from '../actions/postActions'

function PostForm(props) {
    const [title, setTitle] = useState('')
    const [body, setBody] = useState('')

    const handleSubmit = e => {
        e.preventDefault()
        const post = {
            title: title,
            body: body
        }
        props.createPost(post)
    }

    return (
        <div>
            <h1>Add Post</h1>
            <form onSubmit={handleSubmit}>
                <div>
                    <label>Title: </label><br />
                    <input 
                    onChange={e => setTitle(e.target.value)}
                    type="text" 
                    name="title" 
                    value={title}>
                    </input>
                </div>
                <br />
                <div>
                    <label>Body: </label><br />
                    <textarea 
                    onChange={e => setBody(e.target.value)}
                    name="body" 
                    value={body}>
                    </textarea>
                </div>
                <br />
                <button type="submit">Submit</button>
            </form>
        </div>
    );
}



export default connect(null, { createPost })(PostForm);