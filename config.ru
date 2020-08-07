require './config/environment'

use Rack::MethodOverride
use MassEncountersController
use EncountersController
use UsersController
run ApplicationController
### put use controllername in here as well as 
## a run othercontroller
