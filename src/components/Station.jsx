import React from 'react'

const Station = ({ name, status, isCurrent, isDestination }) => {
  return (
    <div className={`flex items-top ${isDestination ? 'mb-0' : 'mb-4'}`}>
        <div className="flex flex-col items-center mr-4">
            <div
                className={`rounded-full w-6 h-6 flex items-center justify-center border-2 ${isCurrent ? 'border-red-500 bg-white' : 'border-white'}`}
            >
                {isCurrent || status ||isDestination ? (
                    <p className={`rounded-full w-3 h-3 ${isCurrent ? 'bg-red-500' : (isDestination ? 'bg-white' : 'bg-red-500')}`}></p>
                ) : null}
            </div>
            {!isDestination && (
                <div className="w-0.5 bg-white h-6"></div>
            )}
        </div>
        <div>
            <p className={`text-lg ${isCurrent ? 'text-red-500' : isDestination ? 'text-white' : 'text-white'}`}>
                {name}
            </p>
            {status && (
                <p className="text-xs text-red-500 mt-1 text-left">
                    {status}
                </p>
            )}
        </div>
    </div>
  )
}

export default Station