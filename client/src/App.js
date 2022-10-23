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

function App() {
  return ( <>
   
  <Routes>
    <Route path="/" element={<Login />} />
<Route path="/home" element={<Home />}/>
    </Routes>
  </>
 
  );
}

export default App;
