import logo from './logo.svg';
import './App.css';
import Navbar from './components/Navbar';
import Body from './components/Body';
import Header from './components/Header';
import Details from './components/Details';

function App() {
  return (
    <div>
    <div className="App">
      <Header/>
      <Body></Body>
      <Navbar/>
    </div>
    <Details/>
    </div>
  );
}

export default App;
