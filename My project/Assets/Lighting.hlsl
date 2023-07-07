void MainLight_float(float3 WorldPos, out float3 Direction, out float3 Color, out float DistanceAttenuation, out float ShadowAttenuation)
{
#ifdef SHADERGRAPH_PREVIEW
	Direction = normalize(float3(0.5f, 0.5f, 0.25f));
	Color = float3(1.0f, 1.0f, 1.0f);
	DistanceAttenuation = 1.0f;
	ShadowAttenuation = 1.0f;
#else
	float4 shadowCoord = TransformWorldToShadowCoord(WorldPos);
	Light light = GetMainLight(shadowCoord);
	Direction = light.direction;
	Color = light.color;
	DistanceAttenuation = light.distanceAttenuation;
	ShadowAttenuation = light.shadowAttenuation;

#endif

}

//void AdditionalLight_float(float3 WorldPos, int Index, out float3 Direction, out float3 Color, out float DistanceAttenuation, out float ShadowAttenuation)
//{
//	Direction = normalize(float3(0.5f, 0.5f, 0.25f));
//	Color = float3(1.0f, 1.0f, 1.0f);
//	DistanceAttenuation = 1.0f;
//	ShadowAttenuation = 1.0f;
//
//#ifndef SHADERGRAPH_PREVIEW
//	int pixelLightCount = GetAdditionalLightsCount();
//	if (Index < pixelLightCount) {
//		Light light = GetAdditionalLight(Index, WorldPos);
//
//		Direction = light.direction;
//		Color = light.color;
//		DistanceAttenuation = light.distanceAttenuation;
//		ShadowAttenuation = light.shadowAttenuation;
//	}
//
//#endif
//
//}