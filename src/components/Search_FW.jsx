import React, { useState } from 'react';

function Search(props) {
  const [searchTerm, setSearchTerm] = useState('');
  const [selectedItem, setSelectedItem] = useState(null);
  const [searchResults, setSearchResults] = useState([]);
  const handleSearchChange = (event) => {
    setSearchTerm(event.target.value);
    console.log(searchResults)
    if (event.target.value !== '') {
      const results = props.stations.filter(item =>
        item.name.toLowerCase().includes(event.target.value.toLowerCase())
      );
      setSearchResults(results);
    } else {
      setSearchResults([]);
    }
  };

  const handleItemClick = (item) => {
    console.log(item)
    setSelectedItem(item);
    props.selected(item);
    setSearchResults([]);
    setSearchTerm(item.name);
  };
  return (
    <div class="container mx-auto">
      <div class="flex justify-center px-3 mb-5">
        <div class="w-full max-w-md">
          <div class="bg-white shadow-md rounded-lg px-3 py-2 mb-4">
            <div class="flex items-center bg-gray-200 rounded-md">
              <div class="pl-2">
                <svg class="fill-current text-gray-500 w-6 h-6" xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 24 24">
                    <path class="heroicon-ui"
                        d="M16.32 14.9l5.39 5.4a1 1 0 0 1-1.42 1.4l-5.38-5.38a8 8 0 1 1 1.41-1.41zM10 16a6 6 0 1 0 0-12 6 6 0 0 0 0 12z" />
                </svg>
              </div>
              <input
                type="text"
                placeholder="Search..."
                value={searchTerm}
                onChange={handleSearchChange}
                className="w-full rounded-md bg-gray-200 text-gray-700 leading-tight focus:outline-none py-2 px-2"
              />
            </div>
            <div class="py-3 text-sm">
              {searchResults.length ?
                <div className=''> {
                  searchResults.map((item, index) => (
                    <div className="flex justify-start cursor-pointer text-gray-700 hover:text-blue-400 hover:bg-blue-100 rounded-md px-2 py-2 my-2" key={index} onClick={() => handleItemClick(item)}>
                        <img src={"metro.png"} width="30" height="30" className="rounded-full mr-2"/>
                        <div class="flex-grow font-medium px-2">
                          {item.name}
                        </div>
                        <div class="text-sm font-normal text-gray-500 tracking-wide">{item.line}</div>
                    </div>
                  ))}
                </div>
                : ""
              }
              </div>
            </div>
          </div>
        </div>
      </div>
  )
}

export default Search