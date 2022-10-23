import React, { useEffect, useState } from 'react'
import JobCard from './JobCard'

function Home() {
const [jobs, setJobs]=useState([])
useEffect(()=>{
fetch("http://127.0.0.1:3000/job_posts").then(res=>res.json()).then(data=>setJobs(data))
}, [])

  return (<>
    <div>Welcome to Job board</div>
    <div className="row">
{jobs.map(job=><JobCard key={job.id} {...job}/>)}
    </div>
  </>
  )
}

export default Home