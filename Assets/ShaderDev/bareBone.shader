// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "ShaderDev/BareBone"
{
	Properties
	{
		_Color("Main Color", Color) = (1,1,1,1)
	}
		Subshader
	{
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragme fragment frag

			uniform half4_Color;

			struct vertexInput
			{
				float4 vertex : POSITION;

			};
	
			struct vertexOutput
			{
				float4 pos : SV_POSITION;

			};
			vertexOutput vert(vertexInput v)
			{
				vertexOutput o;
				o.pos = UnityObjectToClipPos(v.vertex);
				return o;

			}

			half4 frag(vertexOutput i) : COLOR
			{
				return
			}
			ENDCG
	}
	}
}