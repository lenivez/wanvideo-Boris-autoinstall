#!/bin/bash
set -e

echo "=== Создание папок ==="

mkdir -p /workspace/ComfyUI/models/loras
mkdir -p /workspace/ComfyUI/models/diffusion_models/wanvideo
mkdir -p /workspace/ComfyUI/models/diffusion_models/wanvideo/InfiniteTalk
mkdir -p /workspace/ComfyUI/models/diffusion_models/multitalk
mkdir -p /workspace/ComfyUI/models/wav2vec2
mkdir -p /workspace/ComfyUI/models/clip_vision
mkdir -p /workspace/ComfyUI/models/text_encoders
mkdir -p /workspace/ComfyUI/models/vae/wanvideo

echo "=== Загрузка моделей ==="

# LORA
wget -O /workspace/ComfyUI/models/loras/lightx2v_I2V_14B_480p_cfg_step_distill_rank64_bf16.safetensors \
"https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Lightx2v/lightx2v_I2V_14B_480p_cfg_step_distill_rank64_bf16.safetensors?download=true"

# WanVideo
wget -O /workspace/ComfyUI/models/diffusion_models/wanvideo/wan2.1-i2v-14b-480p-Q4_K_M.gguf \
"https://huggingface.co/city96/Wan2.1-I2V-14B-480P-gguf/resolve/main/wan2.1-i2v-14b-480p-Q4_K_M.gguf?download=true"

wget -O /workspace/ComfyUI/models/diffusion_models/wanvideo/wan2.1-i2v-14b-480p-Q8_0.gguf \
"https://huggingface.co/city96/Wan2.1-I2V-14B-480P-gguf/resolve/main/wan2.1-i2v-14b-480p-Q8_0.gguf?download=true"

wget -O /workspace/ComfyUI/models/diffusion_models/wanvideo/Wan2_1-I2V-14B-480P_fp8_e4m3fn.safetensors \
"https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan2_1-I2V-14B-480P_fp8_e4m3fn.safetensors"

# InfiniteTalk
wget -O /workspace/ComfyUI/models/diffusion_models/wanvideo/InfiniteTalk/Wan2_1-InfiniteTalk_Single_Q4_K_M.gguf \
"https://huggingface.co/Kijai/WanVideo_comfy_GGUF/resolve/main/InfiniteTalk/Wan2_1-InfiniteTalk_Single_Q4_K_M.gguf?download=true"

wget -O /workspace/ComfyUI/models/diffusion_models/wanvideo/InfiniteTalk/Wan2_1-InfiniteTalk_Single_Q8.gguf \
"https://huggingface.co/Kijai/WanVideo_comfy_GGUF/resolve/main/InfiniteTalk/Wan2_1-InfiniteTalk_Single_Q8.gguf?download=true"

wget -O /workspace/ComfyUI/models/diffusion_models/wanvideo/InfiniteTalk/Wan2_1-InfiniteTalk-Multi_fp8_e4m3fn_scaled_KJ.safetensors \
"https://huggingface.co/Kijai/WanVideo_comfy_fp8_scaled/resolve/main/InfiniteTalk/Wan2_1-InfiniteTalk-Multi_fp8_e4m3fn_scaled_KJ.safetensors?download=true"

wget -O /workspace/ComfyUI/models/diffusion_models/wanvideo/InfiniteTalk/Wan2_1-InfiniteTalk-Single_fp8_e4m3fn_scaled_KJ.safetensors \
"https://huggingface.co/Kijai/WanVideo_comfy_fp8_scaled/resolve/main/InfiniteTalk/Wan2_1-InfiniteTalk-Single_fp8_e4m3fn_scaled_KJ.safetensors?download=true"

wget -O /workspace/ComfyUI/models/diffusion_models/wanvideo/InfiniteTalk/Wan2_1-InfiniTetalk-Single_fp16.safetensors \
"https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/InfiniteTalk/Wan2_1-InfiniTetalk-Single_fp16.safetensors?download=true"

wget -O /workspace/ComfyUI/models/diffusion_models/wanvideo/InfiniteTalk/Wan2_1-InfiniteTalk-Multi_fp16.safetensors \
"https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/InfiniteTalk/Wan2_1-InfiniteTalk-Multi_fp16.safetensors?download=true"

# MelBandRoformer
wget -O /workspace/ComfyUI/models/diffusion_models/multitalk/MelBandRoFormer_fp16.safetensors \
"https://huggingface.co/Kijai/MelBandRoFormer_comfy/resolve/main/MelBandRoformer_fp16.safetensors?download=true"

wget -O /workspace/ComfyUI/models/diffusion_models/multitalk/MelBandRoFormer_fp32.safetensors \
"https://huggingface.co/Kijai/MelBandRoFormer_comfy/resolve/main/MelBandRoformer_fp32.safetensors?download=true"

# wav2vec2
wget -O /workspace/ComfyUI/models/wav2vec2/wav2vec2-chinese-base_fp16.safetensors \
"https://huggingface.co/Kijai/wav2vec2_safetensors/resolve/main/wav2vec2-chinese-base_fp16.safetensors?download=true"

wget -O /workspace/ComfyUI/models/wav2vec2/wav2vec2-chinese-base_fp32.safetensors \
"https://huggingface.co/Kijai/wav2vec2_safetensors/resolve/main/wav2vec2-chinese-base_fp32.safetensors?download=true"

# CLIP Vision
wget -O /workspace/ComfyUI/models/clip_vision/clip_vision_h.safetensors \
"https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/clip_vision/clip_vision_h.safetensors?download=true"

# Text Encoder
wget -O /workspace/ComfyUI/models/text_encoders/umt5-xxl-enc-bf16.safetensors \
"https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/umt5-xxl-enc-bf16.safetensors?download=true"

# VAE
wget -O /workspace/ComfyUI/models/vae/wanvideo/Wan2_1_VAE_bf16.safetensors \
"https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan2_1_VAE_bf16.safetensors"

echo "=== Все модели загружены ==="

