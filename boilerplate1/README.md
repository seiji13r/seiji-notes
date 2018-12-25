# Nodejs Passport Express & Handlebars <!-- omit in toc -->

# Workflow

* Install Dependencies ´npm init´, ´npm install´
* Create `app.js` or `server.js`
    * Include Dependencies `require`
    * DB connection setup.
    * Initiallize app calling express. `var app = express()`.
    * Set up the View Engine.
    * Set up the Body Parser Middleware (json and urlencoded).
    * Set up cookie Parser ?????
    * Set up static directories.
    * Set up session
    * Set up expressValidator (used for format Validation Errors) [Express Validator](https://express-validator.github.io/docs/)
    * Setup Connect Flash and Flash Messages
    * Setup Express Routes (require the user defined ones in ./routes)
        * Create the Routes directory with the routes for signin, login, logout.
        * Create the Handlebars Views, or use Modals for one page view. 
        * Create the Post Routes to handle registration and login

# Auth Use Cases

## Registration
* User:
    1. Go into URL
    2. Click Subscribe, Resgister or Signup.
3. Browser:
    1. Checks inputs before posting (Optional).
        1. If Error prevent Submit and Notify User with page Error messages
        2. If not Errors "post" the data to the server. (AJAX POST)
3. Server:
    1. Validate inputs in the req.body. (Mandatory)
        1. If Errors Prevent following Process and respond back with errors
        2. If No Errors
            1. Check if user exist
                1. If new user register and respond success registration.
                2. If existing user, respond with existing user message.
3. Browser:
    1. If errors from Server. Print them in the screen.
        * Data Input Errors.
        * Existing User Error.
    3. If no errors Display Registration Success Message.