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
  Link
} from "react-router-dom";
import Home from './pages/home';
import Activity from './pages/activity';
import Profile from './pages/profile';
import axios from 'axios';

function App() {
  const [search, setSearch] = useState(false);
  const [data, setData] = useState([]);
  const [loading, setLoading] = useState(true);

  const setSearchF = () => {
    setSearch(!search);
  }

  useEffect(() => {
    axios.get('http://localhost/api.php', {
    })
    .then(function (response) {
      setData(response.data);
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
      <Header/>
      <Router>
        <Routes>
          <Route path="/" element={<Home data={data} search={search} />} />
          <Route path="/activity" element={<Activity data={data} />} />
        </Routes>
      </Router>
      <Navbar setSearchF={setSearchF}/>
    </div>
    </div>
  );
}

export default App;
