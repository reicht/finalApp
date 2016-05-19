var Dogs = React.createClass({
  propTypes: {
    dogs: React.PropTypes.array
  },

  render: function() {

    return (
      <ul className="org-dogs">
        {this.props.dogs.map(function(result, index) {
          return <DogPanel name={result.name} id={result.id} sex={result.sex} age={result.age} prof_url={result.md_prof_url} org_name={result.orgs_name} organization_id={result.organization_id} key={index}/>;
        })}
      </ul>
    );
  }
});
