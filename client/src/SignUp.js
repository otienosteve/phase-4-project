import React,{useState} from 'react'

function SignUp() {
    const [username, setUsername]= useState()
    const [pass, setPass]= useState()
    const [cnfPass, setCnfPass]= useState()
    const [error,setError]=useState(false)
    const handleSignUp=(e)=>{
        e.preventDefault()
        setError(false)
        if(cnfPass!==pass){

setError("Passwords do not match")
        }else{

            fetch('')
        }


    }
  return (
    <div className='row'>

     
      <form onSubmit={handleSignUp}>
      <p className='text-center'>Sign Up</p>
      <br />
<label htmlFor="username">Username</label> 
<br /><input type="text" name="username" id="" value={username}/>
<br />
<label htmlFor="password">{error?error:"Password"}</label> 
<br /><input type="password" name="Password" id="" value={pass} onChange={e=>setPass(e.target.value)}/>
<br /><label htmlFor="cnfPassword">{error?error:"Confirm Password"}</label>
<br />
<input type="password" name="cnfPass" value={cnfPass} onChange={e=>setCnfPass(e.target.value)} />
<br />
<br />
<input type="submit" value="signup" />
      </form>
    </div>
  )
}

export default SignUp