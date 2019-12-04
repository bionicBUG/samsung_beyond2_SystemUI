.class public Landroidx/slice/SliceUtils$SerializeOptions;
.super Ljava/lang/Object;
.source "SliceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/SliceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializeOptions"
.end annotation


# instance fields
.field private mActionMode:I

.field private mFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mImageMode:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mQuality:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 363
    iput v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mActionMode:I

    .line 364
    iput v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mImageMode:I

    const/16 v0, 0x3e8

    .line 365
    iput v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mMaxWidth:I

    .line 366
    iput v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mMaxHeight:I

    .line 368
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    .line 369
    iput v0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mQuality:I

    return-void
.end method


# virtual methods
.method public getActionMode()I
    .locals 0

    .line 395
    iget p0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mActionMode:I

    return p0
.end method

.method public getFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 0

    .line 427
    iget-object p0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method public getImageMode()I
    .locals 0

    .line 403
    iget p0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mImageMode:I

    return p0
.end method

.method public getMaxHeight()I
    .locals 0

    .line 419
    iget p0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mMaxHeight:I

    return p0
.end method

.method public getMaxWidth()I
    .locals 0

    .line 411
    iget p0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mMaxWidth:I

    return p0
.end method

.method public getQuality()I
    .locals 0

    .line 435
    iget p0, p0, Landroidx/slice/SliceUtils$SerializeOptions;->mQuality:I

    return p0
.end method
