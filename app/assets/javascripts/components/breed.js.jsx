var Jumbotron = ReactBootstrap.Jumbotron;
var Button = ReactBootstrap.Button;

var Breed = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    size: React.PropTypes.string,
    intro_year: React.PropTypes.number,
    akc_rank: React.PropTypes.number,
    energy_level: React.PropTypes.number,
    group_id: React.PropTypes.number,
    id: React.PropTypes.number
  },

  // handleSubmit: function () {
  //     $.ajax({
  //       method: "POST",
  //       url: '/favs/create',
  //       data: {
  //         fav: {
  //           cheese_id: this.props.id
  //         }
  //       }
  //     });
  // },

//   <div className = "row">
//     <a href = {'/cheeses/' + this.props.id}>
//     <div className='btn btn-info'>Cheese: {this.props.name}</div>
//     </a>
//     <div className='btn btn-primary pull-right' onClick={this.handleSubmit}>Love Dis Cheeze</div>
//   </div>
// );

  render: function() {
    return (
      <Jumbotron className="see-through">
      <h1>{this.props.name}</h1>
      <p>Simple Test Readout</p>
      <p>Ranked: {this.props.akc_rank}</p>
      <p><Button bsStyle="primary">See the Standard</Button></p>
      </Jumbotron>
    );
  }
});
