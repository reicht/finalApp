var Jumbotron = ReactBootstrap.Jumbotron;
var Glyphicon = ReactBootstrap.Glyphicon;
var Button = ReactBootstrap.Button;

var Breed = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    size: React.PropTypes.string,
    intro_year: React.PropTypes.number,
    akc_rank: React.PropTypes.number,
    energy_level: React.PropTypes.array,
    group: React.PropTypes.string,
    akc_name: React.PropTypes.string,
    id: React.PropTypes.number
  },

  getInitialState: function() {
    return {
      open: false
    };
  },

  render: function() {
    return (
      <Jumbotron className="see-through">
      <h1>{this.props.name}</h1>
      <h3>{this.props.group} Group</h3>
      <p>Ranked: {this.props.akc_rank}</p>
      <p>Inducted into the AKC in: {this.props.intro_year}</p>
      <p>Tends to be a {this.props.size} sized dog.</p>
      <p>Energy Level: {this.props.energy_level.map(function(val) {
        return (
          <Glyphicon glyph="star" key={val}/>
        )
      })} /  <Glyphicon glyph="star" /><Glyphicon glyph="star" /><Glyphicon glyph="star" /></p>
      </Jumbotron>
    );
  }
});
