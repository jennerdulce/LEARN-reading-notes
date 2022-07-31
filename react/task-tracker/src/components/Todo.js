import React, {useState} from 'react'

function Todo(props) {
    console.log(props)
    return (
        <div>
            <h1>{props.item.text}</h1>
            <p>{props.item.isCompleted.toString()}</p>
            <button onClick={() => props.completeTodo(props.index)}>Complete Task</button>          
            <button onClick={() => props.removeTodo(props.index)}>Remove Task</button>

        </div>
    );
}

export default Todo;