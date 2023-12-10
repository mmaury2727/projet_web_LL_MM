import './App.css';
import Navbar from './components/Navbar';
import Body from './components/Body';
import Header from './components/Header';
import Details from './components/Details';
import 'font-awesome/css/font-awesome.min.css';
import {useState} from "react";

function App() {
  const [search, setSearch] = useState(false);

  const setSearchF = () => {
    setSearch(!search);
  }

  return (
    <div>
    <div className="App">
      <Header/>
      <Body search={search}></Body>
      <Navbar setSearchF={setSearchF}/>
    </div>
    </div>
  );
}

export default App;
