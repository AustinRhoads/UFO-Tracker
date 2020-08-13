
[1mFrom:[0m /home/aush/Development/code/UFO-Tracker/app/controllers/users_controller.rb:16 self.POST /signup:

    [1;34m11[0m:         erb [33m:[1;33m'[0m[33musers/signup[1;33m'[0m[33m[0m
    [1;34m12[0m:         [32mend[0m
    [1;34m13[0m:     [32mend[0m
    [1;34m14[0m: 
    [1;34m15[0m:     post [31m[1;31m'[0m[31m/signup[1;31m'[0m[31m[0m [32mdo[0m 
 => [1;34m16[0m:         binding.pry
    [1;34m17[0m:         
    [1;34m18[0m:         @user = [1;34;4mUser[0m.new(params)
    [1;34m19[0m:           [32mif[0m @user.save
    [1;34m20[0m:               session[[33m:user_id[0m] = @user.id
    [1;34m21[0m:               redirect [31m[1;31m"[0m[31m/users[1;31m"[0m[31m[0m

