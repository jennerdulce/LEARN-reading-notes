How to use an external api with your react in rails application (back end)
1: We need to add a gem to handle the http request from our server to the target server (in this example we are using Yelp API)
In your gemfile add gem 'httparty'
Documentation: https://github.com/jnunemaker/httparty
2: we need to add your API key in your credentials.
In your terminal run:
$ EDITOR="nano --wait" rails credentials:edit
It should open a new editor.
Using the arrow keys move down to a new line. Hit return to make a gap between lines. Then type the name of your API key and the key associated with it:. (in this case we are using yelp) e.g:
yelp:
 Access_key_id: <yourkeyhere>
Hit control+o then return to save (you should seen x lines written)
Control+x to exit
$ rails c
$ Rails.application.credentials.dig(:yelp,:access_key_id)
This should return your api key. If it did not you might have had syntax errors in the nano editor so run those again
In our home_controller.rb file we make a new method:
This method has to have a unique name (not index - it will run on mount which will break)
def yelp
       api_key = Rails.application.credentials.dig(:yelp,:access_key_id)
 
       restaurant = HTTParty.get("https://api.yelp.com/v3/businesses/search?location=#{params[:location]}&term=#{params[:restaurant]}",headers: {Authorization: "Bearer #{api_key}"})
      
       if restaurant
           render json: restaurant
       else
           render json: restaurant.errors , status:422
       end
   end
Next we need to make a new route:
get 'home/:location/:restaurant', to: 'home#yelp'
Finally we can connect our backend request with an api endpoint in our front end:
readYelpRestaurant = (location, restaurant) => {
     fetch(`home/${location}/${restaurant}`,{
       headers: {
         "Content-Type": "application/json"
       }
     })
     .then(response => response.json())
     .then(payload=> this.setState({yelpRestaurant: payload}))
     .catch(errors => console.log("Yelp Restaurant read:", errors))
   }
An example of running the method with params looks like below:
 <button  onClick={(e)=>this.readYelpRestaurant(`${this.state.ip.postal}`, 'tacobell')}>Click</button> (edited) 