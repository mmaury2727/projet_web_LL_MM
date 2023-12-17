import React from 'react'

function Details(props) {

  const data = () => {
    let arr = [];
    props.data.map((o)=>{
        if (o){
            arr.push(
            {
                    "station" : o.station,
                    "date" : o.date ?? 0,
                    "lat" : o.lat,
                    "lng" : o.lng,
                    "type" : o.type ?? "metro"
            }
            );
        }
    })
    return arr;
  }

  return (
        <div className="bg-gray-100 p-4 enlarge">
            {data().map((object, i) => 
                <div className="bg-white p-4 mb-4 shadow rounded">
                    <div className="flex items-center mb-2">
                        <img src={"./"+object.type+".png"} width="50" height="50" alt="Placeholder image representing a train icon" className="rounded-full mr-2"/>
                        <div>
                            <p className="font-bold text-lg">{object.station}</p>
                        </div>
                    </div>
                    <div className="flex justify-between items-center">
                        <p>Reporté - {object.date}</p>
                        <i className="fas fa-chevron-right"></i>
                    </div>
                </div>
            )}
        </div>
  )
}

export default Details