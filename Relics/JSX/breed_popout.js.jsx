<p><Button bsStyle="primary" onClick={ ()=> this.setState({ open: !this.props.open })}>See the Standard</Button></p>
<Panel collapsible expanded={this.state.open}>
  <div class="row standard-bearer">
    <iframe src="http://www.akc.org/embeds/breed-standard/{this.props.akc_name}" frameborder="0" width="90%" height="90%"></iframe>
  </div>
</Panel>
