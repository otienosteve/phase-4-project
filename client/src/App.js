import logo from './logo.svg';
import './App.css';
import Login from './Login'
import { render } from "react-dom";
import {
  BrowserRouter,
  Routes,
  Route,
} from "react-router-dom";
import Home from './Home';
import SingleJob from './SingleJob';
import SignUp from './SignUp';
function App() {
  return ( <>
   
  <Routes>
    <Route path="/" element={<Login />} />
<Route path="/home" element={<Home />}/>
<Route path="/single/:id" element={<SingleJob/>}/>
<Route path="/signup" element={<SignUp/>}/>
    </Routes>
  </>
 
  );
}

export default App;
