git submodule init
git submodule update
mkdir build-py
cd build-py
cmake .. -DUSE_CUDA=ON -DPY_API=ON
make -j4

cd ../pyfastllm/demo/
pip install fastapi uvicorn
