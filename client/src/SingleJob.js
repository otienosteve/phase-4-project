import React, { useEffect, useState } from 'react'
import {useParams} from 'react-router-dom'
function SingleJob() {

    const [job, setJob]=useState({})
    const params=useParams()
    useEffect(()=>{
        fetch('http://127.0.0.1:3000/job_posts/'+params.id).then(res=>res.json()).then(data=>{console.log(data)
    setJob(data)
    })
    },[])
  return (<>
  <div className="row">
    <div className="col-md-5">

    <div>{job.company_id}</div>
    <p>{job.job_title}</p>
    <p>{job.post}</p>
    <p>{job.start_date}</p>
    <p className='btn-warning'> keep checking your email you may hear from us soon</p>
    </div>
  </div>
  </>
  )
}

export default SingleJob