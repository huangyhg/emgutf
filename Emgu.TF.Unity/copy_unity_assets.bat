cd Assets
cd Emgu.TF
mkdir Assets
cd Assets
mkdir Scripts
cd Scripts
rm -rf Emgu.TF.Util
mkdir Emgu.TF.Util
rm -rf Emgu.TF
mkdir Emgu.TF
rm -rf Emgu.TF.Models
mkdir Emgu.TF.Models
rm -rf Emgu.Models
mkdir Emgu.Models
cd ..
cd ..
cd ..
cd ..

cp ../tensorflow/LICENSE Assets/Emgu.TF/Assets/Documentation/tensorflow.license.txt

cp ../Emgu.TF.Util/*.cs Assets/Emgu.TF/Assets/Scripts/Emgu.TF.Util/
cp ../Emgu.TF/*.cs Assets/Emgu.TF/Assets/Scripts/Emgu.TF/
cp ../Emgu.TF.Models/*.cs Assets/Emgu.TF/Assets/Scripts/Emgu.TF.Models/
cp ../Emgu.Models/*.cs Assets/Emgu.TF/Assets/Scripts/Emgu.Models/

cp ../lib/x64/* Assets/Emgu.TF/Plugins/x86_64/


