TRAIN_TEST_SPLIT=warmup_two_stage    #  navtest / mini / navhard_two_stage / warmup_two_stage
CACHE_PATH=$NAVSIM_EXP_ROOT/cache/navsim_v2_eval_cache/warmup_two_stage_metric_cache_new

experiment_name=metric_caching_${TRAIN_TEST_SPLIT} 
experiment_uid=$(date +%Y.%m.%d.%H.%M.%S)
output_dir="${NAVSIM_EXP_ROOT}/play3d/metric_caching/${experiment_name}/${experiment_uid}"

python $NAVSIM_DEVKIT_ROOT/navsim/planning/script/run_metric_caching.py \
    train_test_split=${TRAIN_TEST_SPLIT} \
    metric_cache_path=${CACHE_PATH} \
    output_dir=${output_dir}
