import React, { useEffect, useState } from 'react'
import { useNavigate } from "react-router-dom";
import { Link } from "react-router-dom";
function Login() {
    let nav= useNavigate()
    let state=false
    const [username, setUsername]=useState("")
    const [password, setPassword]= useState('')
    const handleSubmit=(e)=>{
        e.preventDefault()
        console.log("Okay")
     fetch("http://127.0.0.1:3000/login",{method:"POST", headers:{"accept":"application/json", "accept":"application/json"}, body:JSON.stringify(username)}).then(res=>{
     if(res.ok){
        state=true
      return   res.json()   
     }   
     }).then(data=>console.log(data))
     if (state===true){
        nav('/home')
     }
    }
  return (
    <div className='row'>
        <div className="col-md-4">
<h4>Wining Bread Job Agency</h4>
        <h3>Login</h3>
        <form onSubmit={handleSubmit}>
<label htmlFor="username">Username</label>
<input type="text" name="username" value={username} onChange={(e)=>setUsername(e.target.value)}/><br />
<label htmlFor="password">password</label>
<input type="text" name="password" value={password} onChange={(e)=>setPassword(e.target.value)}/>
<br />
 <input type="submit" value="Login" />

        </form>
        <h5>Not a member <Link to="/signup">Sing Up</Link></h5>
        </div>


    </div>
    
  )
}

export default Login