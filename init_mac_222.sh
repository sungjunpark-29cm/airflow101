# mac은 apple silicon을 사용하고, python3.10가 설치되어 있다고 가정 (intel silicon 이라면 line 2,3 주석 처리)
export GRPC_PYTHON_BUILD_SYSTEM_OPENSSsou

cp .githooks/* .git/hooks
chmod +x .git/hooks/prepare-commit-msg

python3.7 -m pip install --upgrade pip
python3.7 -m pip install virtualenv

virtualenv venv --python=python3.7

source venv/bin/activate

pip3 install -r requirements_222.txt
pip3 install -r requirements_dev_222.txt

pre-commit install
