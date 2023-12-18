import { useEffect } from 'react';
import {React, useState} from 'react'
import Search from '../components/Search_FW'
import Station from '../components/Station';

const Mytrip = (props) => {
    const lines = [
        {value: '', text: '--Ligne de Metro--'},
        {value: '4', text: 'Ligne 4'},
        {value: '6', text: 'Ligne 6'},
        {value: '8', text: 'Ligne 8'},
        {value: '14', text: 'Ligne 14'},
        ];

    const [line, setLine] = useState(lines[0].value);

    const [selectedStations, setSelectedStations] = useState([{}, {}]);

    const [path, setPath] = useState([]);

    const lineChange = event => {
        setLine(event.target.value);
    };

    const stations = () => {
        if (line && props.stations) {
            return props.stations.filter(obj => String(obj.id).startsWith(line));
        }
        else if (props.stations) {
            return props.stations
        }
    }

    const useSelected1 = (search) => {
        setSelectedStations([search, selectedStations[1]]);
    }

    const useSelected2 = (search) => {
        setSelectedStations([selectedStations[0], search]);
    }

    const hasHendek = (station) => {
        return props.data.some(obj => obj.hnouches_station === station.id);
    }

    useEffect(() => {
        if (selectedStations.length == 2 && selectedStations[0].id && selectedStations[1].id){
            setPath(sliceById(selectedStations[0].id, selectedStations[1].id));
        }
    }, [selectedStations])
    

    const sliceById = (id1, id2) => {
        const startIndex = stations().findIndex(item => item.id === id1);
        const endIndex = stations().findIndex(item => item.id === id2);
      
        if (startIndex === -1 || endIndex === -1) {
          throw new Error('One or both IDs not found');
        }
    
        let result = stations().slice(Math.min(startIndex, endIndex), Math.max(startIndex, endIndex) + 1);
    
        if (startIndex > endIndex) {
            result = result.reverse();
        }

        return result;
    }

  return (
        <div className='body'>
        <div className="bg-gray-100 p-4 md:container md:mx-auto map-container">
            <div>
                <p>Ligne :</p>
                <select value={line} onChange={lineChange}>
                    {lines.map(option => (
                    <option key={option.value} value={option.value}>
                        {option.text}
                    </option>
                    ))}
                </select>
            </div>
            {
                line ? (
                    <div>
                        <div>
                            <p>Provenance :</p>
                            <Search data={props.data} selected={useSelected1} stations={stations()} className="search"></Search>
                        </div>
                        <div>
                            <p>Destination :</p>
                            <Search data={props.data} selected={useSelected2} stations={stations()} className="search"></Search>
                        </div>
                    </div>
                ) : ""
            }
            <div>
                {
                    path.length ? (
                        <div className="stations-path">
                            <h1 className="text-3xl font-bold mb-4">Votre trajet</h1>
                            {path.map((option, index) => (
                                <Station key={option.id} name={option.name} status={index === 0 ? "Vous êtes ici" : (hasHendek(option) ? "Hendeks signalés !" : "")} isCurrent={index === 0} isDestination={index === path.length - 1}  />
                            ))
                            }
                        </div>
                    ) : ""
                }
            </div>
        </div>
        </div>
  )
}

export default Mytrip