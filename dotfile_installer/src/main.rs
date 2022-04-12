use serde::{Deserialize, Serialize};
use pkg_manager::PkgWrapper;


#[derive(Deserialize, Serialize, Debug)]
struct Installer {
    pkgs: Vec<String>,
    post_install: String,
}

impl Installer {
    pub fn install(&self, pkg:&mut PkgWrapper) {
        let pkg_list = self.pkgs.join(" ");
        if let Err(_e) = pkg.install_pkg(pkg_list.clone()) {
            println!("Error while installing pkgs! {:#?}", pkg_list);
        }
        std::process::Command::new("bash").arg(&self.post_install).spawn().ok();
    } 
}

#[derive(Serialize, Deserialize, Debug)]
struct Config {
    pub bspwm: Installer,
    pub alacritty: Installer,
    pub polybar: Installer,
    pub emacs: Installer,
    pub neovim: Installer,
    pub fish: Installer
}

fn main() {

    let string = std::fs::read_to_string("./packages.json").expect("packages.json doesnt exist!");
    let config: Config = serde_json::from_str(string.as_str()).expect("invalid packages.json file!");
    let mut pkg = PkgWrapper::new(true).unwrap();
    config.bspwm.install(&mut pkg);
    config.polybar.install(&mut pkg);
    config.emacs.install(&mut pkg);
    config.neovim.install(&mut pkg);
    config.fish.install(&mut pkg);
    config.alacritty.install(&mut pkg);
}
