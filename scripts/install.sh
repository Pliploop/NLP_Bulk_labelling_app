echo "Building virtualenv..."
rm -rf venv
pip install virtualenv
python -m virtualenv venv
source venv/Scripts/activate
python -m pip install -r requirements.txt --no-cache-dir
python -m pip install -e .

bash ./scripts/download_models.sh
bash ./scripts/download_sample_data.sh
mkdir data/plotting_data/cache