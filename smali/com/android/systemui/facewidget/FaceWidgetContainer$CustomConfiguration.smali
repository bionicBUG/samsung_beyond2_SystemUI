.class Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;
.super Ljava/lang/Object;
.source "FaceWidgetContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/FaceWidgetContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomConfiguration"
.end annotation


# instance fields
.field private densityDpi:I

.field private fontScale:F

.field private orientation:I

.field private screenHeightDp:I

.field private screenLayout:I

.field private screenWidthDp:I

.field private smallestScreenWidthDp:I

.field private uiMode:I


# direct methods
.method private constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1629
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Configuration;Lcom/android/systemui/facewidget/FaceWidgetContainer$1;)V
    .locals 0

    .line 1618
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;-><init>(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;Landroid/content/res/Configuration;)Z
    .locals 0

    .line 1618
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->compare(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;Landroid/content/res/Configuration;)Z
    .locals 0

    .line 1618
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->compareOrientation(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;Landroid/content/res/Configuration;)Z
    .locals 0

    .line 1618
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->compareScale(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1618
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private compare(Landroid/content/res/Configuration;)Z
    .locals 1

    .line 1633
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->compareOrientation(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->compareScale(Landroid/content/res/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private compareOrientation(Landroid/content/res/Configuration;)Z
    .locals 0

    .line 1645
    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->orientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private compareScale(Landroid/content/res/Configuration;)Z
    .locals 2

    .line 1637
    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->fontScale:F

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->screenLayout:I

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->screenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->screenHeightDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->smallestScreenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->densityDpi:I

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->uiMode:I

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setTo(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1649
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->fontScale:F

    .line 1650
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->screenLayout:I

    .line 1651
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->orientation:I

    .line 1652
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->screenWidthDp:I

    .line 1653
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->screenHeightDp:I

    .line 1654
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->smallestScreenWidthDp:I

    .line 1655
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->densityDpi:I

    .line 1656
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$CustomConfiguration;->uiMode:I

    return-void
.end method
