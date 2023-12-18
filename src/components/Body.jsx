import {React, useEffect, useState} from 'react'
import { GoogleMaps } from './GoogleMaps';
import { GoogleMapsWrapper } from './GoogleMapsWrapper.tsx';
import Search from './Search'
import { NavLink } from 'react-router-dom';
function Body(props) {
  
  const [mapData, setMapData] = useState([{lat: 0, lng: 0}]);
  const [mapSearch, setMapSearch] = useState({});

  useEffect(() => {
    console.log(props);
    setMapData(props.data)
  }, []);

  const useSelected = (e) => {
    if (e){
      console.log(e)
      setMapSearch(e);
    }
  }

  const locateMe = () => {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
        (position) => {
          const { latitude, longitude } = position.coords;
          if (mapData.length && mapData.find(marker => marker.type === "me")){
            mapData[mapData.indexOf(mapData.find(marker => marker.type === "me"))] = {lat: latitude, lng: longitude, type:"me"}
          } else {
            setMapData([...mapData, {lat: latitude, lng: longitude, type:"me"}])
          }
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
            mapData ? (
            <GoogleMapsWrapper>
              <GoogleMaps mapData={mapData} mapSearch={mapSearch}/>
            </GoogleMapsWrapper>
            ) : ("")
          }
        </div>
        <div className="map-overlay-btn">
          <NavLink to="/add" className="map-btn">
            +
          </NavLink>
          <button onClick={locateMe} class="map-btn">
            📍
          </button>
        </div>
        {
          props.search ? (
            <Search data={props.data} selected={useSelected} stations={props.stations} className="search"></Search>
          ) : (
            ""
          )
        }
    </div>
  )
}

export default Body