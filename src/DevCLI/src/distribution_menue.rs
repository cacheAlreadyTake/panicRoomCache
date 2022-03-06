
use crate::menue;
use crate::helpers;

use std::env;
use std::fs;
use std::fs::OpenOptions;
use std::io;
use crossterm::style::*;
use std::process::Command;

pub fn set_up(){
    
    menue::print_title("DISTRIBUTION");
    menue::print_menue(&[
        menue::build_menue_point("calc", "calculate Atlas of Game-elements"),
        menue::build_menue_point("chek", "check if Project is pushable") 
    ]);

    check_input()
}

fn check_input(){
    match helpers::input_validator::sanitice().as_str() {
        "calc" => calculate(),
        "chek" => check(),
         _     => print!("still WIP"),
    }
}





pub fn calculate(){
    menue::print_chapter("Set Back-up");
    menue::print_chapter("building Filepaths...");
    menue::print_chapter("Starts PatnicRoom...");


    let cached_gameinit_content = fs::read_to_string( get_game_init() ).expect("file not found");
    
    fs::remove_file( get_game_init() );
    fs::write(       get_game_init()  , "statistics");

    env::set_current_dir(helpers::filepaths::get_godot_exe()).is_ok();
    
    helpers::bash_commands::start_patnic_with_calc();
    helpers::text_formater::print_white("");


    fs::write( &get_game_init(), cached_gameinit_content );
    
    menue::print_chapter("Distributes Markdowns...");
}

fn get_game_init()->String{   return helpers::filepaths::get_game_init()   }







fn check(){
}



