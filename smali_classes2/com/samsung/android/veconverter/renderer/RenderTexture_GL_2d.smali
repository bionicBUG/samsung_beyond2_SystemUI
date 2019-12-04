.class public Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;
.super Ljava/lang/Object;
.source "RenderTexture_GL_2d.java"


# instance fields
.field private mProgram:I

.field private mTextureId:I

.field private final mVerticesData:[F

.field private mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

.field private ma_PositionHandle:I

.field private ma_TextureCoordinatesHandle:I

.field private mu_MatrixHandle:I

.field private mu_TextureUnitHandle:I

.field private final projectionMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 61
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesData:[F

    new-array v0, v0, [F

    .line 76
    iput-object v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    .line 90
    iget-object v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    .line 91
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesData:[F

    .line 94
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    .line 96
    iget-object p0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private deleteTexture()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xde1

    .line 275
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 276
    iget v1, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mTextureId:I

    invoke-static {v1}, Lcom/samsung/android/veconverter/util/OpenGlHelper;->deleteTexture(I)V

    .line 277
    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mTextureId:I

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 9

    .line 127
    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 129
    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mu_MatrixHandle:I

    iget-object v1, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x84c0

    .line 131
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 132
    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mTextureId:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 133
    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mu_TextureUnitHandle:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    iget v3, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    iget-object v8, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 137
    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "glEnableVertexAttribArray ma_PositionHandle"

    .line 138
    invoke-static {v0}, Lcom/samsung/android/veconverter/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    iget v3, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    iget-object v8, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 142
    iget p0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p0, "glEnableVertexAttribArray ma_TextureCoordinatesHandle"

    .line 143
    invoke-static {p0}, Lcom/samsung/android/veconverter/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    const/16 p0, 0xbe2

    .line 145
    invoke-static {p0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p0, 0x302

    const/16 v0, 0x303

    .line 146
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 p0, 0x5

    const/4 v0, 0x4

    .line 148
    invoke-static {p0, v2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p0, "VEConverter"

    const-string v0, "Calling glFinish blocking call"

    .line 151
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    const-string v0, "Finished glFinish"

    .line 155
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loadTexture(Landroid/graphics/Bitmap;II)I
    .locals 3

    .line 168
    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mTextureId:I

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->deleteTexture()V

    .line 171
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    .line 172
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 173
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 176
    invoke-static {p1}, Lcom/samsung/android/veconverter/util/OpenGlHelper;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mTextureId:I

    .line 177
    iget p1, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mTextureId:I

    if-nez p1, :cond_1

    const-string p1, "VEConverter"

    const-string v2, "not able to load new texture"

    .line 179
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 183
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    cmpl-float p3, p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    if-ltz p3, :cond_2

    div-float p1, p2, p1

    move p2, p1

    move p1, v0

    goto :goto_0

    :cond_2
    div-float/2addr p1, p2

    move p2, v0

    .line 193
    :goto_0
    iget-object p3, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    invoke-static {p3, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 194
    iget-object p3, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    invoke-static {p3, v1, p1, p2, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 196
    iget p0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mTextureId:I

    return p0
.end method

.method public prepare()I
    .locals 2

    const-string v0, "uniform mat4 u_Matrix;\nattribute vec4 a_Position;\nattribute vec2 a_TextureCoordinates;\nvarying vec2 v_TextureCoordinates;\nvoid main(){\nv_TextureCoordinates = a_TextureCoordinates;\ngl_Position =u_Matrix*a_Position;\n}\n"

    const-string v1, "precision mediump float;\nuniform sampler2D u_TextureUnit;\nvarying vec2 v_TextureCoordinates;\nvoid main(){ \ngl_FragColor = texture2D(u_TextureUnit, v_TextureCoordinates);\n}\n"

    .line 106
    invoke-static {v0, v1}, Lcom/samsung/android/veconverter/util/OpenGlHelper;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mProgram:I

    .line 108
    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mProgram:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v1, "u_Matrix"

    .line 111
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mu_MatrixHandle:I

    .line 112
    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mProgram:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    .line 113
    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mProgram:I

    const-string v1, "a_TextureCoordinates"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    .line 114
    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mProgram:I

    const-string v1, "u_TextureUnit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mu_TextureUnitHandle:I

    const/4 p0, 0x0

    .line 116
    invoke-static {p0, p0, p0, p0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/4 p0, 0x1

    return p0
.end method

.method public release()V
    .locals 1

    .line 284
    invoke-direct {p0}, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->deleteTexture()V

    .line 285
    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    .line 286
    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mProgram:I

    .line 287
    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mu_MatrixHandle:I

    .line 288
    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    .line 289
    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    .line 290
    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mu_TextureUnitHandle:I

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method
