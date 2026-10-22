# parepare the environment variables
repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
export NUPLAN_MAP_VERSION="nuplan-maps-v1.0"
export NUPLAN_MAPS_ROOT="${repo_root}/datasets/maps"
export NAVSIM_EXP_ROOT="${repo_root}/exp"
export NAVSIM_DEVKIT_ROOT="${repo_root}/navsim"
export OPENSCENE_DATA_ROOT="${repo_root}/datasets"

# set the split and agent
split=navtest
agent=diffusiondrive_agent
metric_cache_path="${NAVSIM_EXP_ROOT}/cache/navsim_v2_eval_cache/navtest_metric_cache"
bkb_path="./ckpts/resnet34.bin"

experiment_name=train_diffusiondrive_resnet_navtest
experiment_uid=$(date +%Y.%m.%d.%H.%M.%S)
output_dir="${NAVSIM_EXP_ROOT}/${agent}/${experiment_name}/${experiment_uid}"
ckpt="'./ckpts/vira_diffusion.ckpt'"
echo "Starting evaluation script..."


python ${NAVSIM_DEVKIT_ROOT}/planning/script/run_pdm_score_one_stage_gpu_diffusiondrive.py \
    agent=$agent \
    dataloader.params.batch_size=32 \
    agent.checkpoint_path=${ckpt} \
    experiment_name=${experiment_name} \
    +cache_path=null \
    metric_cache_path=${metric_cache_path} \
    train_test_split=${split} \
    agent.config.bkb_path=${bkb_path} \
    output_dir=${output_dir} \
    worker.threads_per_node=32
