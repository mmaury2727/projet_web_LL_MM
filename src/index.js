import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';

const root = ReactDOM.createRoot(document.getElementById('root'));
if ('serviceWorker' in navigator) {
  window.addEventListener('load', () => {
    navigator.serviceWorker.register('./serviceWorker.js')
      .then(registration => console.log('Service worker registered'))
      .catch(error => console.error('Error registering service worker', error));
  });
}

let deferredPrompt;

window.addEventListener('beforeinstallprompt', event => {
  event.preventDefault();

  deferredPrompt = event;

  showInstallPrompt();
});

function showInstallPrompt() {
  const installButton = document.querySelector('#install-button');

  installButton.addEventListener('click', () => {
    deferredPrompt.prompt();

    deferredPrompt.userChoice.then(choiceResult => {
      if (choiceResult.outcome === 'accepted') {
        console.log('User accepted the install prompt');
      } else {
        console.log('User dismissed the install prompt');
      }

      deferredPrompt = null;
    });
  });
}

root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);