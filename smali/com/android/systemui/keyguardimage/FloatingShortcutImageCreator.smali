.class Lcom/android/systemui/keyguardimage/FloatingShortcutImageCreator;
.super Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;
.source "FloatingShortcutImageCreator.java"


# instance fields
.field private mBottomMargin:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->floating_shortcut_icon_margin_when_indisplay_not_supported:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/keyguardimage/FloatingShortcutImageCreator;->mBottomMargin:I

    return-void
.end method


# virtual methods
.method public createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 3

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->floating_shortcut_area_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    .line 40
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->setPreviewMode()V

    .line 41
    invoke-interface {p0, v0, p1}, Lcom/android/systemui/keyguardimage/ImageCreator;->getViewImage(Landroid/view/View;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 44
    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 45
    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget p0, p0, Lcom/android/systemui/keyguardimage/FloatingShortcutImageCreator;->mBottomMargin:I

    int-to-float p0, p0

    iget p1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr p0, p1

    sub-float/2addr v1, p0

    float-to-int p0, v1

    iput p0, p2, Landroid/graphics/Point;->y:I

    :cond_0
    return-object v0
.end method
