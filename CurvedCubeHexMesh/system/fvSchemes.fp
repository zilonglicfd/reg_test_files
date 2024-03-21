/*--------------------------------*- C++ -*---------------------------------*\ 
| ========                 |                                                 | 
| \      /  F ield         | OpenFOAM: The Open Source CFD Toolbox           | 
|  \    /   O peration     | Version:  v1812                                 | 
|   \  /    A nd           | Web:      www.OpenFOAM.com                      | 
|    \/     M anipulation  |                                                 | 
\*--------------------------------------------------------------------------*/ 
FoamFile
{
    version     2.0;
    format      ascii;
    class       dictionary;
    object      fvSchemes;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

ddtSchemes 
{
    default                                             steadyState;
}

gradSchemes
{
    default                                             Gauss linear;
}

divSchemes
{
    default                                             none;
    div(phi,U)                                          bounded Gauss linearUpwindV grad(U);
    div(phi,pseudoU)                                   bounded Gauss linearUpwindV grad(pseudoU);
        div(phi,pseudo_U)                                   bounded Gauss linearUpwindV grad(pseudo_U);
    div(phi,T)                                          bounded Gauss upwind;
    div(phi,nuTilda)                                    bounded Gauss upwind;
    div(phi,pseudoNuTilda)                             bounded Gauss upwind;
    div(phi,pseudo_nuTilda)                             bounded Gauss upwind;
    div(phi,k)                                          bounded Gauss upwind;
    div(phi,omega)                                      bounded Gauss upwind;
    div(phi,epsilon)                                    bounded Gauss upwind;
    div((nuEff*dev2(T(grad(U)))))                       Gauss linear;
    div((nuEff*dev2(T(grad(pseudoU)))))                Gauss linear;
    div((nuEff*dev2(T(grad(pseudo_U)))))                Gauss linear;
    div(pc)                                             bounded Gauss upwind;
}

interpolationSchemes
{
    default                                             linear;
}

laplacianSchemes
{
    default                                             Gauss linear corrected;
}

snGradSchemes
{
    default                                             corrected;
}

wallDist
{
    method                                              meshWave;
}

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
