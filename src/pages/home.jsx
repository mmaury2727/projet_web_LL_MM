import React from 'react'
import Body from '../components/Body';

const Home = (props) => {
    return (
            <Body search={props.search} stations={props.stations} data={props.data}/>
    )
}

export default Home