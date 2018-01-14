class ChambersContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      chambers: []
    };
    this.showChambers = this.showChambers.bind(this);
    this.retrieveChambers = this.retrieveChambers(this);
  }

  componentWillMount() {
    this.retrieveChambers()
  }

  retrieveChambers() {
    $.ajax({
      url: '/chambers',
      type: 'GET',
      dataType: 'JSON'
    }).done(function(data) {
      this.setState({chambers: data})
    }).fail(function(data) {
      console.log(data)
    })
  }

  showChambers() {
    this.state.chambers.map( chamber => {
      return(
        <Chamber data={chamber} />
      )
    })
  }

  render() {
    return(
      <div>
        {this.showChambers()}
      </div>
    )
  }
}