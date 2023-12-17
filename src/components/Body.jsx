import {React, useEffect, useState} from 'react'
import { GoogleMaps } from './GoogleMaps';
import { GoogleMapsWrapper } from './GoogleMapsWrapper.tsx';
import Search from './Search'

function Body(props) {
  
  const [mapData, setMapData] = useState([{lat: 0, lng: 0}]);
  
  useEffect(() => {
    fetch('http://localhost/api.php') // Replace with your PHP file path
    .then(response => response.json())
    .then(data => setMapData(data))
    .catch(error => console.log('Error fetching data:', error));
  }, []);

  const locateMe = () => {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
        (position) => {
          const { latitude, longitude } = position.coords;
          setMapData([...mapData, {lat: latitude, lng: longitude, type:"me"}])
        },
        (error) => {
          console.error("Error getting location:", error.message);
        }
      );
    } else {
      console.error("Geolocation is not supported by this browser.");
    }
  }
  
  return (
    <div className='body'>
        <div className="md:container md:mx-auto map-container">
          {
            mapData.length ? (
            <GoogleMapsWrapper>
              <GoogleMaps mapData={mapData} />
            </GoogleMapsWrapper>
            ) : ("")
          }
        </div>
        <div className="map-overlay-btn">
          <button class="map-btn" id='install-button'>
          ⬇
          </button>
          <a href="/add" className="map-btn">
            +
          </a>
          <button onClick={locateMe} class="map-btn">
            📍
          </button>
        </div>
        {
          props.search ? (
            <Search className="search"></Search>
          ) : (
            ""
          )
        }
    </div>
  )
}

export default Body