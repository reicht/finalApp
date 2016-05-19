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
      <a href={'/breeds/' + this.props.id}>
        <Panel className="see-through-panel">
          <div className="row">
            <div className="col-sm-8">
              <h1 className="in-line">{this.props.name}</h1> <h3 className="in-line">{this.props.group} Group</h3>  Ranked: {this.props.akc_rank}
              <p> A generally {this.props.size} sized, {this.props.energy} dog.</p>
            </div>
              <div className="col-md-4">
              <p>IMAGE BOX YO</p>
            </div>
          </div>
        </Panel>
      </a>
    );
  }
});
