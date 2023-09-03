///player_kill()
//kills the player

if (instance_exists(objPlayer) && (!global.noDeath && !global.debugNoDeath))
{
    global.deathSound = audio_play_sound(sndDeath, 0, false);
    
    if (!global.muteMusic)  //play death music
    {
        if (global.deathMusicMode == 1) //instantly pause the current music
        {
            audio_pause_sound(global.currentMusic);
            
            global.gameOverMusic = audio_play_sound(musOnDeath, 1, false);
        }
        else if (global.deathMusicMode == 2)    //fade out the current music
        {                
            with (objWorld)
                event_user(0);  //fades out and stops the current music
            
            global.gameOverMusic = audio_play_sound(musOnDeath, 1, false);
        }
        else if (global.deathMusicMode == 3)    //fade out the current music, but do not play the game over music
        {                
            with (objWorld)
                event_user(0);  //fades out and stops the current music
            
            //global.gameOverMusic = audio_play_sound(musOnDeath, 1, false);
        }
    }
    
    with (objPlayer)
    {
        instance_create(x, y, objBloodEmitter);
        instance_destroy();
    }
    
    instance_create(0, 0, objGameOver);
    
    if (global.gameStarted)
    {
        savedata_set_persistent("death", savedata_get("death") + 1);
        savedata_save(false); //save death/time
    }
}
