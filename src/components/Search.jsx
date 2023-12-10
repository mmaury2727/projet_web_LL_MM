import React from 'react'

function Search() {
  return (
    <div class="container mx-auto p-4">
        <div className="search-bar absolute top-24 left-1/2 transform -translate-x-1/2 mt-4 p-2 text-white flex items-center justify-between rounded">
            <input
                type="text"
                placeholder="Rechercher une station"
                className="flex-1 p-2"
            />
            <button className="ml-2">
                <i className="fa fa-search"></i>
            </button>
        </div>
    </div>
  )
}

export default Search