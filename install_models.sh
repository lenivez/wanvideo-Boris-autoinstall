#!/bin/bash

LOG="/workspace/model_download.log"
echo "" > "$LOG"

echo "==============================="
echo "  Загрузка моделей началась..."
echo "==============================="

BASE="/workspace/ComfyUI/models"

mkdir -p $BASE/diffusion_models/wanvideo/InfiniteTalk
mkdir -p $BASE/diffusion_models/multitalk
mkdir -p $BASE/loras
mkdir -p $BASE/clip_vision
mkdir -p $BASE/lipsync
mkdir -p $BASE/wav2vec2
mkdir -p $BASE/text_encoders
mkdir -p $BASE/vae/wanvideo

download() {
  wget -q --show-progress -O "$2" "$1"
  if [ $? -ne 0 ]; then
    echo "Ошибка: $2" | tee -a "$LOG"
  else
    echo "OK: $2" >> "$LOG"
  fi
}

# InfiniteTalk
download "https://huggingface.co/Kijai/WanVideo_comfy_GGUF/resolve/main/InfiniteTalk/Wan2_1-InfiniteTalk_Single_Q4_K_M.gguf" "$BASE/diffusion_models/wanvideo/InfiniteTalk/Wan2_1-InfiniteTalk_Single_Q4_K_M.gguf"
download "https://huggingface.co/Kijai/WanVideo_comfy_GGUF/resolve/main/InfiniteTalk/Wan2_1-InfiniteTalk_Single_Q8.gguf" "$BASE/diffusion_models/wanvideo/InfiniteTalk/Wan2_1-InfiniteTalk_Single_Q8.gguf"
download "https://huggingface.co/Kijai/WanVideo_comfy_GGUF/resolve/main/InfiniteTalk/Wan2_1-InfiniteTalk-Multi_fp8_e4m3fn_scaled_KJ.safetensors" "$BASE/diffusion_models/wanvideo/InfiniteTalk/Wan2_1-InfiniteTalk-Multi_fp8_e4m3fn_scaled_KJ.safetensors"
download "https://huggingface.co/Kijai/WanVideo_comfy_GGUF/resolve/main/InfiniteTalk/Wan2_1-InfiniteTalk-Single_fp8_e4m3fn_scaled_KJ.safetensors" "$BASE/diffusion_models/wanvideo/InfiniteTalk/Wan2_1-InfiniteTalk-Single_fp8_e4m3fn_scaled_KJ.safetensors"
download "https://huggingface.co/Kijai/WanVideo_comfy_GGUF/resolve/main/InfiniteTalk/Wan2_1-InfiniteTalk-Single_fp16.safetensors" "$BASE/diffusion_models/wanvideo/InfiniteTalk/Wan2_1-InfiniteTalk-Single_fp16.safetensors"
download "https://huggingface.co/Kijai/WanVideo_comfy_GGUF/resolve/main/InfiniteTalk/Wan2_1-InfiniteTalk-Multi_fp16.safetensors" "$BASE/diffusion_models/wanvideo/InfiniteTalk/Wan2_1-InfiniteTalk-Multi_fp16.safetensors"

# I2V
download "https://huggingface.co/Kijai/WanVideo_comfy_GGUF/resolve/main/Wan2_1-I2V-14B-480P_fp8_e4m3fn.safetensors" "$BASE/diffusion_models/wanvideo/Wan2_1-I2V-14B-480P_fp8_e4m3fn.safetensors"
download "https://huggingface.co/Kijai/WanVideo_comfy_GGUF/resolve/main/wan2.1-i2v-14b-480p-Q4_K_M.gguf" "$BASE/diffusion_models/wanvideo/wan2.1-i2v-14b-480p-Q4_K_M.gguf"
download "https://huggingface.co/Kijai/WanVideo_comfy_GGUF/resolve/main/wan2.1-i2v-14b-480p-Q8_0.gguf" "$BASE/diffusion_models/wanvideo/wan2.1-i2v-14b-480p-Q8_0.gguf"

# CLIP
download "https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/clip_vision/clip_vision_h.safetensors" "$BASE/clip_vision/clip_vision_h.safetensors"

# UMT5
download "https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/umt5-xxl-enc-bf16.safetensors" "$BASE/text_encoders/umt5-xxl-enc-bf16.safetensors"

# Multitalk
download "https://huggingface.co/Kijai/MelBandRoFormer_comfy/resolve/main/MelBandRoFormer_fp16.safetensors" "$BASE/diffusion_models/multitalk/MelBandRoFormer_fp16.safetensors"

# wav2vec2
download "https://huggingface.co/Kijai/wav2vec2_safetensors/resolve/main/wav2vec2-chinese-base_fp16.safetensors" "$BASE/wav2vec2/wav2vec2-chinese-base_fp16.safetensors"

# Loras
download "https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Lightx2v/lightx2v_I2V_14B_480p_cfg_step_distill_rank64_bf16.safetensors" "$BASE/loras/lightx2v_I2V_14B_480p_cfg_step_distill_rank64_bf16.safetensors"

# VAE
download "https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan2_1_VAE_bf16.safetensors" "$BASE/vae/wanvideo/Wan2_1_VAE_bf16.safetensors"

# Lipsync
download "https://huggingface.co/chunyu-li/LatentSync/resolve/main/latentsync_unet.pt" "$BASE/lipsync/latentsync_unet.pt"
download "https://huggingface.co/chunyu-li/LatentSync/resolve/main/whisper/tiny.pt" "$BASE/lipsync/tiny.pt"

echo "==============================="
echo "  Все модели загружены!"
echo "==============================="
