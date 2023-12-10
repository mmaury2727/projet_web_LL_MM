import React, { useEffect, useRef } from "react";

const DEFAULT_CENTER = { lat: 48.8609944, lng: 2.3504059 };
const DEFAULT_ZOOM = 13.5;

export const GoogleMaps = (props) => {
  const ref = useRef();
  const icons = {
    officer: {
      icon: "officer.png",
    },
    me: {
      icon: "me.png",
    }
  };
  useEffect(() => {
    // Display the map
    if (ref.current) {
      const map = new window.google.maps.Map(ref.current, {
        center: DEFAULT_CENTER,
        zoom: DEFAULT_ZOOM,
      });
      const transitLayer = new window.google.maps.TransitLayer();
      transitLayer.setMap(map);
      console.log(props.mapData)
      props.mapData.forEach(element => {
        new window.google.maps.Marker({
          position: new window.google.maps.LatLng(element.lat, element.lng),
          icon: element.type ? icons["me"].icon : icons["officer"].icon,
          map: map
        });
      });
    }
  }, [props]);

  return (
    <div
      id="map"
      ref={ref}
      style={{ width: "100%", height:"100%"}}
    />
  );
};