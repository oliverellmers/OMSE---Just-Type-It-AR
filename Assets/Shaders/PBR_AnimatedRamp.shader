// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9121,x:33007,y:32712,varname:node_9121,prsc:2|diff-2599-OUT,spec-8251-OUT,gloss-9676-OUT,emission-2016-OUT,clip-5220-OUT;n:type:ShaderForge.SFN_Color,id:20,x:31331,y:32548,ptovrint:False,ptlb:Color_A,ptin:_Color_A,varname:node_20,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Slider,id:8416,x:32062,y:32866,ptovrint:False,ptlb:EmissionMultiplier,ptin:_EmissionMultiplier,varname:node_8416,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.75;n:type:ShaderForge.SFN_TexCoord,id:4804,x:29200,y:33847,varname:node_4804,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:9772,x:29375,y:33847,varname:node_9772,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-4804-UVOUT;n:type:ShaderForge.SFN_Multiply,id:1080,x:29911,y:33838,varname:node_1080,prsc:2|A-3051-OUT,B-8834-OUT,C-7445-OUT;n:type:ShaderForge.SFN_Sin,id:5259,x:30097,y:33493,varname:node_5259,prsc:2|IN-1080-OUT;n:type:ShaderForge.SFN_RemapRange,id:8063,x:30246,y:33493,varname:node_8063,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-5259-OUT;n:type:ShaderForge.SFN_Clamp01,id:4057,x:30409,y:33493,varname:node_4057,prsc:2|IN-8063-OUT;n:type:ShaderForge.SFN_Tau,id:7445,x:29752,y:34027,varname:node_7445,prsc:2;n:type:ShaderForge.SFN_Lerp,id:2599,x:32113,y:32685,varname:node_2599,prsc:2|A-20-RGB,B-6000-RGB,T-5853-OUT;n:type:ShaderForge.SFN_Multiply,id:2016,x:32434,y:32815,varname:node_2016,prsc:2|A-2599-OUT,B-8416-OUT;n:type:ShaderForge.SFN_Color,id:6000,x:31331,y:32732,ptovrint:False,ptlb:Color_B,ptin:_Color_B,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0.8382354,c4:0;n:type:ShaderForge.SFN_Lerp,id:5220,x:32219,y:32988,varname:node_5220,prsc:2|A-20-A,B-6000-A,T-5853-OUT;n:type:ShaderForge.SFN_Slider,id:8251,x:32092,y:32438,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:_EmissionMultiplier_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.75;n:type:ShaderForge.SFN_Slider,id:9676,x:32113,y:32536,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_EmissionMultiplier_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.75;n:type:ShaderForge.SFN_Round,id:8712,x:30577,y:33493,varname:node_8712,prsc:2|IN-4057-OUT;n:type:ShaderForge.SFN_Time,id:9997,x:29190,y:34061,varname:node_9997,prsc:2;n:type:ShaderForge.SFN_Add,id:8834,x:29561,y:33847,varname:node_8834,prsc:2|A-9772-OUT,B-57-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3051,x:29616,y:33655,ptovrint:False,ptlb:LineNum,ptin:_LineNum,varname:node_3051,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Divide,id:57,x:29452,y:34126,varname:node_57,prsc:2|A-9997-T,B-6186-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6186,x:29212,y:34289,ptovrint:False,ptlb:SpeedDivision,ptin:_SpeedDivision,varname:node_6186,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;n:type:ShaderForge.SFN_SwitchProperty,id:5853,x:31327,y:33710,ptovrint:False,ptlb:LineMask,ptin:_LineMask,varname:node_5853,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-8712-OUT,B-4672-OUT;n:type:ShaderForge.SFN_Sin,id:2918,x:30283,y:34003,varname:node_2918,prsc:2|IN-1080-OUT;n:type:ShaderForge.SFN_RemapRange,id:8027,x:30457,y:34003,varname:node_8027,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-2918-OUT;n:type:ShaderForge.SFN_Clamp01,id:3791,x:30616,y:34003,varname:node_3791,prsc:2|IN-8027-OUT;n:type:ShaderForge.SFN_Round,id:4672,x:30775,y:34003,varname:node_4672,prsc:2|IN-3791-OUT;proporder:20-8416-6000-9676-8251-3051-6186-5853;pass:END;sub:END;*/

Shader "Custom/CurvedWall_Shader" {
    Properties {
        _Color_A ("Color_A", Color) = (1,0,0,1)
        _EmissionMultiplier ("EmissionMultiplier", Range(0, 0.75)) = 0
        _Color_B ("Color_B", Color) = (1,0,0.8382354,0)
        _Gloss ("Gloss", Range(0, 0.75)) = 0
        _Metallic ("Metallic", Range(0, 0.75)) = 0
        _LineNum ("LineNum", Float ) = 4
        _SpeedDivision ("SpeedDivision", Float ) = 20
        [MaterialToggle] _LineMask ("LineMask", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal 
            #pragma target 3.0
            uniform float4 _Color_A;
            uniform float _EmissionMultiplier;
            uniform float4 _Color_B;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _LineNum;
            uniform float _SpeedDivision;
            uniform fixed _LineMask;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 node_9997 = _Time;
                float node_1080 = (_LineNum*(i.uv0.g+(node_9997.g/_SpeedDivision))*6.28318530718);
                float _LineMask_var = lerp( round(saturate((sin(node_1080)*0.5+0.5))), round(saturate((sin(node_1080)*0.5+0.5))), _LineMask );
                clip(lerp(_Color_A.a,_Color_B.a,_LineMask_var) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float perceptualRoughness = 1.0 - _Gloss;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float3 node_2599 = lerp(_Color_A.rgb,_Color_B.rgb,_LineMask_var);
                float3 diffuseColor = node_2599; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = (node_2599*_EmissionMultiplier);
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal 
            #pragma target 3.0
            uniform float4 _Color_A;
            uniform float _EmissionMultiplier;
            uniform float4 _Color_B;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _LineNum;
            uniform float _SpeedDivision;
            uniform fixed _LineMask;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 node_9997 = _Time;
                float node_1080 = (_LineNum*(i.uv0.g+(node_9997.g/_SpeedDivision))*6.28318530718);
                float _LineMask_var = lerp( round(saturate((sin(node_1080)*0.5+0.5))), round(saturate((sin(node_1080)*0.5+0.5))), _LineMask );
                clip(lerp(_Color_A.a,_Color_B.a,_LineMask_var) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float perceptualRoughness = 1.0 - _Gloss;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float3 node_2599 = lerp(_Color_A.rgb,_Color_B.rgb,_LineMask_var);
                float3 diffuseColor = node_2599; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal 
            #pragma target 3.0
            uniform float4 _Color_A;
            uniform float4 _Color_B;
            uniform float _LineNum;
            uniform float _SpeedDivision;
            uniform fixed _LineMask;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 node_9997 = _Time;
                float node_1080 = (_LineNum*(i.uv0.g+(node_9997.g/_SpeedDivision))*6.28318530718);
                float _LineMask_var = lerp( round(saturate((sin(node_1080)*0.5+0.5))), round(saturate((sin(node_1080)*0.5+0.5))), _LineMask );
                clip(lerp(_Color_A.a,_Color_B.a,_LineMask_var) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
