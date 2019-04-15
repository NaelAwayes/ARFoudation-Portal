/*
 * To be attached to the mesh of the Portal
 * Should set render queue to before geometry, however this will
 * Result in objects closer than the portal to still be rendererd
 */


Shader "Custom/PortalWindow"
{
	SubShader
{
	
	//render objects behind the portal
	ZWrite off
	//absolutely transparent
	ColorMask 0
	//Bidirectional behaviour
	Cull off


	Stencil{
		Ref 1
		//set all pixels in the portal to 1
		Pass replace
	}

		Pass
		{
		}
	}
}
