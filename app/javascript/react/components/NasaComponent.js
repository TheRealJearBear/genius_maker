import React from 'react';

const NasaComponent = props => {
    return (
    <div className="nasa-tile-maker">
    <p id="nasa-tile__title">{props.title}</p>
    <p id="nasa-tile__date">Day: {props.date}</p>
      <img src={props.url} />
      <p id="nasa-tile__explanation">Explanation: {props.explanation}</p>
      <p id="nasa-tile__copyright">Copyright: {props.copyright}</p>
    </div>
    );
  }

// React.render(<FormComponent />, document.getElementById('app'));

export default NasaComponent;
