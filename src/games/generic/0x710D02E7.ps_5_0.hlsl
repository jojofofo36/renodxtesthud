// ---- Created with 3Dmigoto v1.3.16 on Sun Sep 06 03:05:33 2026

#include "shared.h"

cbuffer PassParams_cbuffer : register(b2)
{

  struct
  {
    uint alphaDitherEnabled;
    uint TAADitherEnabled;
    float CameraTAAFadeStartDist;
    float gradientAdjustMipBias;
    float4 eyePosition;
    float4 eyePositionPrevFrame;
    float4 eyeDirection;
    float4 eyeDirectionPrevFrame;
    float4x4 viewToWorld;
    float4x4 viewToWorldPrevFrame;
    float4x4 viewToWorldPrecise;
    float4x4 worldToView;
    float4x4 worldToViewPrevFrame;
    float4x4 projMatrix;
    float4x4 viewProj;
    float4x4 viewNoTranslationProj;
    float4x4 viewProjPrevFrame;
    float4x4 viewNoTranslationProjPrevFrame;
    float4x4 ClipXYZToWorldPosPrevFrame;
    float4 viewTranslation;
    float4 viewTranslationPrevFrame;
    float4 vPosToUV;
    float4 viewportScaleOffset;
    float4 zFrontBackValue;
    float4 earthCurvatureParams;
    float4 earthCurvatureEyePosition;
    float4 clipPlane;
    float4 frustumPlanes[4];
    float4 globalLightingScale;
    float4 viewSpaceLightingBackWS;
    float4 projectorPosition;
    float4 prevProjectorPosition;
    float4 pixelPatchingParams;
    float thinGeomAAPixelScale;
    uint layerIndex;
    uint globalCubeMapIndex;
    uint dynamicGBufferCubeMapIndex;
    float windScale;

    struct
    {
    } materialTable;


    struct
    {
      float4x4 ClipXYZToViewPos;
      float4x4 ClipXYZToWorldPos;
      float4 ClipZToViewZ;
    } RevProjParams;


    struct
    {
    } refraction;


    struct
    {
    } deferredcommon;


    struct
    {
    } motionVector;


    struct
    {
      float4 XYScaleBias;
      float4 ForwardMappingParams;
      float2 ZProject;
      float4 BackwardMappingParams;
      float CloudShadowGIDensity;
    } combinedCloudShadow;


    struct
    {
    } AmbientLighting;


    struct
    {
      float4 volumeInvTransZ;
      float4 volumeTexScale;
      float4 volumeTexBias;
      float4 sunColor;
      float4 sunColorByOneOverPi;
      float4 albedoPhase;
      float4 densityExpDistrib;
    } fog;


    struct
    {
      float3 InvDepthParams;
    } underwater;


    struct
    {
      float4 VposToClusterXY;
      float4 ClipPosToClusterXY;
      float4 ClusterTransZ;
      uint HighClusterW;
      uint HighClusterWH;
    } clusteredLightsEvaluate;


    struct
    {
    } waterStamperTextures;


    struct
    {
      float3 maxCC;
      uint usePureWater;
    } waterCustomMeshParams;


    struct
    {
      float4 worldToUVBaseLevelMap;
      float2 baseLevelMapSize;
      float3 shoreWetnessParams;
    } waterBaseLevelParams;


    struct
    {
    } videoAndScreenshot;


    struct
    {
    } rainRipples;


    struct
    {
      float4 worldPositionAndSize;
      float2 baseHeightAndScale;
    } rainBlockerParams;


    struct
    {
    } cookieShadows;


    struct
    {
    } nearShadows;


    struct
    {
      float FarShadowBlendRatio;
    } farShadows;


    struct
    {
    } commonShadows;


    struct
    {
      float2 WorldToUVOffset;
      float2 WorldToUVScale;
      float2 ReferenceWorldXY;
      float FadeStart;
      float Radius;
    } grassForce;

  } PassParams_constants : packoffset(c0);

}

cbuffer MaterialParams_cbuffer : register(b3)
{

  struct
  {

    struct
    {
      float2 fogBlendParams;
      float alphaTestValue;
      uint flags;
    } common;

    float4 VertexoffsetUseBV_96;
    float4 _9ssOffsetX_103;
    float4 VertexScale_89;
    float4 VertexOffset_91;
    float4 Alpha2useUV9SS_87;
    float4 Alpha2isGauge_93;
    float4 _9SSProportionBVOFFON_97;
    float4 _9SSPoportionScaleValue_98;
    float4 _9SSON_99;
    float3x3 UVLayer0_86_matrix;
    float3x3 UVAlpha2_90_matrix;
    float4 Color2RampPosition_7;
    float4 Alpha2RGBAselectChannel_8;
    float4 Color2RampFalloff_12;
    float4 Color2RampSize_13;
    float4 Color2Rampuorv_15;
    float4 Color2RampDiagonal_16;
    float4 Color2ON_17;
    float4 Layer0RGBAselectChannel_19;
    float4 AlphaisColorAndColor2_22;
    float4 Color2Select0Ramp1Rampalpha2Alpha_24;
    float4 Alphalistonupdownfoff_3;
    float4 Color2_18;
    float4 AlphaTransition_1;
    float4 Alpha2_4;
    float4 Alpha_5;
    float4 Alpha2MultDiffuse_9;
    float4 AlphaBoost_11;
    float4 Layer0is4Channel_20;
    float4 Layer0Color_6;
  } MaterialParams_constants : packoffset(c0);

}

