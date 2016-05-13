var Breeds = React.createClass({
  propTypes: {
    breeds: React.PropTypes.array
  },

  render: function() {

    return (
      <ul>
        {this.props.breeds.map(function(result, index) {
           return <Breed name={result.name} id={result.id} akc_rank={result.akc_rank} energy_level={result.energy_level} size={result.size} intro_year={result.size} group={result.group.name} key={index}/>;
        })}
      </ul>
    );
  }
});
