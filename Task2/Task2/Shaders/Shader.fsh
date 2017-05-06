//
//  Shader.fsh
//  Task2
//
//  Created by fpmi on 28.04.17.
//  Copyright (c) 2017 mashko. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
