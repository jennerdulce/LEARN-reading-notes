import './App.css';
import React, {useState} from 'react'
import Header from './components/Header'
import Todo from './components/Todo'
import TodoForm from './components/TodoForm'

function App() {
  const [todos, setTodos] = useState([
    {
      text: 'Wash and dry laundry',
      isCompleted: false
    },
    {
      text: 'Wash the dishes',
      isCompleted: false
    },
    {
      text: 'Walk Dog',
      isCompleted: false
    }
  ])

  const addTodo = text => {
    let newTodo = {
      text: text,
      isCompleted: false
    }
    const addTodo = [...todos, newTodo];
    setTodos(addTodo)
  }

  const completeTodo = index => {
    const newTodos = [...todos]
    if(newTodos[index].isCompleted === true){
      newTodos[index].isCompleted = false
    } else {
      newTodos[index].isCompleted = true
    }
    setTodos(newTodos)
  }

  const removeTodo = index => {
    const newTodos = [...todos]
    newTodos.splice(index, 1)
    setTodos(newTodos)
  }
  
  return (
    <div className="App">
      <Header title="This is a Header"/>
      {todos.map((value, index) => {
        return <Todo key={index} index={index} item={value} completeTodo={completeTodo} removeTodo={removeTodo}/>
      })}
      <TodoForm
      addTodo={addTodo}
      />
    </div>
  );
}

export default App;
