// ---- Created with 3Dmigoto v1.3.16 on Sun Sep 06 03:05:16 2026

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

    float4 VertexOffset_169;
    float4 VertexScale_170;
    float4 AdjustBVOffsetUV_171;
    float4 DFOuterGradient_1;
    float4 DFOuterOffsetX_3;
    float4 DFOuterSize_4;
    float4 DFOuterOffsetY_6;
    float4 DFEnabled_7;
    float4 DFEdgeThickness_8;
    float4 DFEdgeGradient_9;
    float4 DFInnerSize_10;
    float4 DFInnerGradient_11;
    float4 DFInnerOffsetX_12;
    float4 DFInnerOffsetY_13;
    float4 Alpha_16;
    float4 AlphaTransition_19;
    float4 GlowRampUVBvorScreen_56;
    float4 DFOuterColor_2;
    float4 Layer0Color_5;
    float4 DFInnerColor_14;
    float4 GlowColor_26;
    float4 Layer0Color2_41;
    float4 Alphalistonupdownfoff_60;
    float4 Alpha2IFONinalpha_15;
    float4 GlowON_21;
    float4 GlowDFGradiant_22;
    float4 GlowDFThickness_23;
    float4 GlowRampFallOFF_28;
    float4 Color2RampUorV_29;
    float4 Color2RampFalloff_30;
    float4 Color2RampSize_31;
    float4 Color2SelectRAMPorbothorAlpha_32;
    float4 Color2RampDiagOffset_33;
    float4 GlowRampDiag_36;
    float4 GlowRampPOS_37;
    float4 GlowRampsize_38;
    float4 GlowRampUovV_39;
    float4 Color2ON_42;
    float4 Alpha2SelectBVScreenUV_43;
    float4 GlowSelectRAMPorbothorAlpha2_44;
    float4 Alpha2RGBAselectChannel_45;
    float4 Alpha2isClamp_46;
    float4 Color2RampPOS_48;
    float4 Alpha2uVisLOCAL_49;
    float4 AlphaLevelInputMAX_50;
    float4 AlphaLevelMininput_51;
    float4 AlphaLevelGamma_52;
    float4 AlphaLevelMinOutput_53;
    float4 AlphaLevelMaxOutput_54;
    float4 AlphaLevelOn_57;
    float4 GlowColoror2Xlayer0_59;
    float3x3 Alpha2UV_35_matrix;
  } MaterialParams_constants : packoffset(c0);

}

SamplerState FrameParams_defaultSamplers_pointClamp_s : register(s0);
SamplerState FrameParams_defaultSamplers_standardSampler_s : register(s4);
Texture2D<float4> PassParams_lastExposureTexture : register(t18);
Texture2D<float4> MaterialParams_srv_Layer0Diffuse_0 : register(t69);
Texture2D<float4> MaterialParams_srv_Alpha2texture_0 : register(t70);


// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  linear sample float4 v1 : TEXCOORD0,
  linear sample float4 v2 : TEXCOORD1,
  linear sample float4 v3 : COLOR0,
  float4 v4 : TEXCOORD2,
  float4 v5 : TEXCOORD3,
  float4 v6 : TEXCOORD4,
  float4 v7 : TEXCOORD5,
  uint v8 : InstanceID0,
  uint v9 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  float4 x2[4];
  r0.x = PassParams_constants.vPosToUV.y * v0.y;
  r0.yz = MaterialParams_constants.Color2RampDiagOffset_33.xx * v1.wz + v1.zw;
  r0.z = r0.z + -r0.y;
  r0.y = MaterialParams_constants.Color2RampUorV_29.x * r0.z + r0.y;
  r0.y = MaterialParams_constants.Color2RampPOS_48.x + r0.y;
  r0.y = -MaterialParams_constants.Color2RampSize_31.x + abs(r0.y);
  r0.y = saturate(r0.y / MaterialParams_constants.Color2RampFalloff_30.x);
  r0.y = 1 + -r0.y;
  r0.zw = v1.zw * float2(1,-1) + float2(1,0);
  r1.xy = v0.xy * PassParams_constants.vPosToUV.xy + -r0.zw;
  r0.zw = MaterialParams_constants.Alpha2SelectBVScreenUV_43.xx * r1.xy + r0.zw;
  r1.xy = v2.xz + -r0.zw;
  r1.xy = MaterialParams_constants.Alpha2uVisLOCAL_49.xx * r1.xy + r0.zw;
  r1.z = 1;
  r2.x = dot(r1.xyz, MaterialParams_constants.Alpha2UV_35_matrix._m00_m10_m20);
  r2.y = dot(r1.xyz, MaterialParams_constants.Alpha2UV_35_matrix._m01_m11_m21);
  r0.z = cmp(0 != MaterialParams_constants.Alpha2isClamp_46.x);
  r1.xy = saturate(r2.xy);
  r0.zw = r0.zz ? r1.xy : r2.xy;
  r1.xyzw = MaterialParams_srv_Alpha2texture_0.SampleBias(FrameParams_defaultSamplers_standardSampler_s, r0.zw, PassParams_constants.gradientAdjustMipBias).xyzw;
  x0[0].x = r1.x;
  x0[1].x = r1.y;
  x0[2].x = r1.z;
  x0[3].x = r1.w;
  r0.z = (int)MaterialParams_constants.Alpha2RGBAselectChannel_45.x;
  r0.z = max(0, (int)r0.z);
  r0.z = min(3, (int)r0.z);
  r0.w = x0[r0.z+0].x;
  r0.z = (int)r0.z + 1;
  r0.z = min(3, (int)r0.z);
  r0.z = x0[r0.z+0].x;
  r1.x = frac(MaterialParams_constants.Alpha2RGBAselectChannel_45.x);
  r0.z = r0.z + -r0.w;
  r0.z = r1.x * r0.z + r0.w;
  r0.w = -MaterialParams_constants.AlphaLevelMininput_51.x + r0.z;
  r0.w = max(0, r0.w);
  r1.x = 1 + -MaterialParams_constants.AlphaLevelMininput_51.x;
  r1.x = -MaterialParams_constants.AlphaLevelInputMAX_50.x + r1.x;
  r1.x = max(0, r1.x);
  r0.w = saturate(r0.w / r1.x);
  r1.x = 1 / MaterialParams_constants.AlphaLevelGamma_52.x;
  r0.w = log2(r0.w);
  r0.w = r1.x * r0.w;
  r0.w = exp2(r0.w);
  r1.x = MaterialParams_constants.AlphaLevelMaxOutput_54.x + -MaterialParams_constants.AlphaLevelMinOutput_53.x;
  r0.w = r1.x * r0.w + MaterialParams_constants.AlphaLevelMinOutput_53.x;
  r0.w = r0.w + -r0.z;
  r0.z = saturate(MaterialParams_constants.AlphaLevelOn_57.x * r0.w + r0.z);
  r0.w = r0.y * r0.z;
  x1[0].x = r0.y;
  x1[1].x = r0.w;
  x1[2].x = r0.z;
  x1[3].x = 1;
  r0.y = (int)MaterialParams_constants.Color2SelectRAMPorbothorAlpha_32.x;
  r0.y = max(0, (int)r0.y);
  r0.y = min(3, (int)r0.y);
  r0.w = x1[r0.y+0].x;
  r0.y = (int)r0.y + 1;
  r0.y = min(3, (int)r0.y);
  r0.y = x1[r0.y+0].x;
  r1.x = frac(MaterialParams_constants.Color2SelectRAMPorbothorAlpha_32.x);
  r0.y = r0.y + -r0.w;
  r0.y = r1.x * r0.y + r0.w;
  r0.y = MaterialParams_constants.Color2ON_42.x * r0.y;
  r1.xyzw = MaterialParams_constants.Layer0Color2_41.xyzw + -MaterialParams_constants.Layer0Color_5.xyzw;
  r1.xyzw = r0.yyyy * r1.xyzw + MaterialParams_constants.Layer0Color_5.xyzw;
  r2.xyzw = saturate(r1.xyzw);
  r0.y = dot(v3.xyz, float3(1,1,1));
  r0.y = cmp(r0.y >= 2.99000001);
  r0.y = r0.y ? 1.000000 : 0;
  r2.xyzw = -v3.xyzw + r2.xyzw;
  r2.xyzw = r0.yyyy * r2.xyzw + v3.xyzw;
  r0.y = cmp(MaterialParams_constants.DFEnabled_7.x == 0.000000);
  if (r0.y != 0) {
    r0.w = MaterialParams_srv_Layer0Diffuse_0.Sample(FrameParams_defaultSamplers_standardSampler_s, v1.xy).w;
    r3.w = r2.w * r0.w;
    r3.xyz = r2.xyz;
  }
  if (r0.y == 0) {
    r0.y = -MaterialParams_constants.DFEdgeGradient_9.x * 0.5 + MaterialParams_constants.DFEdgeThickness_8.x;
    r0.w = MaterialParams_constants.DFEdgeGradient_9.x * 0.5 + MaterialParams_constants.DFEdgeThickness_8.x;
    r4.x = MaterialParams_srv_Layer0Diffuse_0.Sample(FrameParams_defaultSamplers_standardSampler_s, v1.xy).w;
    r4.x = 1 + -r4.x;
    r4.y = cmp(0 < MaterialParams_constants.DFInnerSize_10.x);
    if (r4.y != 0) {
      r4.y = -MaterialParams_constants.DFEdgeThickness_8.x * MaterialParams_constants.DFInnerSize_10.x + MaterialParams_constants.DFEdgeThickness_8.x;
      r4.z = -r4.y + r0.w;
      r4.w = MaterialParams_constants.DFInnerGradient_11.x * r4.z;
      r4.z = r4.z * MaterialParams_constants.DFInnerGradient_11.x + r4.y;
      r5.x = cmp(MaterialParams_constants.DFInnerOffsetX_12.x != 0.000000);
      r5.y = cmp(MaterialParams_constants.DFInnerOffsetY_13.x != 0.000000);
      r5.x = (int)r5.y | (int)r5.x;
      if (r5.x != 0) {
        r5.x = MaterialParams_constants.DFInnerOffsetX_12.x;
        r5.y = MaterialParams_constants.DFInnerOffsetY_13.x;
        r5.xy = v1.xy + r5.xy;
        r5.x = MaterialParams_srv_Layer0Diffuse_0.Sample(FrameParams_defaultSamplers_standardSampler_s, r5.xy).w;
        r5.x = 1 + -r5.x;
      } else {
        r5.x = r4.x;
      }
      r5.y = cmp(r5.x >= r4.y);
      r4.z = cmp(r5.x < r4.z);
      r4.y = r5.x + -r4.y;
      r4.w = 1 / r4.w;
      r4.y = saturate(r4.y * r4.w);
      r4.w = r4.y * -2 + 3;
      r4.y = r4.y * r4.y;
      r4.y = r4.w * r4.y;
      r4.y = r4.z ? r4.y : 1;
      r5.xzw = MaterialParams_constants.DFInnerColor_14.xyz + -r2.xyz;
      r4.yzw = r4.yyy * r5.xzw + r2.xyz;
      r3.xyz = r5.yyy ? r4.yzw : r2.xyz;
    } else {
      r3.xyz = r2.xyz;
    }
    r2.x = cmp(0 < MaterialParams_constants.DFEdgeGradient_9.x);
    r2.y = r0.y + -r0.w;
    r2.z = r4.x + -r0.w;
    r2.y = 1 / r2.y;
    r2.y = saturate(r2.z * r2.y);
    r2.z = r2.y * -2 + 3;
    r2.y = r2.y * r2.y;
    r2.y = r2.z * r2.y;
    r0.y = r0.y + r0.w;
    r0.y = 0.5 * r0.y;
    r0.y = cmp(r0.y >= r4.x);
    r0.y = r0.y ? 1.000000 : 0;
    r0.y = r2.x ? r2.y : r0.y;
    r0.w = cmp(0 < MaterialParams_constants.DFOuterSize_4.x);
    if (r0.w != 0) {
      r0.w = 1 + -MaterialParams_constants.DFEdgeThickness_8.x;
      r0.w = r0.w * MaterialParams_constants.DFOuterSize_4.x + MaterialParams_constants.DFEdgeThickness_8.x;
      r2.x = -MaterialParams_constants.DFOuterGradient_1.x + r0.w;
      r2.y = cmp(MaterialParams_constants.DFOuterOffsetX_3.x != 0.000000);
      r2.z = cmp(MaterialParams_constants.DFOuterOffsetY_6.x != 0.000000);
      r2.y = (int)r2.z | (int)r2.y;
      if (r2.y != 0) {
        r5.x = MaterialParams_constants.DFOuterOffsetX_3.x;
        r5.y = MaterialParams_constants.DFOuterOffsetY_6.x;
        r2.yz = v1.xy + r5.xy;
        r2.y = MaterialParams_srv_Layer0Diffuse_0.Sample(FrameParams_defaultSamplers_standardSampler_s, r2.yz).w;
        r4.x = 1 + -r2.y;
      }
      r2.x = cmp(r2.x < r4.x);
      r0.w = r4.x + -r0.w;
      r2.y = 1 / -MaterialParams_constants.DFOuterGradient_1.x;
      r0.w = saturate(r2.y * r0.w);
      r2.y = r0.w * -2 + 3;
      r0.w = r0.w * r0.w;
      r0.w = r2.y * r0.w;
      r0.w = r2.x ? r0.w : 1;
      r2.xyz = -MaterialParams_constants.DFOuterColor_2.xyz + r3.xyz;
      r3.xyz = r0.yyy * r2.xyz + MaterialParams_constants.DFOuterColor_2.xyz;
      r0.y = max(r0.y, r0.w);
    }
    r3.w = r0.y * r2.w;
  }
  r1.xyzw = r1.xyzw * float4(2,2,2,2) + -MaterialParams_constants.GlowColor_26.xyzw;
  r1.xyzw = MaterialParams_constants.GlowColoror2Xlayer0_59.xxxx * r1.xyzw + MaterialParams_constants.GlowColor_26.xyzw;
  r0.y = -MaterialParams_constants.GlowDFGradiant_22.x * 0.5 + MaterialParams_constants.GlowDFThickness_23.x;
  r0.w = MaterialParams_constants.GlowDFGradiant_22.x * 0.5 + MaterialParams_constants.GlowDFThickness_23.x;
  r2.x = MaterialParams_srv_Layer0Diffuse_0.Sample(FrameParams_defaultSamplers_standardSampler_s, v1.xy).w;
  r2.x = 1 + -r2.x;
  r2.y = cmp(0 < MaterialParams_constants.GlowDFGradiant_22.x);
  r2.z = r0.y + -r0.w;
  r2.w = r2.x + -r0.w;
  r2.z = 1 / r2.z;
  r2.z = saturate(r2.w * r2.z);
  r2.w = r2.z * -2 + 3;
  r2.z = r2.z * r2.z;
  r2.z = r2.w * r2.z;
  r0.y = r0.y + r0.w;
  r0.y = 0.5 * r0.y;
  r0.y = cmp(r0.y >= r2.x);
  r0.y = r0.y ? 1.000000 : 0;
  r0.y = r2.y ? r2.z : r0.y;
  r1.w = r0.y * r1.w;
  r0.yw = v0.xy * PassParams_constants.vPosToUV.xy + -v1.zw;
  r0.yw = MaterialParams_constants.GlowRampUVBvorScreen_56.xx * r0.yw + v1.zw;
  r0.yw = r0.wy * MaterialParams_constants.GlowRampDiag_36.xx + r0.yw;
  r0.w = r0.w + -r0.y;
  r0.y = MaterialParams_constants.GlowRampUovV_39.x * r0.w + r0.y;
  r0.y = MaterialParams_constants.GlowRampPOS_37.x + r0.y;
  r0.y = -MaterialParams_constants.GlowRampsize_38.x + abs(r0.y);
  r0.y = saturate(r0.y / MaterialParams_constants.GlowRampFallOFF_28.x);
  r0.y = 1 + -r0.y;
  r0.w = r0.y * r0.z;
  x2[0].x = r0.y;
  x2[1].x = r0.w;
  x2[2].x = r0.z;
  x2[3].x = 1;
  r0.y = (int)MaterialParams_constants.GlowSelectRAMPorbothorAlpha2_44.x;
  r0.y = max(0, (int)r0.y);
  r0.y = min(3, (int)r0.y);
  r0.w = x2[r0.y+0].x;
  r0.y = (int)r0.y + 1;
  r0.y = min(3, (int)r0.y);
  r0.y = x2[r0.y+0].x;
  r2.x = frac(MaterialParams_constants.GlowSelectRAMPorbothorAlpha2_44.x);
  r0.y = r0.y + -r0.w;
  r0.y = r2.x * r0.y + r0.w;
  r0.y = MaterialParams_constants.GlowON_21.x * r0.y;
  r1.xyzw = r0.yyyy * r1.xyzw + r3.xyzw;
  r0.y = saturate(-1 + MaterialParams_constants.Alphalistonupdownfoff_60.x);
  r0.w = v0.x * PassParams_constants.vPosToUV.x + -r0.x;
  r0.x = r0.y * r0.w + r0.x;
  r0.y = MaterialParams_constants.Alphalistonupdownfoff_60.z + -MaterialParams_constants.Alphalistonupdownfoff_60.y;
  r0.w = r0.y * 0.5 + MaterialParams_constants.Alphalistonupdownfoff_60.y;
  r0.x = r0.x + -r0.w;
  r0.w = cmp(0 != MaterialParams_constants.Alphalistonupdownfoff_60.w);
  r0.w = r0.w ? MaterialParams_constants.Alphalistonupdownfoff_60.w : 9.99999997e-007;
  r0.x = r0.y * 0.5 + -abs(r0.x);
  r0.x = saturate(r0.x / r0.w);
  r0.y = saturate(MaterialParams_constants.Alphalistonupdownfoff_60.x);
  r0.x = -1 + r0.x;
  r0.x = r0.y * r0.x + 1;
  r0.y = MaterialParams_constants.AlphaTransition_19.x * MaterialParams_constants.Alpha_16.x;
  r0.z = r0.y * r0.z + -r0.y;
  r0.y = MaterialParams_constants.Alpha2IFONinalpha_15.x * r0.z + r0.y;
  r0.x = r0.x * r0.y;
  r0.x = saturate(r1.w * r0.x);
  r0.yzw = r1.xyz * r0.xxx;
  r1.x = PassParams_lastExposureTexture.SampleLevel(FrameParams_defaultSamplers_pointClamp_s, float2(0,0), 0).x;
  r0.yzw = r0.yzw / r1.xxx;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.yzw = min(float3(100000,100000,100000), r0.yzw);
  o0.xyz = PassParams_constants.globalLightingScale.xxx * r0.yzw;
  o0.w = r0.x * RENODX_UI_OPACITY;
  return;
}