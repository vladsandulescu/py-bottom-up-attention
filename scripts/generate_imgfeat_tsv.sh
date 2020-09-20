cd $HOME/playground/hmm

source ~/anaconda3/etc/profile.d/conda.sh
conda activate bua

python detectron2_mscoco_proposal_maxnms_hm.py --split 'train'
python detectron2_mscoco_proposal_maxnms_hm.py --split 'dev'
python detectron2_mscoco_proposal_maxnms_hm.py --split 'test'
