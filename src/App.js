import './App.css';
import Navbar from './components/Navbar';
import Body from './components/Body';
import Header from './components/Header';
import Details from './components/Details';
import 'font-awesome/css/font-awesome.min.css';
import {React, useEffect, useState} from 'react'
import {
  BrowserRouter as Router,
  Routes,
  Route,
  Link,
  useLocation
} from "react-router-dom";
import Home from './pages/home';
import Activity from './pages/activity';
import Profile from './pages/profile';
import axios from 'axios';
import Mytrip from './pages/mytrip';

function App() {
  const [search, setSearch] = useState(false);
  const [data, setData] = useState([]);
  const [stations, setStations] = useState([]);
  const [loading, setLoading] = useState(true);

  const setSearchF = () => {
    setSearch(!search);
  }

  useEffect(() => {
    axios.get('http://localhost/api.php?req=hendeks', {
    })
    .then(function (response) {
      setData(response.data);
      axios.get('http://localhost/api.php?req=stations', {
      }).then((data)=>{
        setStations(data.data);
        setLoading(false); // Set loading to false when data is fetched
      }).catch((e)=>{
        console.log('Error fetching data:', e);
        setLoading(false); // Also set loading to false on error
      })
      setLoading(false); // Set loading to false when data is fetched
    })
    .catch(error => {
      console.log('Error fetching data:', error);
      setLoading(false); // Also set loading to false on error
    });  
  }, []);

  if (loading) {
    return <div>Loading...</div>; // Or your loading spinner
  }

  return (
    <div>
    <div className="App">
      {
        window.location.pathname == "/" ? <Header/> : ""
      }
      <Router>
        <Routes>
          <Route path="/" element={<Home data={data} stations={stations} search={search} />} />
          <Route path="/activity" element={<Activity data={data} />} />
          <Route path="/mytrip" element={<Mytrip data={data} stations={stations} />} />
        </Routes>
      </Router>
      <Navbar setSearchF={setSearchF}/>
    </div>
    </div>
  );
}

export default App;
