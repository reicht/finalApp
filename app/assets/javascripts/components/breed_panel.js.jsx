var Panel = ReactBootstrap.Panel;

var BreedPanel = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    akc_rank: React.PropTypes.number,
    group: React.PropTypes.string,
    energy: React.PropTypes.string,
    group: React.PropTypes.string,
    traits: React.PropTypes.array,
    id: React.PropTypes.number
  },

  render: function() {
    return (
      <Panel className="see-through">
        <div className="row">
          <div className="Col md={8}">
            <p><h1>{this.props.name}</h1> <h3>{this.props.group} Group</h3>  Ranked: {this.props.akc_rank}</p>
            <p> A generally {this.props.size} sized, {this.props.energy} dog.</p>
          </div>
          <div className="Col md={4}">
            <p>IMAGE BOX YO</p>
          </div>
        </div>
      </Panel>
    );
  }
});
