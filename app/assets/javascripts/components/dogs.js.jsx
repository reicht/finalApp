var Dogs = React.createClass({
  propTypes: {
    dogs: React.PropTypes.array
  },

  render: function() {

    return (
      <ul>
        {this.props.dogs.map(function(result, index) {
          return <DogPanel name={result.name} id={result.id} sex={result.sex} age={result.age} pic_url={result.md_pic_url} org_name={result.org_name} organization_id={result.organization_id} key={index}/>;
        })}
      </ul>
    );
  }
});