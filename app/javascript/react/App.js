import React from 'react';
import { Route, Router, browserHistory } from 'react-router';
import NasaShowContainer from './containers/NasaShowContainer'



const App = props => {
  return (
      <Router history={browserHistory}>
          <Route path='/nasas' component={NasaShowContainer} />
      </Router>
  )
}

export default App;
