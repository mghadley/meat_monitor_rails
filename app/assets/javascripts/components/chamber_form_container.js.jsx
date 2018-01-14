class ChamberFormContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = { helloing: true };
    this.displayTitle = this.displayTitle.bind(this);
    this.toggleHello = this.toggleHello.bind(this);
  }

  displayTitle() {
    if(this.state.helloing) {
      return (
        <h1>Hello</h1>
      )
    } else {
      return (
        <h1>Goodbye</h1>
      )
    }
  }

  toggleHello() {
    newHello = !this.state.helloing
    this.setState({ helloing: newHello });
  }

  render() {
    return (
      <div>
        {this.displayTitle()}
        <button onClick={this.toggleHello}>Click Me</button>
      </div>
    );
  }
};
