.class Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;
.super Ljava/lang/Object;
.source "KeyguardMotionWallpaper.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotionBitmap"
.end annotation


# instance fields
.field private alpha:I

.field private bitmapLoaded:Z

.field private calculatedSum:F

.field private image:Landroid/graphics/Bitmap;

.field private isBackground:Z

.field private matrix:Landroid/graphics/Matrix;

.field private path:Ljava/lang/String;

.field private prevAlpha:I

.field private stayPoint1:I

.field private stayPoint2:I

.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 945
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 946
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)I
    .locals 0

    .line 926
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->type:I

    return p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1104
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    return-object p0
.end method

.method public getAlpha()I
    .locals 0

    .line 1084
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    return p0
.end method

.method public getBitmapLoaded()Z
    .locals 0

    .line 987
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    return p0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 0

    .line 1100
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 0

    .line 995
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 979
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getPrevAlpha()I
    .locals 0

    .line 1092
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->prevAlpha:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 971
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->type:I

    return p0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 950
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    const/4 v0, 0x0

    .line 951
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setAlpha(FF)V

    return-void
.end method

.method public isBackground()Z
    .locals 0

    .line 991
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    return p0
.end method

.method public recycle()V
    .locals 1

    .line 955
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 957
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setAlpha(FF)V
    .locals 7

    cmpg-float p1, p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1004
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result v2

    int-to-float v2, v2

    rem-float/2addr p2, v2

    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    .line 1005
    iget p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    int-to-float v2, v2

    cmpl-float p2, p2, v2

    if-lez p2, :cond_1

    .line 1006
    iget p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    goto :goto_1

    .line 1007
    :cond_1
    iget p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    const/high16 v2, -0x3fc00000    # -3.0f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_2

    .line 1008
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    .line 1015
    :cond_2
    :goto_1
    iget p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    const/4 v3, -0x3

    const/high16 v4, 0x41c00000    # 24.0f

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    int-to-float v2, v2

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_3

    .line 1016
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    goto :goto_2

    .line 1019
    :cond_3
    iget-boolean p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    if-eqz p2, :cond_4

    .line 1020
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 1022
    :cond_4
    iget p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    int-to-float v2, p2

    if-ne p2, v3, :cond_5

    .line 1025
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v2, p2

    .line 1028
    :cond_5
    iget p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    int-to-float v6, v5

    cmpl-float v6, p2, v6

    if-lez v6, :cond_6

    add-int/lit8 v5, v5, 0x18

    int-to-float v5, v5

    cmpg-float p2, p2, v5

    if-gez p2, :cond_6

    .line 1029
    iget-boolean p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    if-nez p2, :cond_7

    if-eqz p1, :cond_7

    .line 1031
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    goto :goto_2

    .line 1034
    :cond_6
    iget p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    cmpg-float v5, p2, v2

    if-gez v5, :cond_7

    sub-float/2addr v2, v4

    cmpl-float p2, p2, v2

    if-lez p2, :cond_7

    .line 1035
    iget-boolean p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    if-nez p2, :cond_7

    if-nez p1, :cond_7

    .line 1037
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 1046
    :cond_7
    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    const/16 p2, 0xff

    if-eqz p1, :cond_8

    .line 1047
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    goto :goto_3

    .line 1050
    :cond_8
    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    int-to-float v0, p1

    if-ne p1, v3, :cond_9

    .line 1053
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    .line 1056
    :cond_9
    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    int-to-float v2, v1

    cmpl-float v2, p1, v2

    const/high16 v3, 0x437f0000    # 255.0f

    if-lez v2, :cond_a

    add-int/lit8 v2, v1, 0x18

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_a

    int-to-float v0, v1

    sub-float/2addr p1, v0

    .line 1058
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v4

    mul-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    goto :goto_3

    .line 1062
    :cond_a
    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_b

    sub-float v1, v0, v4

    cmpl-float v1, p1, v1

    if-lez v1, :cond_b

    sub-float/2addr p1, v0

    .line 1064
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v4

    mul-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    goto :goto_3

    .line 1069
    :cond_b
    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 1075
    :goto_3
    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    if-le p1, p2, :cond_c

    .line 1076
    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 1079
    :cond_c
    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    return-void
.end method

.method public setBitmapLoaded(Z)V
    .locals 0

    .line 983
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1096
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 975
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->path:Ljava/lang/String;

    return-void
.end method

.method public setPrevAlpha(I)V
    .locals 0

    .line 1088
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->prevAlpha:I

    return-void
.end method

.method public setStayPoint(I)V
    .locals 1

    add-int/lit8 v0, p1, -0x3

    .line 962
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    add-int/lit8 p1, p1, 0x3

    .line 963
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 967
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->type:I

    return-void
.end method
