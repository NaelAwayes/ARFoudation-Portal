/*
 *Most basic shader for only rendereing objects depending on the stencil buffer
 *And the state of the global _StencilTest property
 */


Shader "Custom/StencilFilter"
{
	Properties
	{
		_Color ("Color", Color) = (1,1,1,1)
	//Use below code for debugging and manually setting stencil test
	//	[Enum(Equal,3,NotEqual,6)] _StencilTest ("Stencil Test", int) = 6
	}
	SubShader
	{	

		Color [_Color]
		Stencil{
			Ref 1
			//Only render if pass the stencil buffer test i.e. equal or not equal to 1
			Comp [_StencilTest]
		}

		Pass
		{
		}
	}
}
