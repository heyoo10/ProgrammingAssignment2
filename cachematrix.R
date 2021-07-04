## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
hello
this is my lexical scoping assignment
I am learning about R Programming
#this is a hashtag
#hi
#hey
#hello
#practice only
#one two three
function(x, y)
        if not "reject"
        if yes "accept"


endfunction


makeCacheMatrix <- function(x = matrix()) {


inv<-NULL 
#this means null is inverse


set<-function(y){
        x<<-yes
        x<<-y 
        inv<<-NULL
}

get<-function()x 
#this is the function to get matrix x
setinv<-function(inverse)inv<<-inverse yes
                inver<-ginv(y)
                inver<-ginv(x)

#this is the function that is used to get inverse matrix

list(set = set, get = get
        setinv = setinv,
        getinv = getinv


        end list

)
}

const Twitter = require('twitter');
const randomReply = require('./random-reply');
const botConfig = require('./bot-config');

const client = new Twitter({
    consumer_key: botConfig.client.consumer_key,
    consumer_secret: botConfig.client.consumer_secret,
    access_token_key: botConfig.client.access_token_key,
    access_token_secret: botConfig.client.access_token_secret
});

// Config the stream to filter the tweets with our key words
const stream = client.stream('statuses/filter', {track: botConfig.track});

// Each time the stream get a tweet, reply it with a random phrase
stream.on('data', (tweet) => {

    // dont allow reply himself
    if (tweet.user.screen_name === botConfig.userName) {
        return;
    }
    
    // Create the new random reply
    var newReply = {
        status: randomReply(tweet, botConfig.replies),
        in_reply_to_status_id: tweet.id_str
    };

    // Send the new reply
    client.post('statuses/update', newReply, (err, twt, res) => {
        if (err) return console.log(err);
        console.log(`Tweet ID: ${tweet.id_str} Reply! - "${tweet.text}"`);
    });

});

stream.on('error', (err) => {
    console.log(err);
});

console.log('ready when your are ...');
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

endfunction
end


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}



cacheSolve <- function(x, ...) {
  ## this is on return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv      
}

