var Orgs = React.createClass({
  propTypes: {
    orgs: React.PropTypes.array
  },

  render: function() {

    return (
      <ul>
        {this.props.orgs.map(function(result, index) {
          return <OrgBar name={result.name} id={result.id} address={result.address} email={result.email} city={result.city} state={result.state} zip={result.zip} dog_count={result.dogs_count} key={index}/>;
        })}
      </ul>
    );
  }
});
