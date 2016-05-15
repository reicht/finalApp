var Grid = ReactBootstrap.Grid;

var Dashboard = React.createClass({
  propTypes: {
    watched_orgs: React.PropTypes.array,
    recent_dogs: React.PropTypes.array,
    watched_recent_dogs: React.PropTypes.array
  },

  render: function() {

    return (
      <div>
        <h3>Recently Updated Dogs:</h3>
        <div>
          <DogBlocks dogs={this.props.recent_dogs}/>
        </div>
        <h3>Watched Organizations Recent Dogs</h3>
        <div>
          <DogBlocks dogs={this.props.watched_recent_dogs}/>
        </div>
        <h3>Your watched organizations:</h3>
        <div>
          <Orgs orgs={this.props.watched_orgs}/>
        </div>
      </div>
    );
  }
});
