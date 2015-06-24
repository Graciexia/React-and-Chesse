var Welcome = React.createClass({
  render: function() {

    return (

      <div className="welcome-page">

        <img className='welcome-image' src="/assets/cheese3.jpg" alt="cheese"/>

        <div className="welcome-text">

          <h1>Something Different</h1>

          <h2>A Cheese Expert App for your Plate </h2>

          <p>Cheese is nutritious food made mostly from the milk of cows but also other mammals, including sheep, goats, buffalo, reindeer, camels and yaks. Around 4000 years ago people have started to breed animals and process their milk.
            <br/>
            <strong>Sign up! Make your own cheese plate.
            </strong>
          </p>

        </div>

        <button className="login-btn" onClick={this.gotoLogin}>
          <strong>Log In</strong>
          </button>

        <button className="join-btn" onClick={this.gotoSignup}>
          <strong>Sign Up!</strong>
        </button>

          <footer>
          Created by Gracie
        </footer>
      </div>
    );
  },
  gotoLogin: function(e) {
    window.location.href = '/login';
  },
  gotoSignup: function(e) {
    window.location.href = '/signup';
  }
});

