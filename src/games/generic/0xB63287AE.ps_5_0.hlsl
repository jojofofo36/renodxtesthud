// ---- Created with 3Dmigoto v1.3.16 on Sun Sep 06 03:05:40 2026

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

cbuffer InstanceParams_cbuffer : register(b4)
{

  struct
  {
    float4x4 world;
    float4x4 worldPrevFrame;
    float4x4 worldViewProj;
    float4x4 worldViewProjPrevFrame;
    float4 dissolveFactor;
    float LODBlendFactor;
    float wetnessBias;
    float alphaTestValue;
    uint materialTableIndex;
    uint instanceOffset;
    uint CameraTAADither;

    struct
    {

      struct
      {
        int4 offsets;
      } instanceBatchSetupConsts;

    } instancing;

  } InstanceParams_constants : packoffset(c0);

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

    float4 VertexQuadMin_6;
    float4 VertexScale_121;
    float4 VertexOffset_124;
    float4 VertexQuadMax_16;
    float4 AlphaClampFallof_2;
    float4 UseVertexAlpha_4;
    float4 UseScreenAlpha_5;
    float4 UseLayer1AlphaGrayScale_7;
    float4 AlphaClampMin_9;
    float4 AlphaClampIsLayer01Alpha_10;
    float4 UseLayer1Alpha_11;
    float4 Layer0DiffuseUVIsClamp_13;
    float4 Layer0DiffuseIsBC4_14;
    float4 Layer1AlphaIsBC4_15;
    float4 Layer1AlphaUVIsClamp_17;
    float4 Layer0DiffuseIs9SS_18;
    float4 OcclusionAlpha_20;
    float4 Layer0DiffuseIsScreenSpace_22;
    float4 Layer0DiffuseIsInvert_23;
    float4 Layer0ColorIsAdd_24;
    float4 ScreenAlphaTop_25;
    float4 ScreenAlphaFallout_26;
    float4 ScreenAlphaBottom_27;
    float4 AlphaBoost_28;
    float4 Mipmap_30;
    float4 Alphalistonupdownfoff_35;
    float4 RemoveHack_34;
    float4 Layer0Color_33;
    float3x3 Layer0DiffuseUV_8_matrix;
    float3x3 Layer1AlphaUV_12_matrix;
  } MaterialParams_constants : packoffset(c0);

}

