var Dashboard = React.createClass({
  propTypes: {
    watched_orgs: React.PropTypes.array,
    recent_dogs: React.PropTypes.array,
    watched_recent_dogs: React.PropTypes.array
  },

  render: function() {

    return (
      <div>
        <div>
          <p>Recently added puppies:</p>
          <Dogs dogs={this.props.recent_dogs}/>
        </div>
        <div>
          <p>Recent pups at watched Organizations:</p>
          <Dogs dogs={this.props.watched_recent_dogs}/>
        </div>
        <div>
          <p>Your watched organizations:</p>
          <Orgs orgs={this.props.watched_orgs}/>
        </div>
      </div>
    );
  }
});
