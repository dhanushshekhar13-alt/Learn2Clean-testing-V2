#!/usr/bin/env zsh
# Fair preparation script — run all required commands
set -e
cd /Users/dhanushsshekhar/Learn2Clean-testing-
export PYTHONPATH=/Users/dhanushsshekhar/Learn2Clean-testing-/src:/Users/dhanushsshekhar/Learn2Clean-testing-

echo "=========================================="
echo "STEP 1: Static baselines — hepatitis"
echo "=========================================="
.venv/bin/python reproduce_table2.py \
  --datasets hepatitis \
  --skip-rl --skip-oracle --skip-il --skip-cirl

echo ""
echo "=========================================="
echo "STEP 2: IL vs RL comparison"
echo "=========================================="
.venv/bin/python il/compare_il_vs_rl.py

echo ""
echo "=========================================="
echo "DONE — checking results/"
echo "=========================================="
ls -lh results/
