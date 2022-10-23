import React from 'react'
import {useNavigate} from 'react-router-dom'

function JobCard({id,job_title,company="Google",post, no_vacancy}) {
    const nav=useNavigate()
    const handleApply=()=>{
nav('/single/'+id)
    }
  return (
    <div className="col-md-4">
    <div className='card'>
<p className='card-title text-center'>{job_title} -{no_vacancy}</p>
<p>{post}</p>

<button onClick={handleApply}>Apply</button>
    </div>
    </div>
  )
}

export default JobCard