import React from "react";
import PropTypes from "prop-types";

class HelloWorld extends React.Component {
  render () {
    return (
      <div className="btn btn-primary">
        Greeting: {this.props.greeting}
      </div>
    );
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string,
};

export default HelloWorld;
