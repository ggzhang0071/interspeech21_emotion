wav_path=""
for f in ./*.csv; 
do 
    sed -i 's/\/path_to_wavs/\/git\/datasets\/IEMOCAP_full_release\/collected_new_files\/original_wav_path/' $f
done


