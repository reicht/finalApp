var DogBlocks = React.createClass({
  propTypes: {
    dogs: React.PropTypes.array
  },

  render: function() {

    return (
      <div className="dog-block-wrapper">
        {this.props.dogs.map(function(result, index) {
          return <DogBlock name={result.name} id={result.id} sex={result.sex} age={result.age} pic_url={result.md_prof_url} org_name={result.orgs_name} key={index}/>;
        })}
      </div>
    );
  }
});
