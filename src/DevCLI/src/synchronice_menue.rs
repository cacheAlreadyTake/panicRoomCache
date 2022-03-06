
use crate::menue;
use crate::helpers;


pub fn set_up(){
    
    menue::print_title("SYNCHRONICE");
    menue::print_menue(&[
        menue::build_menue_point("refr", "refresh DioJSONes configs"),
        menue::build_menue_point("docs", "create docs of MD-Files")
    ]);

    check_input()
}

fn check_input(){
    match helpers::input_validator::sanitice().as_str() {
        "refr" => refresh(),
        "docs" => helpers::bash_commands::build_mkdcos(),
         _     => print!("still WIP"),
    }
}



fn refresh(){}


