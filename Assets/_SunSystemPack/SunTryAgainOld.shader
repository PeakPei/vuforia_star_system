// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:2,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33424,y:32857,varname:node_4013,prsc:2|diff-2760-OUT,normal-2760-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32179,y:32627,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.8896552,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:7212,x:32472,y:32749,varname:node_7212,prsc:2|A-1304-RGB,B-7156-RGB,C-4404-OUT;n:type:ShaderForge.SFN_TexCoord,id:6493,x:31796,y:32472,varname:node_6493,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:1155,x:31944,y:32648,varname:node_1155,prsc:2,spu:0.01,spv:0.01|UVIN-6493-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2760,x:32863,y:32924,varname:node_2760,prsc:2|A-7212-OUT,B-7984-OUT,C-1545-OUT;n:type:ShaderForge.SFN_Slider,id:7984,x:32354,y:33044,ptovrint:False,ptlb:EmissionPower,ptin:_EmissionPower,varname:node_7984,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4,max:10;n:type:ShaderForge.SFN_Tex2d,id:7405,x:32215,y:32404,ptovrint:False,ptlb:DispTex,ptin:_DispTex,varname:node_7405,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-3833-UVOUT;n:type:ShaderForge.SFN_Multiply,id:4730,x:32428,y:32385,varname:node_4730,prsc:2|A-7748-OUT,B-7405-RGB;n:type:ShaderForge.SFN_Panner,id:3833,x:31974,y:32366,varname:node_3833,prsc:2,spu:0.01,spv:-0.01|UVIN-6493-UVOUT;n:type:ShaderForge.SFN_Vector1,id:7748,x:32238,y:32186,varname:node_7748,prsc:2,v1:2;n:type:ShaderForge.SFN_Clamp01,id:7611,x:32614,y:32239,varname:node_7611,prsc:2|IN-4730-OUT;n:type:ShaderForge.SFN_Subtract,id:2830,x:32653,y:32402,varname:node_2830,prsc:2|A-4730-OUT,B-8624-OUT;n:type:ShaderForge.SFN_Vector1,id:8624,x:32485,y:32528,varname:node_8624,prsc:2,v1:1;n:type:ShaderForge.SFN_Clamp01,id:8427,x:32853,y:32402,varname:node_8427,prsc:2|IN-2830-OUT;n:type:ShaderForge.SFN_Lerp,id:1163,x:33178,y:32243,varname:node_1163,prsc:2|A-3032-OUT,B-7168-OUT,T-8427-OUT;n:type:ShaderForge.SFN_Lerp,id:3032,x:32852,y:32073,varname:node_3032,prsc:2|A-3788-OUT,B-4993-OUT,T-7611-OUT;n:type:ShaderForge.SFN_Vector3,id:4993,x:32586,y:32090,varname:node_4993,prsc:2,v1:1,v2:0.9724138,v3:0;n:type:ShaderForge.SFN_Vector3,id:3788,x:32570,y:31949,varname:node_3788,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Vector3,id:7168,x:32878,y:32250,varname:node_7168,prsc:2,v1:0.9862069,v2:1,v3:0;n:type:ShaderForge.SFN_Multiply,id:1545,x:33380,y:32099,varname:node_1545,prsc:2|A-3555-OUT,B-1163-OUT;n:type:ShaderForge.SFN_Vector1,id:3555,x:33031,y:31989,varname:node_3555,prsc:2,v1:1.75;n:type:ShaderForge.SFN_Tex2d,id:7156,x:32155,y:32816,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_7156,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:20edad90e2a49c348940b83d78683622,ntxv:0,isnm:False|UVIN-1155-UVOUT;n:type:ShaderForge.SFN_Vector1,id:4404,x:32307,y:32925,varname:node_4404,prsc:2,v1:2;proporder:1304-7156-7984-7405;pass:END;sub:END;*/

Shader "Shader Forge/SunTryAgainOld" {
    Properties {
        _Color ("Color", Color) = (1,0.8896552,0,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _EmissionPower ("EmissionPower", Range(0, 10)) = 4
        _DispTex ("DispTex", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Color;
            uniform float _EmissionPower;
            uniform sampler2D _DispTex; uniform float4 _DispTex_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_3027 = _Time;
                float2 node_1155 = (i.uv0+node_3027.g*float2(0.01,0.01));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_1155, _MainTex));
                float2 node_3833 = (i.uv0+node_3027.g*float2(0.01,-0.01));
                float4 _DispTex_var = tex2D(_DispTex,TRANSFORM_TEX(node_3833, _DispTex));
                float3 node_4730 = (2.0*_DispTex_var.rgb);
                float3 node_2760 = ((_Color.rgb*_MainTex_var.rgb*2.0)*_EmissionPower*(1.75*lerp(lerp(float3(0,0,0),float3(1,0.9724138,0),saturate(node_4730)),float3(0.9862069,1,0),saturate((node_4730-1.0)))));
                float3 normalLocal = node_2760;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = node_2760;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Color;
            uniform float _EmissionPower;
            uniform sampler2D _DispTex; uniform float4 _DispTex_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_4912 = _Time;
                float2 node_1155 = (i.uv0+node_4912.g*float2(0.01,0.01));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_1155, _MainTex));
                float2 node_3833 = (i.uv0+node_4912.g*float2(0.01,-0.01));
                float4 _DispTex_var = tex2D(_DispTex,TRANSFORM_TEX(node_3833, _DispTex));
                float3 node_4730 = (2.0*_DispTex_var.rgb);
                float3 node_2760 = ((_Color.rgb*_MainTex_var.rgb*2.0)*_EmissionPower*(1.75*lerp(lerp(float3(0,0,0),float3(1,0.9724138,0),saturate(node_4730)),float3(0.9862069,1,0),saturate((node_4730-1.0)))));
                float3 normalLocal = node_2760;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = node_2760;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
