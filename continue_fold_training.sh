for fold in {2..4}
do
    echo "Running fold ${fold}..."
    python nnUNet-2.2/nnunetv2/run/run_finetuning_stunet.py \
      004 3d_fullres ${fold} \
      -pretrained_weights "/home/llg/Insync/laurentletg@gmail.com/Google Drive/GDRIVE RECHERCHE/GDRIVE PROJECTS/2023_BRAIN_EXTRACTION/7_CODE_ANALYSIS_BRAIN_EXTRACTION/MODELS/STU-Net/weights/base_ep4k.model" \
      -tr STUNetTrainer_base_ft \
      --c
    echo "Completed fold ${fold}"
    echo ""
done

echo "All folds completed!".x