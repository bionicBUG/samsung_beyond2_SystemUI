.class public Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_OES;
.super Ljava/lang/Object;
.source "RenderTexture_GL_OES.java"


# instance fields
.field private mMMSMode:Z

.field private final mMVPMatrix:[F

.field private final mSTMatrix:[F

.field private final mVerticesData:[F

.field private mVerticesFloatBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 91
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_OES;->mVerticesData:[F

    new-array v1, v0, [F

    .line 106
    iput-object v1, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_OES;->mMVPMatrix:[F

    new-array v0, v0, [F

    .line 107
    iput-object v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_OES;->mSTMatrix:[F

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    .line 126
    iget-object v1, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_OES;->mVerticesData:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 127
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 128
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_OES;->mVerticesData:[F

    .line 130
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    .line 132
    iget-object p0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
