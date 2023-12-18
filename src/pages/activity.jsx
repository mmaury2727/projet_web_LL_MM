import React from 'react'
import Details from '../components/Details'
const Activity = (props) => {
  return (
    <div className='body'>
      <div className='md:container md:mx-auto map-container'>

        <Details data={props.data}></Details>
      </div>
    </div>
  )
}

export default Activity