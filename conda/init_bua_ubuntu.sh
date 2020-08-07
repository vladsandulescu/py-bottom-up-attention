conda create -n bua python=3.6 pip --yes
source ~/anaconda3/etc/profile.d/conda.sh
conda activate bua

# conda install -c psi4 gcc-5 --yes

# conda install -c anaconda joblib --yes
# conda install -c conda-forge ipywidgets --yes

# conda install -n base jupyter labextension install @jupyter-widgets/jupyterlab-manager@1.1

# conda install cudatoolkit=9.0 -c pytorch --yes

cd $HOME/playground/hmm/lib
# git clone https://github.com/airsplay/py-bottom-up-attention.git
cd py-bottom-up-attention

# Install python libraries
pip install -r requirements.txt
# conda install -c conda-forge pycocotools
pip install 'git+https://github.com/cocodataset/cocoapi.git#subdirectory=PythonAPI'

# Install detectron2
# python -m pip install detectron2 -f \
#   https://dl.fbaipublicfiles.com/detectron2/wheels/cu92/torch1.4/index.html
python setup.py build develop

# or if you are on macOS
# MACOSX_DEPLOYMENT_TARGET=10.9 CC=clang CXX=clang++ python setup.py build develop

# or, as an alternative to `setup.py`, do
# pip install [--editable] .

pip install ipykernel
python -m ipykernel install --prefix=/home/ubuntu/anaconda3 --name bua --display-name "Python (bua)"

cd $HOME
echo "Done"
