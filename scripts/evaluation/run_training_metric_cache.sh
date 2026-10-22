# train metric caching
train_test_split=navtrain   # mini, navtrain
cache_path=$NAVSIM_EXP_ROOT/cache/navsim_v2_eval_cache/navtrain_train_metric_cache
worker_threads_per_node=32  


python $NAVSIM_DEVKIT_ROOT/navsim/planning/script/run_train_metric_caching.py \
    train_test_split=$train_test_split \
    cache.cache_path=$cache_path \
    worker.threads_per_node=$worker_threads_per_node \