# Anony
Face anonymization and verification bash script.

**Anonymization** is done by face swapping library [Roop](https://github.com/Future-Mobility-Campus-Ireland/roop).

**Verification** is done by comparing faces on frame by frame basis between original and anonymized video file using [face_recognition](https://github.com/Future-Mobility-Campus-Ireland/face_recognition) library.

# Enviroment
- Ubuntu 20.04 (tested)
- Conda (Highly recommend to work with a venv or conda to avoid issues)


# [Conda](https://conda.io/projects/conda/en/latest/index.html) Installation
1. Follow steps for Linux [command line install](https://docs.conda.io/projects/miniconda/en/latest/#quick-command-line-install), if conda is not installed already.

2. Create conda enviroment with Python 3.9

   `conda create -n anony_py3.9 python=3.9`

3. Activate the enviroment

   `conda activate anony_py3.9`


# [Roop](https://github.com/Future-Mobility-Campus-Ireland/roop) library instalation

1. Go to the home directory

   `cd ~`

2. Chose one of two options, depending on hardware and software stack installed on the machine

   2.1. Simple [basic installation](https://github.com/s0md3v/roop/wiki/1.-Installation) which utilises CPU only. It is more likely to work on your computer, but will be quite slow

   2.2. More advanced [acceleration install](https://github.com/s0md3v/roop/wiki/2.-Acceleration). Unleash the full potential of your CPU and GPU. 


# [Face_recognition](https://github.com/Future-Mobility-Campus-Ireland/face_recognition) library installation

   1. Go to the home directory

      `cd ~`
      
   2. clone face_recognition library

      `git clone https://github.com/Future-Mobility-Campus-Ireland/face_recognition`

   3. Install dependencies

      `pip install -r requirements.txt`

   4. Finally, install this module from pypi using pip or pip3

      `pip install face_recognition`

# [Anonymization script](https://github.com/Future-Mobility-Campus-Ireland/Anony/blob/main/run_face_anonymization.sh) installation

   1. Go to the home directory

      `cd ~`

   2. clone face_recognition library

      `git clone git@github.com:Future-Mobility-Campus-Ireland/Anony.git`

      **Note:** Anony is private FMCI Github repo so it requires user to have [SSH key linked to Github account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).
      Otherwise just simple copy and paste content of bash script [run_face_anonymization.sh](https://github.com/Future-Mobility-Campus-Ireland/Anony/blob/main/run_face_anonymization.sh)


# [Anonymization script](https://github.com/Future-Mobility-Campus-Ireland/Anony/blob/main/run_face_anonymization.sh) running

   1. Move to the folder with anonymization script:

      `cd Anony`

   2. Run the script with providing absoulete path to the video to be anonymized

      `bash run_face_anonymization.sh ~/roop/dan.mp4`

      **Note:** If script doesn't run make sure that the script has executable permissions: `chmod u+x run_face_anonymization.sh`