SamplerState FrameParams_defaultSamplers_pointClamp_s : register(s0);
SamplerState FrameParams_defaultSamplers_standardSampler_s : register(s4);
Texture2D<float4> PassParams_lastExposureTexture : register(t18);
Texture2D<float4> PassParams_deferredcommon_DepthSurface : register(t26);
Texture2D<float4> MaterialParams_srv_Layer0Diffuse_0 : register(t69);
Texture2D<float4> MaterialParams_srv_Layer1Alpha_1 : register(t70);
Buffer<float4> InstanceParams_instancing_instanceData : register(t80);


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
  nointerpolation uint v7 : InstanceID0,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v0.y * PassParams_constants.vPosToUV.y + -MaterialParams_constants.ScreenAlphaBottom_27.x;
  r0.y = cmp(0 != MaterialParams_constants.ScreenAlphaFallout_26.x);
  r0.y = r0.y ? MaterialParams_constants.ScreenAlphaFallout_26.x : 9.99999997e-007;
  r0.x = saturate(r0.x / r0.y);
  r0.x = 1 + -r0.x;
  r0.z = v0.y * PassParams_constants.vPosToUV.y + -MaterialParams_constants.ScreenAlphaTop_25.x;
  r0.y = saturate(r0.z / r0.y);
  r0.x = min(r0.y, r0.x);
  r0.x = -1 + r0.x;
  r0.x = MaterialParams_constants.UseScreenAlpha_5.x * r0.x + 1;
  r0.y = cmp(0 != MaterialParams_constants.Layer1AlphaUVIsClamp_17.x);
  r1.xy = v1.xy;
  r1.z = 1;
  r2.x = dot(r1.xyz, MaterialParams_constants.Layer1AlphaUV_12_matrix._m00_m10_m20);
  r2.y = dot(r1.xyz, MaterialParams_constants.Layer1AlphaUV_12_matrix._m01_m11_m21);
  r0.zw = saturate(r2.xy);
  r0.yz = r0.yy ? r0.zw : r2.xy;
  r0.w = -2.5 + PassParams_constants.gradientAdjustMipBias;
  r0.yzw = MaterialParams_srv_Layer1Alpha_1.SampleBias(FrameParams_defaultSamplers_standardSampler_s, r0.yz, r0.w).xyw;
  r1.x = cmp(0 != MaterialParams_constants.Layer1AlphaIsBC4_15.x);
  r0.yz = r1.xx ? r0.yy : r0.zw;
  r0.y = r0.y + -r0.z;
  r0.y = MaterialParams_constants.UseLayer1AlphaGrayScale_7.x * r0.y + r0.z;
  r0.zw = abs(MaterialParams_constants.VertexQuadMax_16.xz) + abs(MaterialParams_constants.VertexQuadMin_6.xz);
  r0.zw = float2(3.39498758,3.39498758) * r0.zw;
  r1.xy = float2(0.25,0.25) / r0.zw;
  r1.zw = float2(1,1) + -r1.xy;
  r2.xy = r1.zw + -r1.xy;
  r2.zw = v0.xy * PassParams_constants.vPosToUV.xy + -v1.xy;
  r3.xy = MaterialParams_constants.Layer0DiffuseIsScreenSpace_22.xx * r2.zw + v1.xy;
  r3.z = 1;
  r4.x = dot(r3.xyz, MaterialParams_constants.Layer0DiffuseUV_8_matrix._m00_m10_m20);
  r4.y = dot(r3.xyz, MaterialParams_constants.Layer0DiffuseUV_8_matrix._m01_m11_m21);
  r2.zw = r4.xy + -r1.xy;
  r1.xy = cmp(r4.xy < r1.xy);
  r2.xy = r2.zw / r2.xy;
  r2.xy = r2.xy * float2(0.5,0.5) + float2(0.25,0.25);
  r2.zw = float2(1,1) + -r4.xy;
  r2.zw = -r2.zw * r0.zw + float2(1,1);
  r0.zw = r4.xy * r0.zw;
  r1.zw = cmp(r1.zw < r4.xy);
  r1.zw = r1.zw ? r2.zw : r2.xy;
  r0.zw = r1.xy ? r0.zw : r1.zw;
  r1.x = cmp(0 < MaterialParams_constants.Layer0DiffuseIs9SS_18.x);
  r0.zw = r1.xx ? r0.zw : r4.xy;
  r1.xy = saturate(r0.zw);
  r1.z = cmp(0 != MaterialParams_constants.Layer0DiffuseUVIsClamp_13.x);
  r0.zw = r1.zz ? r1.xy : r0.zw;
  r1.x = MaterialParams_constants.Mipmap_30.x + PassParams_constants.gradientAdjustMipBias;
  r1.x = -2.5 + r1.x;
  r1.xyzw = MaterialParams_srv_Layer0Diffuse_0.SampleBias(FrameParams_defaultSamplers_standardSampler_s, r0.zw, r1.x).yzwx;
  r0.z = cmp(0 != MaterialParams_constants.Layer0DiffuseIsBC4_14.x);
  r1.xyz = r0.zzz ? r1.www : r1.xyz;
  r0.z = -r1.z + r0.y;
  r0.z = MaterialParams_constants.UseLayer1Alpha_11.x * r0.z + r1.z;
  r0.y = r0.y + -r0.z;
  r0.y = saturate(MaterialParams_constants.AlphaClampIsLayer01Alpha_10.x * r0.y + r0.z);
  r0.w = 1 + -r0.y;
  r0.y = -1 + r0.y;
  r2.x = 1 + -MaterialParams_constants.AlphaClampMin_9.x;
  r0.w = -r2.x + r0.w;
  r2.x = cmp(0 != MaterialParams_constants.AlphaClampFallof_2.x);
  r2.x = r2.x ? MaterialParams_constants.AlphaClampFallof_2.x : 9.99999997e-007;
  r0.yw = saturate(r0.yw / r2.xx);
  r0.y = max(r0.y, r0.w);
  r0.y = 1 + -r0.y;
  r0.w = -1 + v2.w;
  r0.w = MaterialParams_constants.UseVertexAlpha_4.x * r0.w + 1;
  r0.z = r0.z * r0.w;
  r0.y = r0.y * r0.z;
  r0.y = r0.y * r1.z;
  r0.zw = PassParams_constants.vPosToUV.xy * v0.xy;
  r0.z = PassParams_deferredcommon_DepthSurface.SampleLevel(FrameParams_defaultSamplers_pointClamp_s, r0.zw, 0).x;
  r2.xy = r0.zz * PassParams_constants.RevProjParams.ClipZToViewZ.wz + PassParams_constants.RevProjParams.ClipZToViewZ.yx;
  r0.z = r2.x / r2.y;
  r0.z = -v0.w + r0.z;
  r0.z = cmp(r0.z >= 0);
  r1.z = r0.z ? 1.000000 : 0;
  r0.z = r0.z ? 0 : MaterialParams_constants.OcclusionAlpha_20.x;
  r0.z = r1.z + r0.z;
  r0.y = r0.y * r0.z;
  r0.x = min(r0.y, r0.x);
  r0.y = v0.x * PassParams_constants.vPosToUV.x + -r0.w;
  r0.z = saturate(-1 + MaterialParams_constants.Alphalistonupdownfoff_35.x);
  r0.y = r0.z * r0.y + r0.w;
  r0.z = MaterialParams_constants.Alphalistonupdownfoff_35.z + -MaterialParams_constants.Alphalistonupdownfoff_35.y;
  r0.w = r0.z * 0.5 + MaterialParams_constants.Alphalistonupdownfoff_35.y;
  r0.y = r0.y + -r0.w;
  r0.y = r0.z * 0.5 + -abs(r0.y);
  r0.z = cmp(0 != MaterialParams_constants.Alphalistonupdownfoff_35.w);
  r0.z = r0.z ? MaterialParams_constants.Alphalistonupdownfoff_35.w : 9.99999997e-007;
  r0.y = saturate(r0.y / r0.z);
  r0.y = -1 + r0.y;
  r0.z = saturate(MaterialParams_constants.Alphalistonupdownfoff_35.x);
  r0.y = r0.z * r0.y + 1;
  r0.x = r0.x * r0.y;
  r0.y = (uint)v7.x << 3;
  r0.y = (uint)r0.y >> 2;
  r0.y = (int)r0.y + (int)InstanceParams_constants.instancing.instanceBatchSetupConsts.offsets.y;
  r0.y = InstanceParams_instancing_instanceData.Load(r0.y).y;
  r0.y = (int)r0.y + 3;
  r0.yz = InstanceParams_instancing_instanceData.Load(r0.y).zw;
  r0.zw = (int2)r0.yz & int2(255,255);
  r2.xyz = (uint3)r0.yyy >> int3(24,16,8);
  r2.xyz = (int3)r2.xyz & int3(255,255,255);
  r2.xyz = (uint3)r2.xyz;
  r2.xyz = r2.xyz * float3(0.00392156886,0.00392156886,0.00392156886) + -MaterialParams_constants.Layer0Color_33.xyz;
  r2.xyz = MaterialParams_constants.RemoveHack_34.xxx * r2.xyz + MaterialParams_constants.Layer0Color_33.xyz;
  r0.yz = (uint2)r0.zw;
  r0.y = 0.00392156886 * r0.y;
  r0.y = r0.z * r0.y;
  r0.y = MaterialParams_constants.AlphaBoost_28.x * r0.y;
  r0.y = 0.00392156886 * r0.y;
  r0.x = r0.y * r0.x;
  r3.xyz = float3(1,1,1) + -r1.wxy;
  r0.y = cmp(0 != MaterialParams_constants.Layer0DiffuseIsInvert_23.x);
  r0.yzw = r0.yyy ? r3.xyz : r1.wxy;
  r1.xyz = saturate(r0.yzw + r2.xyz);
  r1.xyz = -r0.yzw * r2.xyz + r1.xyz;
  r0.yzw = r0.yzw * r2.xyz;
  r0.yzw = MaterialParams_constants.Layer0ColorIsAdd_24.xxx * r1.xyz + r0.yzw;
  r1.xyz = r2.xyz + -r0.yzw;
  r0.yzw = MaterialParams_constants.Layer0DiffuseIsBC4_14.xxx * r1.xyz + r0.yzw;
  r0.yzw = r0.yzw * r0.xxx;
  o0.w = 1.0;  // DIAGNOSTIC TEMPORAIRE : force l'alpha a 1 pour tester le pipeline
  //o0.w = r0.x * RENODX_UI_OPACITY;
  r0.x = PassParams_lastExposureTexture.SampleLevel(FrameParams_defaultSamplers_pointClamp_s, float2(0,0), 0).x;
  r0.xyz = r0.yzw / r0.xxx;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = min(float3(100000,100000,100000), r0.xyz);
  o0.xyz = PassParams_constants.globalLightingScale.xxx * r0.xyz;
  o0.xyz = float3(5.0, 0.0, 0.0);  // DIAGNOSTIC TEMPORAIRE : force une couleur rouge vif
  return;
}