var OrgPanels = React.createClass({
  propTypes: {
    orgs: React.PropTypes.array,
    watches: React.PropTypes.array
  },

  render: function() {

    var watch = this.props.watches

    return (
      <ul>
        {this.props.orgs.map(function(result, index) {
          return <OrgPanel name={result.name} id={result.id} address={result.address} email={result.email} city={result.city} state={result.state} zip={result.zip} dog_count={result.dogs_count} watched={watch} key={index}/>;
        })}
      </ul>
    );
  }
});
