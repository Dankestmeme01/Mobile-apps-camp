--Drag and Drop

-- Created by: Joe S
-- Created on July 18 2017
-- Created for: Mobile Apps Summer Camp
-- This programs displays an image and the user can move via DRAG & DROP

-- Use this function to perform your initial setup
-- Happens once, and only once
-- Global Variables
bugName = "Tyrian Remastered:Boss D"
bugPosition = vec2()
--bugPosition.x = bugPosition.x + ()


function setup()
    
    -- setup dispaly and drawing functions
    supportedOrientations(LANDSCAPE_ANY)
    -- get rid of right console, so only fullscreen shows
    displayMode(FULLSCREEN)
    
    -- Housekeeping, sets style to null
    noFill()
    noSmooth()
    noStroke()
    
    -- Takes the above commands and pushes them on the stack for the styles to be useable
    pushStyle()
  bugPosition = vec2(WIDTH/2, HEIGHT/2)  
    
end

-- This function gets called once every frame
-- Happens 60x/second
function draw()
bugPosition.x = bugPosition.x + (Gravity.x*10)
bugPosition.y = bugPosition.y + (Gravity.y*10)
    sprite("SpaceCute:Background", 512, 384, 1024, 768) 
    sprite("", bugPosition.x, bugPosition.y) 
end
