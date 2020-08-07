cd $HOME/playground/hmm

source ~/anaconda3/etc/profile.d/conda.sh
conda activate py_bua_p36

python detectron2_mscoco_proposal_maxnms_hm.py --split 'train'
python detectron2_mscoco_proposal_maxnms_hm.py --split 'dev'
python detectron2_mscoco_proposal_maxnms_hm.py --split 'test'