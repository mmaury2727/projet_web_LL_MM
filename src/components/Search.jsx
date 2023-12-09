import React from 'react'

function Search() {
  return (
    <div class="container mx-auto p-4">
        <div class="searchbar mb-4">
            <input type="text" placeholder="Search" class="w-full p-2 border border-gray-300 rounded-md shadow-sm focus:ring-2 focus:ring-blue-500 focus:border-blue-500"/>
        </div>
        <div className="container mx-auto" style={{"display": "none"}}>
            <div class="results space-y-4">
                <div class="bg-white p-4 border border-gray-300 rounded-md shadow-sm">
                    <p>Result 1</p>
                </div>
                <div class="bg-white p-4 border border-gray-300 rounded-md shadow-sm">
                    <p>Result 2</p>
                </div>
                <div class="bg-white p-4 border border-gray-300 rounded-md shadow-sm">
                    <p>Result 3</p>
                </div>
            </div>
        </div>
    </div>
  )
}

export default Search