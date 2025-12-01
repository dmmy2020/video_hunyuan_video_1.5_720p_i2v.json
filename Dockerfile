# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.0-base

# install custom nodes into comfyui
# (no custom registry nodes were listed in the workflow)

# download models into comfyui
RUN comfy model download --url https://huggingface.co/Comfy-Org/HunyuanVideo_1.5_repackaged/resolve/main/split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors --relative-path models/embeddings --filename qwen_2.5_vl_7b_fp8_scaled.safetensors
RUN comfy model download --url https://huggingface.co/Comfy-Org/HunyuanVideo_1.5_repackaged/resolve/main/split_files/text_encoders/byt5_small_glyphxl_fp16.safetensors --relative-path models/embeddings --filename byt5_small_glyphxl_fp16.safetensors
RUN comfy model download --url https://huggingface.co/Comfy-Org/HunyuanVideo_1.5_repackaged/resolve/main/split_files/latent_upscale_models/hunyuanvideo15_latent_upsampler_1080p.safetensors --relative-path models/upscale_models --filename hunyuanvideo15_latent_upsampler_1080p.safetensors
RUN comfy model download --url https://huggingface.co/Comfy-Org/HunyuanVideo_1.5_repackaged/resolve/main/split_files/diffusion_models/hunyuanvideo1.5_1080p_sr_distilled_fp16.safetensors --relative-path models/diffusion_models --filename hunyuanvideo1.5_1080p_sr_distilled_fp16.safetensors
RUN comfy model download --url https://huggingface.co/Comfy-Org/HunyuanVideo_1.5_repackaged/resolve/main/split_files/vae/hunyuanvideo15_vae_fp16.safetensors --relative-path models/vae --filename hunyuanvideo15_vae_fp16.safetensors
RUN comfy model download --url https://huggingface.co/Comfy-Org/HunyuanVideo_1.5_repackaged/resolve/main/split_files/diffusion_models/hunyuanvideo1.5_720p_i2v_fp16.safetensors --relative-path models/diffusion_models --filename hunyuanvideo1.5_720p_i2v_fp16.safetensors
RUN comfy model download --url https://huggingface.co/Comfy-Org/sigclip_vision_384/resolve/main/sigclip_vision_patch14_384.safetensors --relative-path models/clip --filename sigclip_vision_patch14_384.safetensors

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
