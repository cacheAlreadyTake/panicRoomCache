MACHINE_TYPE=`uname -m`


echo "---- STARTING INSTALLATION ----"
sleep 1



echo
echo "Creating Directories..."
sleep 1
cd ".."
mkdir "VSCode Insiders"
mkdir "Workspace"
echo "DONE"



echo
echo "Unpacking VSCode..."
sleep 1
cd "installer/ressources"
if [ ${MACHINE_TYPE} == 'x86_64' ]; then
  echo "64 Bit Operating System detected"
  cp -r "VSCode insider 1.65.0 64 Bit.zip" "../../VSCode Insiders/VSCode insider 1.65.0.zip"
else
  echo "32 Bit Operating System detected"
  cp -r "VSCode insider 1.65.0 32 Bit.zip" "../../VSCode Insiders/VSCode insider 1.65.0.zip"
fi
cd "../../VSCode Insiders/"
unzip -oqq "VSCode insider 1.65.0.zip"
echo "DONE"


echo
echo "Importing Custome Settings..."
sleep 1
mkdir -p "data/user-data/User"
cp "../installer/ressources/keybindings.json" "data/user-data/User"
cp "../installer/ressources/settings.json" "data/user-data/User"
cp -r "../installer/ressources/snippets" "data/user-data/User"
echo "DONE"



echo
echo "Importing Cached Extensions..."
sleep 1
cp -r "../installer/ressources/extensions" "../VSCode Insiders/data"
echo "DONE"



echo
echo "Cloning Repositories"
cd "../Workspace"
git clone "https://github.com/mizzitgamestudios/PatnicRoom.git"
git clone "https://github.com/mizzitgamestudios/mizzitgamestudios.github.io.git"



echo "FINISHED!"
echo "you can start your custome IDE via its executable in the directory VSCode Insiders!"

read -p "press enter to close this window"
