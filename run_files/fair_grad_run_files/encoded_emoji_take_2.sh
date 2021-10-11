#!/bin/bash
SEED=$1
echo "linear models on the go encoded_emoji"
echo "running baseline linear model encoded_emoji"
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji --log_name take_baseline_linear_seed_$SEED --epochs 100 --use_lr_schedule False --seed $SEED --fairness_iterator custom_3 --use_clipping True --use_normalization True --simple_baseline True --model simple_linear -lr 0.1 -bs 10000 --optimizer sgd &> log1 &
echo "running fair grad linear model with clipping True encoded_emoji"
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 10000 --log_name take_fairgrad_1_bs_27000_linear_seed_$SEED --epochs 120 --use_lr_schedule False --seed $SEED -lr 0.1 --fairness_iterator custom_3 --use_clipping True --use_normalization True --simple_baseline False  --model simple_linear --optimizer sgd --fairness_functions accuracy_parity&> log2
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 10000 --log_name take_fairgrad_2_bs_27000_linear_seed_$SEED --epochs 120 --use_lr_schedule False --seed $SEED -lr 0.1 --fairness_iterator custom_3 --use_clipping True --use_normalization True --simple_baseline False  --model simple_linear --optimizer sgd --fairness_functions demographic_parity&> log3
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 10000 --log_name take_fairgrad_3_bs_27000_linear_seed_$SEED --epochs 120 --use_lr_schedule False --seed $SEED -lr 0.1 --fairness_iterator custom_3 --use_clipping True --use_normalization True --simple_baseline False  --model simple_linear --optimizer sgd --fairness_functions equal_odds&> log4
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 10000 --log_name take_fairgrad_4_bs_27000_linear_seed_$SEED --epochs 120 --use_lr_schedule False --seed $SEED -lr 0.1 --fairness_iterator custom_3 --use_clipping True --use_normalization True --simple_baseline False  --model simple_linear --optimizer sgd --fairness_functions equal_opportunity&> log5
echo "running fair grad linear model with clipping False encoded_emoji"
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 10000 --log_name take_fairgrad_5_bs_27000_linear_seed_$SEED --epochs 120 --use_lr_schedule False --seed $SEED -lr 0.1 --fairness_iterator custom_3 --use_clipping False --use_normalization True --simple_baseline False  --model simple_linear --optimizer sgd --fairness_functions accuracy_parity&> log6
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 10000 --log_name take_fairgrad_6_bs_27000_linear_seed_$SEED --epochs 120 --use_lr_schedule False --seed $SEED -lr 0.1 --fairness_iterator custom_3 --use_clipping False --use_normalization True --simple_baseline False  --model simple_linear --optimizer sgd --fairness_functions demographic_parity&> log7
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 10000 --log_name take_fairgrad_7_bs_27000_linear_seed_$SEED --epochs 120 --use_lr_schedule False --seed $SEED -lr 0.1 --fairness_iterator custom_3 --use_clipping False --use_normalization True --simple_baseline False  --model simple_linear --optimizer sgd --fairness_functions equal_odds&> log8
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 10000 --log_name take_fairgrad_8_bs_27000_linear_seed_$SEED --epochs 120 --use_lr_schedule False --seed $SEED -lr 0.1 --fairness_iterator custom_3 --use_clipping False --use_normalization True --simple_baseline False  --model simple_linear --optimizer sgd --fairness_functions equal_opportunity&> log9
echo "running baseline non linear model"
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji --log_name take_baseline_non_linear_seed_$SEED --epochs 100 --use_lr_schedule False --seed $SEED --fairness_iterator custom_3 --use_clipping True --use_normalization True --simple_baseline True --model simple_non_linear -lr 0.1 -bs 10000 --optimizer sgd &> log10 &
echo "running fair grad non linear model with clipping True encoded_emoji"
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 10000 --log_name take_fairgrad_1_bs_27000_non_linear_seed_$SEED --epochs 120 --use_lr_schedule False --seed $SEED -lr 0.1 --fairness_iterator custom_3 --use_clipping True --use_normalization True --simple_baseline False  --model simple_non_linear --optimizer sgd --fairness_functions accuracy_parity&> log11
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 10000 --log_name take_fairgrad_2_bs_27000_non_linear_seed_$SEED --epochs 120 --use_lr_schedule False --seed $SEED -lr 0.1 --fairness_iterator custom_3 --use_clipping True --use_normalization True --simple_baseline False  --model simple_non_linear --optimizer sgd --fairness_functions demographic_parity&> log12
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 10000 --log_name take_fairgrad_3_bs_27000_non_linear_seed_$SEED --epochs 120 --use_lr_schedule False --seed $SEED -lr 0.1 --fairness_iterator custom_3 --use_clipping True --use_normalization True --simple_baseline False  --model simple_non_linear --optimizer sgd --fairness_functions equal_odds&> log13
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 10000 --log_name take_fairgrad_4_bs_27000_non_linear_seed_$SEED --epochs 120 --use_lr_schedule False --seed $SEED -lr 0.1 --fairness_iterator custom_3 --use_clipping True --use_normalization True --simple_baseline False  --model simple_non_linear --optimizer sgd --fairness_functions equal_opportunity&> log14
echo "running fair grad non linear model with clipping False encoded_emoji"
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 10000 --log_name take_fairgrad_5_bs_27000_non_linear_seed_$SEED --epochs 120 --use_lr_schedule False --seed $SEED -lr 0.1 --fairness_iterator custom_3 --use_clipping False --use_normalization True --simple_baseline False  --model simple_non_linear --optimizer sgd --fairness_functions accuracy_parity&> log15
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 10000 --log_name take_fairgrad_6_bs_27000_non_linear_seed_$SEED --epochs 120 --use_lr_schedule False --seed $SEED -lr 0.1 --fairness_iterator custom_3 --use_clipping False --use_normalization True --simple_baseline False  --model simple_non_linear --optimizer sgd --fairness_functions demographic_parity&> log16
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 10000 --log_name take_fairgrad_7_bs_27000_non_linear_seed_$SEED --epochs 120 --use_lr_schedule False --seed $SEED -lr 0.1 --fairness_iterator custom_3 --use_clipping False --use_normalization True --simple_baseline False  --model simple_non_linear --optimizer sgd --fairness_functions equal_odds&> log17
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 10000 --log_name take_fairgrad_8_bs_27000_non_linear_seed_$SEED --epochs 120 --use_lr_schedule False --seed $SEED -lr 0.1 --fairness_iterator custom_3 --use_clipping False --use_normalization True --simple_baseline False  --model simple_non_linear --optimizer sgd --fairness_functions equal_opportunity&> log18
echo "running adversarial stuff encoded_emoji" &
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 1000 --log_name take_adv_non_linear_1_$SEED --epochs 35 --use_lr_schedule False --seed $SEED  --fairness_iterator custom_3 --use_clipping True --use_normalization True --simple_baseline False --fairness_functions accuracy_parity --model simple_non_linear_adv --optimizer adam --lr 0.001 &> log1 &
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 1000 --log_name take_adv_non_linear_2_$SEED --epochs 35 --use_lr_schedule False --seed $SEED  --fairness_iterator custom_3 --use_clipping True --use_normalization True --simple_baseline False --fairness_functions demographic_parity --model simple_non_linear_adv --optimizer adam --lr 0.001 &> log1 &
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 1000 --log_name take_adv_non_linear_3_$SEED --epochs 35 --use_lr_schedule False --seed $SEED  --fairness_iterator custom_3 --use_clipping True --use_normalization True --simple_baseline False --fairness_functions equal_odds --model simple_non_linear_adv --optimizer adam --lr 0.001 &> log1 &
cd ~/codes/DPNLP/src/; python hyperparam_runner_fairgrad.py --is_adv False --adv_start 0.1 --adv_end 3.0 --dataset_name encoded_emoji -bs 1000 --log_name take_adv_non_linear_4_$SEED --epochs 35 --use_lr_schedule False --seed $SEED  --fairness_iterator custom_3 --use_clipping True --use_normalization True --simple_baseline False --fairness_functions equal_opportunity --model simple_non_linear_adv --optimizer adam --lr 0.001 &> log1 &




