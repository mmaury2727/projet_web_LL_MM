import {React, useEffect, useState} from 'react'
import { GoogleMaps } from './GoogleMaps';
import { GoogleMapsWrapper } from './GoogleMapsWrapper.tsx';

function Body() {
  
  const [mapData, setMapData] = useState([{lat: "", long: ""}]);
  
  useEffect(() => {
    fetch('http://localhost:8888/api.php') // Replace with your PHP file path
    .then(response => response.json())
    .then(data => setMapData(data))
    .catch(error => console.log('Error fetching data:', error));
  }, []);
  
  return (
    <div className='body'>
        <div className="md:container md:mx-auto map-container">
          {
            mapData.length ? (
            <GoogleMapsWrapper>
              <GoogleMaps locations={{lat: mapData[0].lat, lng: mapData[0].lng}} />
            </GoogleMapsWrapper>
            ) : ("")
          }
        </div>
    </div>
  )
}

export default Body