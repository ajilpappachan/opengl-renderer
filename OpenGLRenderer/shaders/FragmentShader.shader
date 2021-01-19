#version 330 core

in vec3 FragPosition;
in vec2 TexCoord;
in vec3 Normal;

uniform sampler2D textureSampler;
uniform vec3 lightColor;
uniform vec3 lightPosition;
uniform vec3 viewPosition;

out vec4 FragColor;

void main()
{
	float ambientFactor = 0.1f;
	vec3 ambient = ambientFactor * lightColor;

	vec3 normal = normalize(Normal);
	vec3 lightDirection = normalize(lightPosition - FragPosition);
	float diffuseStrength = max(dot(normal, lightDirection), 0.0f);
	vec3 diffuse = diffuseStrength * lightColor;

	float specularFactor = 0.5f;
	vec3 viewDirection = normalize(viewPosition - FragPosition);
	vec3 reflectDirection = reflect(-lightDirection, normal);
	float specularStrength = pow(max(dot(viewDirection, reflectDirection), 0.0f), 120);
	vec3 specular = specularStrength * specularFactor * lightColor;

	vec3 objectColor = vec3(texture(textureSampler, TexCoord));

	vec3 finalColor = (ambient + diffuse + specular) * objectColor;
	FragColor = vec4(finalColor, 1.0f);
}