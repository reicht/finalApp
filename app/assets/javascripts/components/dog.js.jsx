var Jumbotron = ReactBootstrap.Jumbotron;
var Glyphicon = ReactBootstrap.Glyphicon;
var Image = ReactBootstrap.Image;
var Button = ReactBootstrap.Button;

var Dog = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    size: React.PropTypes.string,
    age: React.PropTypes.string,
    sex: React.PropTypes.string,
    bio: React.PropTypes.string,
    breeds: React.PropTypes.array,
    id: React.PropTypes.number
  },

  getInitialState: function() {
    return {
      open: false
    };
  },

  render: function() {

    var size_text = ''
    if (this.props.size === 'S') {
      size_text = 'Small'
    } else if (this.props.size === 'M') {
      size_text = 'Medium'
    } else {
      size_text = 'Large'
    }

    var sex_text = ''
    if (this.props.sex === 'M') {
      sex_text = 'Male'
    } else {
      sex_text = 'Female'
    }
    return (
      <Jumbotron className="see-through">
      <h1>{this.props.name}</h1>
      <h3>A {size_text}, {this.props.age}, {sex_text} pup.</h3>
      <p>{this.props.bio}</p>
      </Jumbotron>
    );
  }
});
