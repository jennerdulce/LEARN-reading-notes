import React, {useState} from 'react'

function TodoForm(props) {
    const [value, setValue] = useState('')

    const handleSubmit = e => {
        e.preventDefault()
        if(!value) return;
        props.addTodo(value)
        setValue('')
    }

    return (
        <div>
            <form onSubmit={handleSubmit}>
                <input 
                onChange={e => setValue(e.target.value)}
                type="text" 
                className="input" 
                value={value}>
                </input>
                <button type="submit">Submit</button>
            </form>
        </div>
    );
}

export default TodoForm;