import os,glob
from shutil import copy
data_path ="/git/datasets/IEMOCAP_full_release/"
sessions = ['Session1', 'Session2', 'Session3', 'Session4', 'Session5']
to_path="/git/datasets/IEMOCAP_full_release/collected_new_files/original_wav_path"

os.makedirs(to_path,exist_ok=True)
for session in sessions:
    for from_path in glob.iglob(data_path+session+"/**/*.wav",recursive=True):
        _,filename=os.path.split(from_path)
        if not filename[0].isalpha():
            continue
        if not os.path.exists(os.path.join(to_path,filename)):
            copy(from_path,to_path)

