#!/bin/bash
# Training script for optimized MATD3 configuration
# This script activates the rl conda environment and runs the training

echo "===== Starting Optimized MATD3 Training ====="
echo "Configuration:"
echo "  - Network: 128 latent dim, [128, 128] hidden layers"
echo "  - Batch size: 256"
echo "  - Learning rates: Actor 0.0003, Critic 0.001"
echo "  - Gamma: 0.99"
echo "  - Learn step: 50"
echo "  - TAU: 0.005"
echo "  - Exploration noise: 0.2"
echo "  - Max steps: 3,000,000"
echo "=========================================="
echo ""

# Activate conda environment and run training
source ~/miniconda3/etc/profile.d/conda.sh
conda activate rl

# Run the training
python main.py

echo ""
echo "===== Training Complete ====="
echo "Check ./models/MATD3/ for saved model and training plots"
