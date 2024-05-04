_base_ = '../tt_default.py'

expname = 'reg'

basedir = './outputs/Replica/DVGO/Scan1'

data = dict(
    inverse_y=False,
    dataset_type='replica',
    datadir='./data/Replica/scan1',
)

fine_train = dict(
    bce_weight=0.0,
)
