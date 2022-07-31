import { combineReducers } from "redux"
import postReducer from './postReducer'
// Acts as root reducer

export default combineReducers({
    posts: postReducer
})