//
// ================================================
// | Grafica pe calculator                        |
// ================================================
// | Cursul VI - 06_01_Shader.vert      |
// ======================================
// 
//  Shaderul de varfuri / Vertex shader - afecteaza geometria scenei; 
//

#version 330    //  Versiunea GLSL;

//  Variabile de intrare (dinspre programul principal);
layout (location = 0) in vec4 in_Position;     //  Se preia din buffer de pe prima pozitie (0) atributul care contine coordonatele;
layout (location = 1) in vec4 in_Color;        //  Se preia din buffer de pe a doua pozitie (1) atributul care contine culoarea;

// Variabile uniforme (matrice)
uniform mat4 viewShader;
uniform mat4 projShader;


//  Variabile de iesire;
out vec4 gl_Position;   //  Transmite pozitia actualizata spre programul principal (nemodificata in acest exemplu);
out vec4 ex_Color;      //  Transmite culoarea (de modificat in Shader.frag); 

void main(void)
  {
    gl_Position = projShader * viewShader * in_Position;
    ex_Color = in_Color;
   } 
 