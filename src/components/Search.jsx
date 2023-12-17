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
    setSelectedItem(item);
    props.selected(selectedItem);
    setSearchResults([]);
    setSearchTerm(item.name);
  };
  return (
    <div class="container mx-auto p-4">
        <div className="search-bar absolute top-24 left-1/2 transform -translate-x-1/2 mt-4 p-2 text-white flex items-center justify-between rounded">
            <input
                type="text"
                placeholder="Search..."
                value={searchTerm}
                onChange={handleSearchChange}
                className="flex-1 p-2"
            />
            <button className="ml-2">
                <i className="fa fa-search"></i>
            </button>
            {searchResults.length ?
              <div className='results'> {
                searchResults.map((item, index) => (
                  <div className="bg-gray-100 p-4">
                      <div className="bg-white p-4 mb-4 shadow rounded" key={index} onClick={() => handleItemClick(item)}>
                                  <div className="flex items-center mb-2">
                                      <img src={"metro.png"} width="50" height="50" alt="Placeholder image representing a train icon" className="rounded-full mr-2"/>
                                      <div>
                                          <p className="font-bold text-lg">{item.name}</p>
                                      </div>
                                  </div>
                        </div>
                  </div>
                ))}
              </div>
               : ""
            }
        </div>
        {selectedItem && <div>Selected Item: {selectedItem.name}</div>}
    </div>
  )
}

export default Search