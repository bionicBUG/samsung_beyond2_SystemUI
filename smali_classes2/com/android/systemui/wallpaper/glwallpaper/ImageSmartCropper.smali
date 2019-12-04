.class public Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;
.super Ljava/lang/Object;
.source "ImageSmartCropper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCropResult:Landroid/graphics/Rect;

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDisplayId:I

.field private mFaceCount:I

.field private final mTmpDisplayInfo:Landroid/view/DisplayInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    .line 62
    iput p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDisplayId:I

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFaceCount:I

    .line 65
    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDefaultDisplay:Landroid/view/Display;

    return-void
.end method

.method private getDefaultDisplayInfo()Landroid/view/DisplayInfo;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDefaultDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 216
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method private getSettingKey()Ljava/lang/String;
    .locals 1

    .line 207
    iget p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDisplayId:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "dex_system_wallpaper_transparency"

    goto :goto_0

    :cond_0
    const-string p0, "android.wallpaper.settings_systemui_transparency"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getCropRect()Landroid/graphics/Rect;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    return-object p0
.end method

.method public hasFaces()Z
    .locals 0

    .line 195
    iget p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFaceCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needToSmartCrop()Z
    .locals 3

    .line 185
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexStandAloneMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->getSettingKey()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public updateSmartCropRect(Landroid/graphics/Bitmap;I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "] ["

    const-string v3, "ImageSmartCropper"

    const-string v4, "updateSmartCropRect"

    .line 97
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    :try_start_0
    const-string v0, "mBackground == null"

    .line 101
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 105
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "mBackground is recycled"

    .line 106
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 110
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    .line 111
    iget v5, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 112
    iget v6, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 113
    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 118
    new-instance v13, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;

    invoke-direct {v13}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;-><init>()V

    .line 119
    new-instance v12, Lcom/samsung/android/media/face/SemFaceDetection;

    invoke-direct {v12}, Lcom/samsung/android/media/face/SemFaceDetection;-><init>()V

    .line 120
    invoke-virtual {v12}, Lcom/samsung/android/media/face/SemFaceDetection;->init()I

    .line 121
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    .line 122
    iput v10, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFaceCount:I

    mul-int v7, v15, v14

    .line 123
    new-array v9, v7, [I

    .line 124
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v7, v1

    move-object v8, v9

    move-object/from16 v19, v9

    move/from16 v9, v16

    move v10, v15

    move-object/from16 v20, v11

    move/from16 v11, v17

    move-object/from16 v21, v12

    move/from16 v12, v18

    move-object/from16 v22, v13

    move v13, v15

    move/from16 p1, v14

    .line 125
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bmpWidth : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", bmpHeight : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deviceWidth : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", deviceHeight : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v7, Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-direct {v7, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v10, 0x1

    if-eq v4, v10, :cond_3

    const/4 v11, 0x3

    if-ne v4, v11, :cond_2

    goto :goto_0

    :cond_2
    move v10, v9

    :cond_3
    :goto_0
    if-eqz v10, :cond_4

    int-to-float v4, v6

    int-to-float v5, v5

    :goto_1
    div-float/2addr v4, v5

    goto :goto_2

    :cond_4
    int-to-float v4, v5

    int-to-float v5, v6

    goto :goto_1

    :goto_2
    int-to-float v5, v15

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deviceRatio: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", landBitmapWidth : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", landBitmapHeight : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x1000

    move-object/from16 v10, v19

    move-object/from16 v6, v22

    .line 138
    invoke-virtual {v6, v10, v15, v8, v4}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->setImage([IIII)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v10, v20

    move-object/from16 v4, v21

    .line 139
    invoke-virtual {v4, v1, v10}, Lcom/samsung/android/media/face/SemFaceDetection;->run(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)I

    move-result v1

    .line 140
    iput v1, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFaceCount:I

    .line 141
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Number of faces = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v7

    move v7, v9

    .line 142
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_6

    .line 143
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/media/face/SemFace;

    invoke-virtual {v12}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 144
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "faceRect is : ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Landroid/graphics/Rect;->right:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-le v13, v14, :cond_5

    move-object v11, v12

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 149
    :cond_6
    invoke-virtual {v4}, Lcom/samsung/android/media/face/SemFaceDetection;->release()V

    if-nez v1, :cond_7

    .line 152
    invoke-virtual {v6}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->findObjectRect()Landroid/graphics/Rect;

    move-result-object v11

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ findObjectRect() ] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recognizedRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v9, v9, v15, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 159
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 160
    div-int/lit8 v4, v5, 0x2

    .line 161
    div-int/lit8 v14, v8, 0x2

    .line 163
    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    sub-int/2addr v14, v4

    .line 164
    invoke-virtual {v1, v9, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    :cond_8
    sub-int v14, v8, v4

    if-le v2, v14, :cond_9

    sub-int v14, v8, v5

    .line 166
    invoke-virtual {v1, v9, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    :cond_9
    if-lt v2, v4, :cond_a

    sub-int/2addr v2, v4

    .line 168
    invoke-virtual {v1, v9, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 171
    :cond_a
    :goto_4
    iput-object v1, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    .line 172
    iget-object v1, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    move/from16 v2, p2

    invoke-static {v2, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCachedSmartCroppedRect(ILandroid/graphics/Rect;)V

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ findCropRect() of Real Image] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v6}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->releaseImage()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java.lang.LinkageError occurred when smart cropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_1
    move-exception v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred when smart cropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_5
    return-void
.end method

.method public updateSmartCropRectIfNeeded(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 85
    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSmartCroppedRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->updateSmartCropRect(Landroid/graphics/Bitmap;I)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p0, "ImageSmartCropper"

    const-string p1, " do not update smart crop"

    .line 88
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
