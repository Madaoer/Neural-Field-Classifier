export CUDA_VISIBLE_DEVICES=1

python models/DVGO/run_reg.py --config models/DVGO/configs/replica/scan1/reg.py
python models/DVGO/run_reg.py --config models/DVGO/configs/replica/scan1/reg.py --render_only --render_video

python models/DVGO/run_bce.py --config models/DVGO/configs/replica/scan1/bce_2.0.py
python models/DVGO/run_bce.py --config models/DVGO/configs/replica/scan1/bce_2.0.py --render_only --render_video