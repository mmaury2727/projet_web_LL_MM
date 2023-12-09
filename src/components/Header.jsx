import React from 'react'
import Search from './Search'

function Header() {
  return (
    <header>
        <div className='logo-container'>
            <img src='logo.png'></img>
        </div>
        <Search></Search>
    </header>
  )
}

export default Header