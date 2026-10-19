Texture2D shaderTexture : register(t0);
SamplerState samplerState : register(s0);

cbuffer PixelShaderSettings : register(b0) {
    float Time;
    float3 Scale;
    float3 Resolution;
    float4 Background;
};

float4 main(float4 pos : SV_POSITION, float2 tex : TEXCOORD) : SV_TARGET {
    //処理
    float4 terminalColor = shaderTexture.Sample(samplerState, tex);
    terminalColor.xyz = abs(0.5 - terminalColor.xyz);
    return terminalColor;
}
