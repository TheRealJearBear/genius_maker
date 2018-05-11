import React, { Component } from 'react';
import NasaComponent from '../components/NasaComponent'


class NasaShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      nasas: [],
    }
  }

  componentDidMount() {
    fetch(`/api/v1/nasas.json`)
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
            error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      this.setState({
        nasas: body
      });
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render() {
    let nasas = this.state.nasas.map(nasa => {
      return(
        <NasaComponent
          key={nasa.id}
          copyright={nasa.copyright}
          date={nasa.date}
          explanation={nasa.explanation}
          title={nasa.title}
          url={nasa.url}

        />
      )
    })

    return(
      <div className="row">
          <h3 id="nasa-title">Nasa Picture Of The Day:</h3>
          {nasas}
      </div>
    )
  }
}




export default NasaShowContainer;
