require './config/environment'

use Rack::MethodOverride
use CaseFilesController
use EncountersController
use UsersController
run ApplicationController
### put use controllername in here as well as 
## a run othercontroller
