# nUNet part
1. Activate the nnunet env
```bash
conda activate nnunet
```
2. Install the required packages
```bash
# Install common dependencies for nnUNet v2
pip install pytorch_lightning
pip install tensorboard
pip install nibabel
pip install matplotlib
pip install scikit-image
pip install medpy
pip install pandas
pip install batchgenerators>=0.23
pip install tqdm
pip install dicom2nifti
pip install scipy
pip install numpy
pip install SimpleITK>=2.0.0
pip install acvl_utils
pip install dynamic-network-architectures
conda install conda-forge::python-blosc2
pip install connected-components-3d


3. environment variables

```bash
export nnUNet_raw="/home/llg/Dropbox/PYTHONCODES/nnUNet/Datasets_to_put_here/nnUNet_raw"
export nnUNet_preprocessed="/home/llg/Insync/laurentletg@gmail.com/Google Drive/GDRIVE RECHERCHE/GDRIVE PROJECTS/2023_BRAIN_EXTRACTION/7_CODE_ANALYSIS_BRAIN_EXTRACTION/MODELS/STU-Net/data/nUNet_preprocessed"
export nnUNet_RESULTS="/home/llg/Insync/laurentletg@gmail.com/Google Drive/GDRIVE RECHERCHE/GDRIVE PROJECTS/2023_BRAIN_EXTRACTION/7_CODE_ANALYSIS_BRAIN_EXTRACTION/MODELS/STU-Net/data/nUNet_results"
```


4. plan and process
```aiignore
nnUNetv2_plan_and_preprocess -d 004 -c 3d_fullres
```

4. Download the weights


5. fine tune
```aiignore
python nnunetv2/run/run_finetuning_stunet.py Dataset004 3d_fullres 0 -pretrained_weights "/home/llg/Insync/laurentletg@gmail.com/Google Drive/GDRIVE RECHERCHE/GDRIVE PROJECTS/2023_BRAIN_EXTRACTION/7_CODE_ANALYSIS_BRAIN_EXTRACTION/MODELS/STU-Net/weights/small_ep4k.model" -tr STUNetTrainer_small_ft --checkpoint_not_required

```

Would need to repeat for all folds




