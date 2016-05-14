var Breeds = React.createClass({
  propTypes: {
    breeds: React.PropTypes.array
  },

  render: function() {

    return (
      <ul>
        {this.props.breeds.map(function(result, index) {

          var energy_text = ''
          if (result.energy_level === 1) {
            energy_text = 'relaxed'
          } else if (result.energy_level === 2) {
            energy_text = 'playful'
          } else {
            energy_text = 'energetic'
          }

          var group_name = ''
          if (result.group_id === 1) {
            group_name = 'Herding'
          } else if (result.group_id === 2) {
            group_name = 'Hound'
          } else if (result.group_id === 3) {
            group_name = 'Non Sporting'
          } else if (result.group_id === 4) {
            group_name = 'Sporting'
          } else if (result.group_id === 5) {
            group_name = 'Terrier'
          } else if (result.group_id === 6) {
            group_name = 'Toy'
          } else if (result.group_id === 7) {
            group_name = 'Working'
          } else if (result.group_id === 8) {
            group_name = 'FSS'
          } else {
            group_name = 'Misc'
          }
          return <BreedPanel name={result.name} id={result.id} akc_rank={result.akc_rank} energy={energy_text} size={result.size} group={group_name} key={index}/>;
        })}
      </ul>
    );
  }
});
