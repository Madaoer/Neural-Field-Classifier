EXP_NAME="Replica/NeuS/Scan5/bce_20.0"

ns-train neus --pipeline.model.sdf-field.inside-outside True --vis tensorboard --experiment-name ${EXP_NAME} --pipeline.model.bce_loss_mult 20 --trainer.steps-per-eval-image 10000 sdfstudio-data --data data/Replica/scan5 --skip_every_for_val_split 10 --train_val_no_overlap True

EXP_NAME="Replica/NeuS/Scan5/bce_20.0"

time_step=`ls outputs/${EXP_NAME}/neus`

ns-eval --load-config outputs/${EXP_NAME}/neus/${time_step}/config.yml --output_images_path outputs/${EXP_NAME}/neus/${time_step}/eval_images --output_path outputs/${EXP_NAME}/neus/${time_step}/eval_results.json
