import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import axios from 'axios';

class App extends Component {
  constructor(){
    super();
    this.state = {
      superheroes: []
    }
  }
  componentDidMount(){
    axios.get('http://localhost:3000/api/heroes').then(res => {
      this.setState({
        superheroes: res.data
      })
    })
  }

  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">Welcome to React</h1>
        </header>    
        {this.state.superheroes.map(e => {
          return <div key={e.id}>
          <h1>Name: {e.name}</h1>
          <h1>Alias: {e.street_name}</h1>
          <h1>Age: {e.age}</h1>
          <h1>Powers: {e.powers}</h1>
          <img src={e.picture_url} alt="picture"/>
          </div>
        })}
      </div>
    );
  }
}

export default App;
