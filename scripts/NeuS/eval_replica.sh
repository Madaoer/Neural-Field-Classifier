EXP_NAME="Replica/NeuS/Scan5/bce_20.0"

time_step=`ls outputs/${EXP_NAME}/neus`

ns-eval --load-config outputs/${EXP_NAME}/neus/${time_step}/config.yml --output_images_path outputs/${EXP_NAME}/neus/${time_step}/eval_images --output_path outputs/${EXP_NAME}/neus/${time_step}/eval_results.json
