command: "curl -s wttr.in/Chengdu?format=3"

refreshFrequency: 3000000 # ms


# Add more or less <li> tags with <br> tags at constant intervals
# for a grid system at whatever size you want.

render: (_) ->
  """
  <div class="container">
  </div>
  """

update: (output, domEl) ->
  console.log(output)
  $(domEl).find('.container').text(output)
style: """

  padding: 0;
  margin: 0;

  .container {
    background: rgba(255, 255, 255, .01);
    text-align: center;
    color: white;
    position: fixed;
    right: 5%;  //Adjust this to place grid wherever you want.
    top: 1%;
  }
  
"""
