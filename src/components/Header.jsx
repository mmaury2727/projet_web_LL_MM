import React from 'react'
import { useLocation } from 'react-router-dom'
function Header() {
  
  const { pathname } = useLocation();
  if (pathname === "/"){
    return (
      <header className='header'>
          <div className='logo-container'>
              <img src='logo.png'></img>
          </div>
      </header>
    )
  }
  return ""
}

export default Header