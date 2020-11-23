import React, { Component } from 'react';

class PokeForm extends Component {
  constructor() {
    super();
    this.state = {
      query: ''
    };
    this._handleInput = this._handleInput.bind(this);
    this._handleSubmit = this._handleSubmit.bind(this);
  }




  _handleInput(event) {
    this.setState({query: event.target.value});
  }

  _handleSubmit(event) {
    event.preventDefault();
    this.props.onSubmit( this.state.query )
  }


  render () {
    return (
      <form onSubmit={ this._handleSubmit }>
        <input type="search" placeholder="Charizard" required onInput={ this._handleInput }/>
        <input type="submit" value="Search" />
      </form>
    );
  }
}

export default PokeForm;
