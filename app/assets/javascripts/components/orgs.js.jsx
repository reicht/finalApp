var Orgs = React.createClass({
  propTypes: {
    orgs: React.PropTypes.array
  },

  render: function() {

    return (
      <ul>
        {this.props.orgs.map(function(result, index) {
          return <OrgBar name={result.name} id={result.id} description={result.description} site_url={result.site_url} key={index}/>;
        })}
      </ul>
    );
  }
});
