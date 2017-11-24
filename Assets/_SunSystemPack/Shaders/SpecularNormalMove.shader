Shader "MyPrettyDucks/SpecularNormalMove" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_SecondTex("SecondTex", 2D) = "white" {}
		_SpecPower("SpecPower",Range(0,1)) = 0.5
		_SpecColor("SpecularColor", Color) = (1,1,1,1)
		_NormalMap("NormalMap", 2D) = "bump" {}
		_BumpPower("BumpPower", Range(0,2)) = 1
		_xOffset("_xOffset", Range(0,10)) = 0
		_yOffset("_yOffset", Range(0,10)) = 0
		_xNormOffset("_xNormOffset", Range(0,10)) = 0
		_yNormOffset("_yNormOffset", Range(0,10)) = 0
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf BlinnPhong

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;
		fixed4 _Color;
		float SpecPower;
		sampler2D _NormalMap;
		sampler2D _SecondTex;
		float _BumpPower;
		float _xNormOffset;
		float _yNormOffset;
		float _xOffset;
		float _yOffset;

		struct Input {
			float2 uv_MainTex;
			float2 uv_NormalMap;
			float2 uv_SecondTex;
		};

		// Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
		// See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
		// #pragma instancing_options assumeuniformscaling
		UNITY_INSTANCING_CBUFFER_START(Props)
			// put more per-instance properties here
		UNITY_INSTANCING_CBUFFER_END

		void surf (Input IN, inout SurfaceOutput o) 
		{
			float2 mainOffset = IN.uv_MainTex;
			float xScroll = _xOffset * _Time.x;
			float yScroll = _yOffset * _Time.x;

			mainOffset+= float2(xScroll, yScroll);
			
			fixed4 c = tex2D (_MainTex, mainOffset) * _Color;
			
			float2 normOffset = IN.uv_NormalMap;
			float xNormScroll = _xNormOffset * _Time.x;
			float yNormScroll = _yNormOffset * _Time.x;

			normOffset+= float2(xNormScroll, yNormScroll);
			
			o.Normal = UnpackNormal(tex2D(_NormalMap,normOffset));
			float3 normal = o.Normal;
			normal = float3(normal.x * _BumpPower, normal.y * _BumpPower, normal.z);
			fixed4 secTex = tex2D(_SecondTex,IN.uv_SecondTex);
			fixed4 finColor = lerp(c,secTex,length(normal.xy));
			o.Albedo = finColor.rgb;
			o.Alpha = finColor.a;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
