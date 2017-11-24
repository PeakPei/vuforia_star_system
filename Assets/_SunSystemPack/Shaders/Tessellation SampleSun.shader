Shader "MyMednessDucks/TessellationSampleSun" {
	Properties {
		_EdgeLength("Edge length", Range(2,50)) = 15
		_Phong("Phong Strengh", Range(0,1)) = 0.5
		_MainTex("MaintTex", 2D) = "white"{}
		_DispTex("DisplacementTex", 2D) = "white"{}
		_NormalMap("NormalMap", 2D) = "bump"{}
		_Displacement("Displacement", Range(0,1)) = 0.5
		_DispOffset("Disp Offset", Range(0, 1)) = 0.5
		_Color("MainColor", Color) = (1,1,1,1)
		_SpecColor("SpecularColor", COlor) = (1,1,1,1)
		_RimColor("Rim Color", Color) = (0.26,0.19,0.16,0.0)
		_RimPower("Rim Power", Range(0.5,8.0)) = 3.0
		_Factor("Fresnel Factor", float) = 0.5
		_EmissionPower("EmissionPower", Range(0,10)) = 1 
		_SpecularPower("SpecularPower", Range(0,50)) = 5
		_MeshPower("_MeshPower", Range(0,50)) = 1
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Lambert addshadow fullforwardshadows vertex:disp tessellate:tessEdge tessphong:_Phong nolightmap

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0
		#include "Tessellation.cginc"
		//#include "FreeTess_Tessellator.cginc"
		sampler2D _MainTex;
		sampler2D _DispTex;
		sampler2D _NormalMap;

		float4 _RimColor;
		float _RimPower;
		half _Factor;
		float _EmissionPower;
		float _SpecularPower;
		float _MeshPower;
		
		fixed4 _Color;

		float _Displacement;
		float _Phong;
		float _DispOffset;

		struct appdata {
			float4 vertex : POSITION;
			float4 tangent : TANGENT;
			float3 normal : NORMAL;
			float2 texcoord : TEXCOORD0;
		};

		struct Input 
		{
			float2 uv_MainTex;
			float2 uv_DispTex;
			float2 uv_NormalMap;
			float3 viewDir;
			float3 lightwDir;
		};

		
		float _EdgeLength;
		float4 _DispTex_ST;

		float4 tessEdge(appdata v0, appdata v1, appdata v2)
		{
			return UnityEdgeLengthBasedTess(v0.vertex, v1.vertex, v2.vertex, _EdgeLength);
		}


		void disp(inout appdata v)
		{
			//float d = tex2Dlod(_DispTex, float4(v.texcoord.xy, 0, 0)).r * _Displacement;
			float d = tex2Dlod(_DispTex, float4(v.texcoord.xy * _DispTex_ST.xy + _DispTex_ST.zw, 0, 0)).r * _Displacement;
			//d = d * 0.5 - 0.5;
			float waveValueA = saturate(1 - pow(sin(_Time.x * 20 + v.vertex.x ) * 10, 1));
			d = d * 0.5 - 0.5 + _DispOffset;
			v.vertex.xyz += v.normal * d;// *(cos(_Time.x));
		}

		
		void surf (Input IN, inout SurfaceOutput o) 
		{
			float2 offset = IN.uv_MainTex;
			offset += float2(0.5  * _Time.x,  _Time.x  * 0.5);
			
			half4 c = tex2D(_MainTex, offset) * _Color;

			float2 offsetNorm = IN.uv_NormalMap;
			//offsetNorm += float2( _Time.x, 3  *_Time.x);

			o.Normal = UnpackNormal(tex2D(_NormalMap, offsetNorm));
			//o.Specular = _SpecularPower;
			//o.Gloss = 1.0;

			half rim = _Factor * pow(1.0 - dot(normalize(IN.viewDir), o.Normal), _RimPower);
			//o.Emission = rim * lerp(o.Albedo, _RimColor.rgb, _RimColor.a);
			o.Emission = c.rgb * _EmissionPower + 1.5 * sin(_Time.x * 10) / 10;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
