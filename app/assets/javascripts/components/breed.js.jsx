var Jumbotron = ReactBootstrap.Jumbotron;
var Glyphicon = ReactBootstrap.Glyphicon;
var Button = ReactBootstrap.Button;

var Breed = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    size: React.PropTypes.string,
    intro_year: React.PropTypes.number,
    akc_rank: React.PropTypes.number,
    energy_level: React.PropTypes.number,
    group: React.PropTypes.string,
    id: React.PropTypes.number
  },

  // handleSubmit: function () {
  //     $.ajax({
  //       method: "POST",
  //       url: '/favs/create',
  //       data: {
  //         fav: {
  //           organization_id: this.props.id
  //         }
  //       }
  //     });
  // },

  render: function() {
    return (
      <Jumbotron className="see-through">
      <h2>{this.props.name}</h2>
      <h3>{this.props.group} Group</h3>
      <p>Ranked: {this.props.akc_rank}</p>
      <p>Inducted into the AKC in: {this.props.intro_year}</p>
      <p>Tends to be a {this.props.size} sized dog.</p>
      <p>Energy Level: {this.props.energy_level} / <Glyphicon glyph="star" /><Glyphicon glyph="star" /><Glyphicon glyph="star" /></p>
      <p><Button bsStyle="primary">See the Standard</Button></p>
      </Jumbotron>
    );
  }
});
