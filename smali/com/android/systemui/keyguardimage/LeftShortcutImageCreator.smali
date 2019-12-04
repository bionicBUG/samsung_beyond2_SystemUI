.class Lcom/android/systemui/keyguardimage/LeftShortcutImageCreator;
.super Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;
.source "LeftShortcutImageCreator.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 4

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->keyguard_bottom_shortcut_area_left:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 19
    sget v1, Lcom/android/systemui/R$id;->left_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(I)V

    .line 21
    sget v1, Lcom/android/systemui/R$id;->left_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->getShortcutManager()Lcom/android/systemui/util/ShortcutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForLeft()Z

    move-result v2

    const/4 v3, 0x0

    .line 21
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    .line 23
    invoke-interface {p0, v0, p1}, Lcom/android/systemui/keyguardimage/ImageCreator;->getViewImage(Landroid/view/View;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->getSideMargin(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)I

    move-result v1

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 27
    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->getBottomMargin(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, p2, Landroid/graphics/Point;->y:I

    :cond_0
    return-object v0
.end method