SamplerState FrameParams_defaultSamplers_pointClamp_s : register(s0);
SamplerState FrameParams_defaultSamplers_standardSampler_s : register(s4);
SamplerState PassParams_AmbientLighting_LocalCubeMapsSampler_s : register(s7);
Texture2D<float4> PassParams_lastExposureTexture : register(t18);
Texture3D<float4> PassParams_fog_FogLookup : register(t40);
Texture2D<float4> MaterialParams_srv.Alpha2texture_0 : register(t69);
Texture2D<float4> MaterialParams_srv.Layer0Diffuse_1 : register(t70);


// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  linear sample float4 v1 : TEXCOORD0,
  linear sample float4 v2 : COLOR0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float4 v5 : TEXCOORD3,
  float4 v6 : TEXCOORD4,
  uint v7 : InstanceID0,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  float4 x2[4];
  r0.xyzw = MaterialParams_srv.Alpha2texture_0.SampleBias(FrameParams_defaultSamplers_standardSampler_s, v1.zw, PassParams_constants.gradientAdjustMipBias).xyzw;
  x0[0].x = r0.x;
  x0[1].x = r0.y;
  x0[2].x = r0.z;
  x0[3].x = r0.w;
  r0.xyzw = MaterialParams_srv.Layer0Diffuse_1.SampleBias(FrameParams_defaultSamplers_standardSampler_s, v1.xy, PassParams_constants.gradientAdjustMipBias).xyzw;
  x1[0].x = r0.x;
  x1[1].x = r0.y;
  x1[2].x = r0.z;
  x1[3].x = r0.w;
  r1.x = 1 + -v2.y;
  r1.y = MaterialParams_constants.Color2RampDiagonal_16.x * v2.x + r1.x;
  r1.x = MaterialParams_constants.Color2RampDiagonal_16.x * r1.x + v2.x;
  r1.y = r1.y + -r1.x;
  r1.x = MaterialParams_constants.Color2Rampuorv_15.x * r1.y + r1.x;
  r1.x = MaterialParams_constants.Color2RampPosition_7.x + r1.x;
  r1.x = -MaterialParams_constants.Color2RampSize_13.x + abs(r1.x);
  r1.x = saturate(r1.x / MaterialParams_constants.Color2RampFalloff_12.x);
  r1.x = 1 + -r1.x;
  x2[0].x = r1.x;
  r1.y = (int)MaterialParams_constants.Alpha2RGBAselectChannel_8.x;
  r1.y = max(0, (int)r1.y);
  r1.y = min(3, (int)r1.y);
  r1.z = (int)r1.y + 1;
  r1.y = x0[r1.y+0].x;
  r1.z = min(3, (int)r1.z);
  r1.z = x0[r1.z+0].x;
  r1.z = r1.z + -r1.y;
  r1.w = frac(MaterialParams_constants.Alpha2RGBAselectChannel_8.x);
  r1.y = r1.w * r1.z + r1.y;
  r1.z = (int)MaterialParams_constants.Layer0RGBAselectChannel_19.x;
  r1.z = max(0, (int)r1.z);
  r1.z = min(3, (int)r1.z);
  r1.w = (int)r1.z + 1;
  r1.z = x1[r1.z+0].x;
  r1.w = min(3, (int)r1.w);
  r1.w = x1[r1.w+0].x;
  r1.w = r1.w + -r1.z;
  r2.x = frac(MaterialParams_constants.Layer0RGBAselectChannel_19.x);
  r1.z = r2.x * r1.w + r1.z;
  r1.z = r1.z + -r0.w;
  r0.w = MaterialParams_constants.Layer0is4Channel_20.x * r1.z + r0.w;
  r1.z = r0.w * r1.y + -r1.y;
  r1.y = MaterialParams_constants.Alpha2MultDiffuse_9.x * r1.z + r1.y;
  r1.x = r1.x * r1.y;
  x2[1].x = r1.x;
  x2[2].x = r1.y;
  r1.x = r1.y + -r0.w;
  r0.w = MaterialParams_constants.Alpha2_4.x * r1.x + r0.w;
  x2[3].x = 1;
  r1.xyz = float3(1,1,1) + -r0.xyz;
  r0.xyz = MaterialParams_constants.Layer0is4Channel_20.xxx * r1.xyz + r0.xyz;
  r1.x = (int)MaterialParams_constants.Color2Select0Ramp1Rampalpha2Alpha_24.x;
  r1.x = max(0, (int)r1.x);
  r1.x = min(3, (int)r1.x);
  r1.y = (int)r1.x + 1;
  r1.x = x2[r1.x+0].x;
  r1.y = min(3, (int)r1.y);
  r1.y = x2[r1.y+0].x;
  r1.y = r1.y + -r1.x;
  r1.z = frac(MaterialParams_constants.Color2Select0Ramp1Rampalpha2Alpha_24.x);
  r1.x = r1.z * r1.y + r1.x;
  r1.x = MaterialParams_constants.Color2ON_17.x * r1.x;
  r2.xyzw = -MaterialParams_constants.Layer0Color_6.xyzw + MaterialParams_constants.Color2_18.xyzw;
  r1.xyzw = r1.xxxx * r2.wxyz + MaterialParams_constants.Layer0Color_6.wxyz;
  r0.xyz = r1.yzw * r0.xyz;
  r1.x = saturate(r1.x);
  r1.x = -MaterialParams_constants.Alpha_5.x + r1.x;
  r1.x = MaterialParams_constants.AlphaisColorAndColor2_22.x * r1.x + MaterialParams_constants.Alpha_5.x;
  r1.x = MaterialParams_constants.AlphaTransition_1.x * r1.x;
  r0.w = saturate(r1.x * r0.w);
  r1.x = saturate(-1 + MaterialParams_constants.Alphalistonupdownfoff_3.x);
  r2.xy = PassParams_constants.vPosToUV.xy * v0.xy;
  r1.y = v0.x * PassParams_constants.vPosToUV.x + -r2.y;
  r1.x = r1.x * r1.y + r2.y;
  r1.y = MaterialParams_constants.Alphalistonupdownfoff_3.z + -MaterialParams_constants.Alphalistonupdownfoff_3.y;
  r1.z = r1.y * 0.5 + MaterialParams_constants.Alphalistonupdownfoff_3.y;
  r1.x = r1.x + -r1.z;
  r1.x = r1.y * 0.5 + -abs(r1.x);
  r1.y = cmp(0 != MaterialParams_constants.Alphalistonupdownfoff_3.w);
  r1.y = r1.y ? MaterialParams_constants.Alphalistonupdownfoff_3.w : 9.99999997e-007;
  r1.x = saturate(r1.x / r1.y);
  r1.x = -1 + r1.x;
  r1.y = saturate(MaterialParams_constants.Alphalistonupdownfoff_3.x);
  r1.x = r1.y * r1.x + 1;
  r0.w = r1.x * r0.w;
  r0.w = MaterialParams_constants.AlphaBoost_11.x * r0.w;
  r0.xyz = r0.xyz * r0.www;
  r1.x = PassParams_lastExposureTexture.SampleLevel(FrameParams_defaultSamplers_pointClamp_s, float2(0,0), 0).x;
  r0.xyz = r0.xyz / r1.xxx;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = min(float3(100000,100000,100000), r0.xyz);
  r0.xyz = PassParams_constants.globalLightingScale.xxx * r0.xyz;
  r1.x = r0.w * MaterialParams_constants.common.fogBlendParams.x + MaterialParams_constants.common.fogBlendParams.y;
  o0.w = r0.w * RENODX_UI_OPACITY;
  r0.w = PassParams_constants.fog.volumeInvTransZ.w + v0.w;
  r0.w = log2(r0.w);
  r0.w = r0.w * PassParams_constants.fog.volumeInvTransZ.x + PassParams_constants.fog.volumeInvTransZ.y;
  r0.w = max(0, r0.w);
  r0.w = min(PassParams_constants.fog.volumeInvTransZ.z, r0.w);
  r2.z = PassParams_constants.fog.volumeTexScale.z * r0.w;
  r1.yzw = PassParams_constants.fog.volumeTexBias.xyz + r2.xyz;
  r2.xyzw = PassParams_fog_FogLookup.SampleLevel(PassParams_AmbientLighting_LocalCubeMapsSampler_s, r1.yzw, 0).xyzw;
  r1.yzw = r2.xyz * r2.xyz;
  r0.w = -r2.w * r2.w + 1;
  r0.w = 1 + -r0.w;
  r0.w = 1 + -r0.w;
  r1.yzw = PassParams_constants.globalLightingScale.xxx * r1.yzw;
  r1.xyz = r1.yzw * r1.xxx;
  o0.xyz = r0.xyz * r0.www + r1.xyz;
  return;
}