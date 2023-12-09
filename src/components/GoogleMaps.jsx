import React, { useEffect, useRef } from "react";

const DEFAULT_CENTER = { lat: 48.8609944, lng: 2.3504059 };
const DEFAULT_ZOOM = 13.5;

export const GoogleMaps = (props) => {
  const ref = useRef();
  console.log(props.locations.lat)
  console.log(props.locations.lng);
  useEffect(() => {
    // Display the map
    if (ref.current) {
      const map = new window.google.maps.Map(ref.current, {
        center: DEFAULT_CENTER,
        zoom: DEFAULT_ZOOM,
      });
      const transitLayer = new window.google.maps.TransitLayer();
      transitLayer.setMap(map);
      let location = new window.google.maps.LatLng(props.locations.lng, props.locations.lat);
      let marker = new window.google.maps.Marker({
        position: location,
        map: map
      });
    }
  }, [ref]);

  return (
    <div
      id="map"
      ref={ref}
      style={{ width: "100%", height:"100%"}}
    />
  );
};