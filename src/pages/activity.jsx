import React from 'react'
import Details from '../components/Details'
const Activity = (props) => {
  return (
    <div className='body'>
      <Details data={props.data}></Details>
    </div>
  )
}

export default Activity