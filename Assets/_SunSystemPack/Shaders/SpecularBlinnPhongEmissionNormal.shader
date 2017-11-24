Shader "MyPrettyDucks/SpecularBlinnPhongEmissionNormal" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_EmissionColor("EmissionColor", Color) = (1,1,1,1)
		_EmissionPower("EmissionPower", Range(0,1)) = 0.5
		_SpecColor("SpecColor", Color) = (1,1,1,1)
		_SpecPower("SpecPower", Range(0,1)) = 0.5
		_NormalMap("NormTex", 2D) = "bump" {}
		_BumpPower("BumpPower", Range(0,4))= 1
	}

	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 100
		
		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf BlinnPhong

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;
		sampler2D _NormalMap;
		fixed4 _Color;
		//fixed4 _SpecColor;
		fixed4 _EmissionColor;
		float _EmissionPower;
		float _SpecPower;
		float _BumpPower;

		struct Input {
			float2 uv_MainTex;
			float2 uv_NormalMap;
		};


		// Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
		// See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
		// #pragma instancing_options assumeuniformscaling
		UNITY_INSTANCING_CBUFFER_START(Props)
			// put more per-instance properties here
		UNITY_INSTANCING_CBUFFER_END

		void surf (Input IN, inout SurfaceOutput o) 
		{
			fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
			float3 normal = UnpackNormal(tex2D(_NormalMap, IN.uv_NormalMap));
			o.Normal = float3(normal.x * _BumpPower, normal.y * _BumpPower, normal.z);
			o.Albedo = c.rgb;
			o.Alpha = c.a;
			o.Gloss = 1.0;
			o.Specular = _SpecPower;
			o.Emission = _EmissionPower * _EmissionColor;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
