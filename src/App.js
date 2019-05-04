import React, { Component } from 'react';
import { Button } from "shards-react";

import logo from './logo.svg';
import './App.css';

class App extends Component {
  render() {
    let options = {
      method: 'get',
      credentials: 'same-origin',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      }
    };

    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />

          <a href="/download" download="Ransomware.txt">
            <Button
              outline
              theme="secondary"
            >
              Win 1 Million Dollars
            </Button>
          </a>
        </header>
      </div>
    );
  }
}

export default App;
