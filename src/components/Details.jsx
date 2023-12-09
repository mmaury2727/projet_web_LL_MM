import React from 'react'

function Details() {
  return (
    <div className="bg-gray-100 p-4">
    <div className="bg-white p-4 mb-4 shadow rounded">
        <div className="flex items-center mb-2">
            <img src="https://placehold.co/50x50" alt="Placeholder image representing a train icon" className="rounded-full mr-2"/>
            <div>
                <p className="font-bold text-lg">Châtelet - Les - Halles</p>
                <p className="text-sm">Mondelez epere !!</p>
            </div>
        </div>
        <div className="flex justify-between items-center">
            <p>Reporté par Bababtou63 - 16/05 : 15h02</p>
            <i className="fas fa-chevron-right"></i>
        </div>
    </div>

    <div className="bg-white p-4 mb-4 shadow rounded">
        <div className="flex items-center mb-2">
            <img src="https://placehold.co/50x50" alt="Placeholder image representing a weather icon" className="rounded-full mr-2"/>
            <div>
                <p className="font-bold text-lg">Weather Update</p>
                <p className="text-sm">Sunny with a chance of rain</p>
            </div>
        </div>
        <div className="flex justify-between items-center">
            <p>Published by MeteoNews - 16/05 : 14h45</p>
            <i className="fas fa-chevron-right"></i>
        </div>
    </div>

    <div className="bg-white p-4 mb-4 shadow rounded">
        <div className="flex items-center mb-2">
            <img src="https://placehold.co/50x50" alt="Placeholder image representing a calendar event icon" className="rounded-full mr-2"/>
            <div>
                <p className="font-bold text-lg">Event Reminder</p>
                <p className="text-sm">Don't forget the upcoming event!</p>
            </div>
        </div>
        <div className="flex justify-between items-center">
            <p>Reminder by EventOrg - 16/05 : 14h30</p>
            <i className="fas fa-chevron-right"></i>
        </div>
    </div>

    <div className="bg-white p-4 mb-4 shadow rounded">
        <div className="flex items-center mb-2">
            <img src="https://placehold.co/50x50" alt="Placeholder image representing a news icon" className="rounded-full mr-2"/>
            <div>
                <p className="font-bold text-lg">Breaking News</p>
                <p className="text-sm">Major event happening now</p>
            </div>
        </div>
        <div className="flex justify-between items-center">
            <p>Reported by NewsChannel - 16/05 : 14h15</p>
            <i className="fas fa-chevron-right"></i>
        </div>
    </div>
</div>
  )
}

export default Details