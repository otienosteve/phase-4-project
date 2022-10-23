import React, { useState } from 'react'

function Login() {
    const [username, setUsername]=useState("")
    const [password, setPassword]= useState('')
    const handleSubmit=(e)=>{
        e.preventDefault()
        console.log("Okay")
      
        fetch("http://127.0.0.1:3000/login",{method:"POST", headers:{"accept":"application/json", "accept":"application/json"}, body:JSON.stringify(username)}).then(res=>res.json()).then(data=>console.log(data))
    }
  return (
    <div>
        <h3>Login</h3>
        <form onSubmit={handleSubmit}>
<label htmlFor="username">Username</label>
<input type="text" name="username" value={username} onChange={(e)=>setUsername(e.target.value)}/><br />
<label htmlFor="password">password</label>
<input type="text" name="password" value={password} onChange={(e)=>setPassword(e.target.value)}/>
<br />
 <input type="submit" value="Login" />

        </form>


    </div>
  )
}

export default Login