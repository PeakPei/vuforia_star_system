// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:2,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:34048,y:32724,varname:node_4013,prsc:2|diff-2760-OUT,emission-9413-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32179,y:32627,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.8896552,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:7212,x:32472,y:32749,varname:node_7212,prsc:2|A-1304-RGB,B-7156-RGB,C-4404-OUT;n:type:ShaderForge.SFN_TexCoord,id:6493,x:31796,y:32472,varname:node_6493,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:1155,x:31944,y:32648,varname:node_1155,prsc:2,spu:0.01,spv:0.01|UVIN-6493-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2760,x:33118,y:32893,varname:node_2760,prsc:2|A-7212-OUT,B-7984-OUT;n:type:ShaderForge.SFN_Slider,id:7984,x:32354,y:33044,ptovrint:False,ptlb:EmissionPower,ptin:_EmissionPower,varname:node_7984,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.411614,max:10;n:type:ShaderForge.SFN_Tex2d,id:7156,x:32155,y:32816,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_7156,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:20edad90e2a49c348940b83d78683622,ntxv:0,isnm:False|UVIN-1155-UVOUT;n:type:ShaderForge.SFN_Vector1,id:4404,x:32307,y:32925,varname:node_4404,prsc:2,v1:2;n:type:ShaderForge.SFN_NormalVector,id:7869,x:32005,y:33272,prsc:2,pt:False;n:type:ShaderForge.SFN_Fresnel,id:4049,x:32370,y:33377,varname:node_4049,prsc:2|NRM-7869-OUT,EXP-4670-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4670,x:32139,y:33539,ptovrint:False,ptlb:Exp,ptin:_Exp,varname:node_4670,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_OneMinus,id:4691,x:32637,y:33373,varname:node_4691,prsc:2|IN-4049-OUT;n:type:ShaderForge.SFN_Multiply,id:6726,x:32839,y:33373,varname:node_6726,prsc:2|A-4691-OUT,B-6157-OUT;n:type:ShaderForge.SFN_Slider,id:6157,x:32505,y:33580,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:node_6157,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Lerp,id:9413,x:33448,y:33063,varname:node_9413,prsc:2|A-2571-RGB,B-2760-OUT,T-6726-OUT;n:type:ShaderForge.SFN_Color,id:2571,x:33200,y:32702,ptovrint:False,ptlb:BorderColor,ptin:_BorderColor,varname:node_2571,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.5172414,c3:0,c4:1;proporder:1304-7156-7984-4670-6157-2571;pass:END;sub:END;*/

Shader "Shader Forge/SunTryAgainFresnel" {
    Properties {
        _Color ("Color", Color) = (1,0.8896552,0,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _EmissionPower ("EmissionPower", Range(0, 10)) = 2.411614
        _Exp ("Exp", Float ) = 1
        _Fresnel ("Fresnel", Range(0, 1)) = 1
        _BorderColor ("BorderColor", Color) = (1,0.5172414,0,1)
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Exp;
            uniform float _Fresnel;
            uniform float4 _BorderColor;
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
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
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
                float4 node_1586 = _Time;
                float2 node_1155 = (i.uv0+node_1586.g*float2(0.01,0.01));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_1155, _MainTex));
                float3 node_2760 = ((_Color.rgb*_MainTex_var.rgb*2.0)*_EmissionPower);
                float3 diffuseColor = node_2760;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = lerp(_BorderColor.rgb,node_2760,((1.0 - pow(1.0-max(0,dot(i.normalDir, viewDirection)),_Exp))*_Fresnel));
/// Final Color:
                float3 finalColor = diffuse + emissive;
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Exp;
            uniform float _Fresnel;
            uniform float4 _BorderColor;
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
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 node_7907 = _Time;
                float2 node_1155 = (i.uv0+node_7907.g*float2(0.01,0.01));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_1155, _MainTex));
                float3 node_2760 = ((_Color.rgb*_MainTex_var.rgb*2.0)*_EmissionPower);
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
