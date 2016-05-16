var Navbar = ReactBootstrap.Navbar;
var NavItem = ReactBootstrap.NavItem;
var Nav = ReactBootstrap.Nav;
var NavDropdown = ReactBootstrap.NavDropdown;
var MenuItem = ReactBootstrap.MenuItem;

var Nav_bar = React.createClass({

  handleSignOut: function () {
      $.ajax({
        method: "DELETE",
        url: '/sign_out',
        success: function(response) {
          window.location.replace("/");
        }
      });
  },

  render: function () {
    return (
      <Navbar inverse className="nav-custom">
        <Navbar.Header>
          <Navbar.Brand>
            <a href="/">Doogle</a>
          </Navbar.Brand>
          <Navbar.Toggle />
        </Navbar.Header>
        <Navbar.Collapse>
          <Nav>
            <NavItem eventKey={1} href="/dogs">Dogs</NavItem>
            <NavItem eventKey={2} href="/organizations">Organizations</NavItem>
            <NavDropdown eventKey={3} title="Pick an Org" id="basic-nav-dropdown">
              <MenuItem eventKey={3.1} href="/organizations/1">Austin Pets Alive!</MenuItem>
              <MenuItem eventKey={3.2} href="/organizations/2">Austin Boxer Rescue</MenuItem>
              <MenuItem eventKey={3.3} href="/organizations/3">Texas Sweeties Dog Rescue</MenuItem>
              <MenuItem eventKey={3.4} href="/organizations/4">Pflugerville Pets Alive!</MenuItem>
              <MenuItem eventKey={3.5} href="/organizations/5">Central Texas Dachshund Rescue</MenuItem>
              <MenuItem eventKey={3.6} href="/organizations/6">Cuz i Matter Animal Rescue</MenuItem>
              <MenuItem eventKey={3.7} href="/organizations/7">Terrier Rescue of Texas</MenuItem>
              <MenuItem eventKey={3.8} href="/organizations/8">Greyhound Pets of America/Central Texas</MenuItem>
              <MenuItem eventKey={3.9} href="/organizations/9">Austin Sheltie Rescue Inc</MenuItem>
              <MenuItem eventKey={3.10} href="/organizations/10">CARE Companion Animal Rescue Effort</MenuItem>
              <MenuItem eventKey={3.11} href="/organizations/11">Catahoula Rescue Inc.</MenuItem>
              <MenuItem eventKey={3.12} href="/organizations/12">Austin Animal Center</MenuItem>
              <MenuItem eventKey={3.13} href="/organizations/13">Central Texas SPCA, A No-Kill Animal Shelter</MenuItem>
              <MenuItem eventKey={3.14} href="/organizations/14">Heart of Texas Lab Rescue, Inc.</MenuItem>
              <MenuItem eventKey={3.15} href="/organizations/15">PAWS of Austin</MenuItem>
            </NavDropdown>
          </Nav>
            <Nav pullRight>
              <NavItem eventKey={1} onClick={this.handleSignOut}>Log Out</NavItem>
            </Nav>
        </Navbar.Collapse>
      </Navbar>
      )}
});
