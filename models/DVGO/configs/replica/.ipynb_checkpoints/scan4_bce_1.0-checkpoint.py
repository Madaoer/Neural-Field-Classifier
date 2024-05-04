_base_ = './tt_default.py'

expname = 'scan4_bce_1.0'

basedir = './logs/replica_exp/scan4'

data = dict(
    inverse_y=False,
    dataset_type='replica',
    datadir='./data/Replica/scan4',
)

fine_train = dict(
    bce_weight=1.0,
)
