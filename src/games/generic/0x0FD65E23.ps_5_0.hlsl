// ---- Created with 3Dmigoto v1.3.16 on Sun Sep 06 03:05:24 2026

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

    float4 Layer0localuvorScreen_207;
    float4 VertexoffsetUseBV_210;
    float4 _9ssOffsetX_220;
    float4 Layer0UVisMeter_236;
    float4 VertexScale_206;
    float4 VertexOffset_209;
    float4 Alpha2isGauge_213;
    float4 _9SSON_216;
    float4 Alpha2UVUseRotcenter_230;
    float4 Layer0UVUseRotcenter_231;
    float4 _9SSProportionBVOFFON_233;
    float4 _9SSPoportionScaleValue_234;
    float4 Alpha2uvBVScreen_235;
    float4 Alpha2isMeter_237;
    float4 Alpha2useUV9SS_238;
    float3x3 UVLayer0_205_matrix;
    float3x3 UVAlpha2_208_matrix;
    float4 AlphalocalUVorScreen_5;
    float4 AlphaLocalHGradiant_6;
    float4 AlphaLocalVGradiant_7;
    float4 AlphaLocalVValue_8;
    float4 AlphaLocalHValue_9;
    float4 GlowRGBaselectChannel_12;
    float4 Alpha2RGBAselectChannel_13;
    float4 Layer0RGBAselectChannel_23;
    float4 GlowRampUVBVorScreen_25;
    float4 GlowOn_26;
    float4 AlphaisColorAndColor2_28;
    float4 Color2Select0Ramp1Rampalpha2Alpha_29;
    float4 GlowDFOffOn_31;
    float4 GlowRampDiagonal_32;
    float4 GlowRampFalloff_33;
    float4 GlowRampPosition_34;
    float4 GlowRampuorv_35;
    float4 GlowRampSize_36;
    float4 GlowSelect0Ramp1Rampalpha2Alpha_37;
    float4 Color2ON_46;
    float4 Color2RampPosition_48;
    float4 Color2RampFalloff_50;
    float4 Color2RampSize_51;
    float4 Color2Rampuorv_52;
    float4 Color2RampDiagonal_53;
    float4 GlowColoror2Xlayer0_55;
    float4 AlphaClampFallof_66;
    float4 AlphaClampMin_67;
    float4 AlphaClampOffON_68;
    float4 GlowColor_38;
    float4 Color2_47;
    float4 Alphalistonupdownfoff_60;
    float4 AlphaTransition_2;
    float4 Alpha2_4;
    float4 Alpha_10;
    float4 Alpha2MultDiffuse_14;
    float4 Alpha2invert_17;
    float4 Layer0isBC4_18;
    float4 Layer0isClamp_19;
    float4 Alpha2isBC4_20;
    float4 Alapha2isClamp_21;
    float4 Layer0is4Channel_24;
    float4 GlowCursorON_27;
    float4 AlphaLevelInputMAX_40;
    float4 AlphaLevelMininput_41;
    float4 AlphaLevelGamma_42;
    float4 AlphaLevelMinOutput_43;
    float4 AlphaLevelMaxOutput_44;
    float4 AlphaLevelOn_45;
    float4 GlowCursorFallOff_57;
    float4 GlowCursorSize_58;
    float4 AlphaBoost_64;
    float4 AlphaClampMax_65;
    float4 Layer0Color_11;
    float4 GlowCursorPOS_56;
  } MaterialParams_constants : packoffset(c0);

}

SamplerState FrameParams_defaultSamplers_pointClamp_s : register(s0);
SamplerState FrameParams_defaultSamplers_standardSampler_s : register(s4);
SamplerState PassParams_AmbientLighting_LocalCubeMapsSampler_s : register(s7);
Texture2D<float4> PassParams_lastExposureTexture : register(t18);
Texture3D<float4> PassParams_fog_FogLookup : register(t40);
Texture2D<float4> MaterialParams_srv_Alpha2texture_0 : register(t69);
Texture2D<float4> MaterialParams_srv_Layer0Diffuse_1 : register(t70);


// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  linear sample float4 v1 : TEXCOORD0,
  linear sample float4 v2 : COLOR0,
  linear sample float4 v3 : COLOR1,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : TEXCOORD4,
  uint v8 : InstanceID0,
  uint v9 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  float4 x2[4];
  float4 x3[4];
  float4 x4[4];
  r0.x = cmp(0 != MaterialParams_constants.Alpha2invert_17.x);
  r0.y = cmp(0 != MaterialParams_constants.Alapha2isClamp_21.x);
  r1.xyzw = saturate(v1.zwxy);
  r0.yz = r0.yy ? r1.xy : v1.zw;
  r2.xyzw = MaterialParams_srv_Alpha2texture_0.SampleBias(FrameParams_defaultSamplers_standardSampler_s, r0.yz, PassParams_constants.gradientAdjustMipBias).yzwx;
  r3.x = 1 + -r2.w;
  r0.y = cmp(0 != MaterialParams_constants.Alpha2isBC4_20.x);
  r2.xyz = r0.yyy ? r2.www : r2.xyz;
  r3.yz = float2(1,1) + -r2.xy;
  r0.xyz = r0.xxx ? r3.xyz : r2.wxy;
  x0[0].x = r0.x;
  x0[1].x = r0.y;
  x0[2].x = r0.z;
  x0[3].x = r2.z;
  r0.x = cmp(0 != MaterialParams_constants.Layer0isClamp_19.x);
  r0.xy = r0.xx ? r1.zw : v1.xy;
  r0.xyzw = MaterialParams_srv_Layer0Diffuse_1.SampleBias(FrameParams_defaultSamplers_standardSampler_s, r0.xy, PassParams_constants.gradientAdjustMipBias).yzwx;
  x1[0].x = r0.w;
  r1.x = cmp(0 != MaterialParams_constants.Layer0isBC4_18.x);
  r0.xyz = r1.xxx ? r0.www : r0.xyz;
  x1[1].x = r0.x;
  x1[2].x = r0.y;
  x1[3].x = r0.z;
  r1.x = 1 + -v2.y;
  r1.y = MaterialParams_constants.Color2RampDiagonal_53.x * v2.x + r1.x;
  r1.x = MaterialParams_constants.Color2RampDiagonal_53.x * r1.x + v2.x;
  r1.y = r1.y + -r1.x;
  r1.x = MaterialParams_constants.Color2Rampuorv_52.x * r1.y + r1.x;
  r1.x = MaterialParams_constants.Color2RampPosition_48.x + r1.x;
  r1.x = -MaterialParams_constants.Color2RampSize_51.x + abs(r1.x);
  r1.x = saturate(r1.x / MaterialParams_constants.Color2RampFalloff_50.x);
  r1.x = 1 + -r1.x;
  x2[0].x = r1.x;
  r1.y = (int)MaterialParams_constants.Alpha2RGBAselectChannel_13.x;
  r1.y = max(0, (int)r1.y);
  r1.y = min(3, (int)r1.y);
  r1.z = (int)r1.y + 1;
  r1.y = x0[r1.y+0].x;
  r1.z = min(3, (int)r1.z);
  r1.z = x0[r1.z+0].x;
  r1.z = r1.z + -r1.y;
  r1.w = frac(MaterialParams_constants.Alpha2RGBAselectChannel_13.x);
  r1.y = r1.w * r1.z + r1.y;
  r1.z = 1 + -r1.y;
  r1.w = 1 + -MaterialParams_constants.AlphaClampMin_67.x;
  r1.z = r1.z + -r1.w;
  r1.w = cmp(0 != MaterialParams_constants.AlphaClampFallof_66.x);
  r1.w = r1.w ? MaterialParams_constants.AlphaClampFallof_66.x : 9.99999997e-007;
  r1.z = saturate(r1.z / r1.w);
  r2.x = -MaterialParams_constants.AlphaClampMax_65.x + r1.y;
  r1.w = saturate(r2.x / r1.w);
  r1.z = max(r1.w, r1.z);
  r1.z = -r1.y + -r1.z;
  r1.z = 1 + r1.z;
  r1.y = MaterialParams_constants.AlphaClampOffON_68.x * r1.z + r1.y;
  r1.z = (int)MaterialParams_constants.Layer0RGBAselectChannel_23.x;
  r1.z = max(0, (int)r1.z);
  r1.z = min(3, (int)r1.z);
  r1.w = (int)r1.z + 1;
  r1.z = x1[r1.z+0].x;
  r1.w = min(3, (int)r1.w);
  r1.w = x1[r1.w+0].x;
  r1.w = r1.w + -r1.z;
  r2.x = frac(MaterialParams_constants.Layer0RGBAselectChannel_23.x);
  r1.z = r2.x * r1.w + r1.z;
  r1.z = r1.z + -r0.z;
  r1.z = MaterialParams_constants.Layer0is4Channel_24.x * r1.z + r0.z;
  r1.w = r1.z * r1.y + -r1.y;
  r1.y = MaterialParams_constants.Alpha2MultDiffuse_14.x * r1.w + r1.y;
  r1.x = r1.x * r1.y;
  x2[1].x = r1.x;
  x2[2].x = r1.y;
  x2[3].x = 1;
  r1.xw = v0.xy * PassParams_constants.vPosToUV.xy + -v3.xy;
  r1.xw = MaterialParams_constants.GlowRampUVBVorScreen_25.xx * r1.xw + v3.xy;
  r1.xw = r1.wx * MaterialParams_constants.GlowRampDiagonal_32.xx + r1.xw;
  r1.w = r1.w + -r1.x;
  r1.x = MaterialParams_constants.GlowRampuorv_35.x * r1.w + r1.x;
  r1.x = MaterialParams_constants.GlowRampPosition_34.x + r1.x;
  r1.x = -MaterialParams_constants.GlowRampSize_36.x + abs(r1.x);
  r1.x = saturate(r1.x / MaterialParams_constants.GlowRampFalloff_33.x);
  r1.x = 1 + -r1.x;
  x3[0].x = r1.x;
  r1.x = r1.x * r1.y;
  x3[1].x = r1.x;
  x3[2].x = r1.y;
  r1.x = r1.y + -r1.z;
  r1.x = MaterialParams_constants.Alpha2_4.x * r1.x + r1.z;
  x3[3].x = 1;
  x4[0].x = r0.w;
  x4[1].x = r0.x;
  x4[2].x = r0.y;
  x4[3].x = r0.z;
  r1.yzw = float3(1,1,1) + -r0.wxy;
  r0.xyz = MaterialParams_constants.Layer0is4Channel_24.xxx * r1.yzw + r0.wxy;
  r0.w = (int)MaterialParams_constants.GlowRGBaselectChannel_12.x;
  r0.w = max(0, (int)r0.w);
  r0.w = min(3, (int)r0.w);
  r1.y = (int)r0.w + 1;
  r0.w = x4[r0.w+0].x;
  r1.y = min(3, (int)r1.y);
  r1.y = x4[r1.y+0].x;
  r1.y = r1.y + -r0.w;
  r1.z = frac(MaterialParams_constants.GlowRGBaselectChannel_12.x);
  r0.w = r1.z * r1.y + r0.w;
  r1.y = (int)MaterialParams_constants.GlowSelect0Ramp1Rampalpha2Alpha_37.x;
  r1.y = max(0, (int)r1.y);
  r1.y = min(3, (int)r1.y);
  r1.z = (int)r1.y + 1;
  r1.y = x3[r1.y+0].x;
  r1.z = min(3, (int)r1.z);
  r1.z = x3[r1.z+0].x;
  r1.z = r1.z + -r1.y;
  r1.w = frac(MaterialParams_constants.GlowSelect0Ramp1Rampalpha2Alpha_37.x);
  r1.y = r1.w * r1.z + r1.y;
  r1.zw = v0.xy * PassParams_constants.vPosToUV.xy + -MaterialParams_constants.GlowCursorPOS_56.xy;
  r1.z = dot(r1.zw, r1.zw);
  r1.z = sqrt(r1.z);
  r1.z = MaterialParams_constants.GlowCursorSize_58.x + -r1.z;
  r1.w = cmp(0 != MaterialParams_constants.GlowCursorFallOff_57.x);
  r1.w = r1.w ? MaterialParams_constants.GlowCursorFallOff_57.x : 9.99999997e-007;
  r1.z = saturate(r1.z / r1.w);
  r1.z = MaterialParams_constants.GlowCursorON_27.x * r1.z;
  r1.y = r1.y * MaterialParams_constants.GlowOn_26.x + r1.z;
  r1.y = MaterialParams_constants.GlowColor_38.w * r1.y;
  r0.w = saturate(r1.y * r0.w);
  r1.y = (int)MaterialParams_constants.Color2Select0Ramp1Rampalpha2Alpha_29.x;
  r1.y = max(0, (int)r1.y);
  r1.y = min(3, (int)r1.y);
  r1.z = (int)r1.y + 1;
  r1.y = x2[r1.y+0].x;
  r1.z = min(3, (int)r1.z);
  r1.z = x2[r1.z+0].x;
  r1.z = r1.z + -r1.y;
  r1.w = frac(MaterialParams_constants.Color2Select0Ramp1Rampalpha2Alpha_29.x);
  r1.y = r1.w * r1.z + r1.y;
  r1.y = MaterialParams_constants.Color2ON_46.x * r1.y;
  r2.xyzw = -MaterialParams_constants.Layer0Color_11.xyzw + MaterialParams_constants.Color2_47.xyzw;
  r2.xyzw = r1.yyyy * r2.wxyz + MaterialParams_constants.Layer0Color_11.wxyz;
  r1.yzw = MaterialParams_constants.GlowColor_38.xyz + r2.yzw;
  r3.xyz = r2.yzw * float3(2,2,2) + -r1.yzw;
  r1.yzw = MaterialParams_constants.GlowColoror2Xlayer0_55.xxx * r3.xyz + r1.yzw;
  r1.yzw = r1.yzw + -r2.yzw;
  r1.yzw = r0.www * r1.yzw + r2.yzw;
  r2.x = saturate(r2.x);
  r2.x = -MaterialParams_constants.Alpha_10.x + r2.x;
  r2.x = MaterialParams_constants.AlphaisColorAndColor2_28.x * r2.x + MaterialParams_constants.Alpha_10.x;
  r0.w = saturate(r0.w + r1.x);
  r0.w = r0.w + -r1.x;
  r0.w = MaterialParams_constants.GlowDFOffOn_31.x * r0.w + r1.x;
  r0.xyz = r1.yzw * r0.xyz;
  r1.x = cmp(MaterialParams_constants.AlphaLocalHGradiant_6.x >= 0);
  r1.x = r1.x ? 1.000000 : 0;
  r1.y = MaterialParams_constants.AlphaLocalHValue_9.x * -2 + 1;
  r1.x = r1.x * r1.y + MaterialParams_constants.AlphaLocalHValue_9.x;
  r1.yz = v0.xy * PassParams_constants.vPosToUV.xy + -v2.xy;
  r1.yz = MaterialParams_constants.AlphalocalUVorScreen_5.xx * r1.yz + v2.xy;
  r1.x = r1.y + -r1.x;
  r1.y = 1.1920929e-007 + MaterialParams_constants.AlphaLocalHGradiant_6.x;
  r1.x = saturate(r1.x / r1.y);
  r1.y = cmp(MaterialParams_constants.AlphaLocalVGradiant_7.x >= 0);
  r1.y = r1.y ? 1.000000 : 0;
  r1.w = MaterialParams_constants.AlphaLocalVValue_8.x * -2 + 1;
  r1.y = r1.y * r1.w + MaterialParams_constants.AlphaLocalVValue_8.x;
  r1.y = r1.z + -r1.y;
  r1.z = 1.1920929e-007 + MaterialParams_constants.AlphaLocalVGradiant_7.x;
  r1.y = saturate(r1.y / r1.z);
  r1.x = r1.x * r1.y;
  r1.x = r2.x * r1.x;
  r1.x = MaterialParams_constants.AlphaTransition_2.x * r1.x;
  r0.w = saturate(r1.x * r0.w);
  r1.x = -MaterialParams_constants.AlphaLevelMininput_41.x + r0.w;
  r1.y = 1 + -MaterialParams_constants.AlphaLevelMininput_41.x;
  r1.y = -MaterialParams_constants.AlphaLevelInputMAX_40.x + r1.y;
  r1.xy = max(float2(0,0), r1.xy);
  r1.x = saturate(r1.x / r1.y);
  r1.x = log2(r1.x);
  r1.y = 1 / MaterialParams_constants.AlphaLevelGamma_42.x;
  r1.x = r1.y * r1.x;
  r1.x = exp2(r1.x);
  r1.y = MaterialParams_constants.AlphaLevelMaxOutput_44.x + -MaterialParams_constants.AlphaLevelMinOutput_43.x;
  r1.x = r1.y * r1.x + MaterialParams_constants.AlphaLevelMinOutput_43.x;
  r1.x = r1.x + -r0.w;
  r0.w = MaterialParams_constants.AlphaLevelOn_45.x * r1.x + r0.w;
  r1.x = saturate(-1 + MaterialParams_constants.Alphalistonupdownfoff_60.x);
  r2.xy = PassParams_constants.vPosToUV.xy * v0.xy;
  r1.y = v0.x * PassParams_constants.vPosToUV.x + -r2.y;
  r1.x = r1.x * r1.y + r2.y;
  r1.y = MaterialParams_constants.Alphalistonupdownfoff_60.z + -MaterialParams_constants.Alphalistonupdownfoff_60.y;
  r1.z = r1.y * 0.5 + MaterialParams_constants.Alphalistonupdownfoff_60.y;
  r1.x = r1.x + -r1.z;
  r1.x = r1.y * 0.5 + -abs(r1.x);
  r1.y = cmp(0 != MaterialParams_constants.Alphalistonupdownfoff_60.w);
  r1.y = r1.y ? MaterialParams_constants.Alphalistonupdownfoff_60.w : 9.99999997e-007;
  r1.x = saturate(r1.x / r1.y);
  r1.x = -1 + r1.x;
  r1.y = saturate(MaterialParams_constants.Alphalistonupdownfoff_60.x);
  r1.x = r1.y * r1.x + 1;
  r0.w = saturate(r1.x * r0.w);
  r0.w = MaterialParams_constants.AlphaBoost_64.x * r0.w;
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