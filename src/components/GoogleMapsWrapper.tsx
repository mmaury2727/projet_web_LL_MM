import React from "react";
import { Wrapper } from "@googlemaps/react-wrapper";

export const GoogleMapsWrapper = ({
  children,
}: {
  children: React.ReactNode;
}) => {
  // Ideally we want the apiKey to be fetch from an environment variable
  const apiKey = "AIzaSyCFh39HJ67aIXYx-VaGfsCcbqS6jxDjdPM";

  if (!apiKey) {
    return <div>Cannot display the map: google maps api key missing</div>;
  }

  return <Wrapper apiKey={apiKey}>{children}</Wrapper>;
};