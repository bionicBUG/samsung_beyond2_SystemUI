.class abstract Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;
.super Ljava/lang/Object;
.source "AbsShortcutImageCreator.java"

# interfaces
.implements Lcom/android/systemui/keyguardimage/ImageCreator;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mShortcutManager:Lcom/android/systemui/util/ShortcutManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isSecure()Z
    .locals 1

    .line 38
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method getBottomMargin(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)I
    .locals 2

    .line 54
    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    if-ge v0, v1, :cond_0

    sget v0, Lcom/android/systemui/R$dimen;->shortcut_icon_vertical_margin_port:I

    goto :goto_0

    .line 55
    :cond_0
    sget v0, Lcom/android/systemui/R$dimen;->shortcut_icon_vertical_margin_land:I

    .line 57
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    iget p1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method getColor()I
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->isSecure()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x20000000

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 34
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    return-object p0
.end method

.method getShortcutManager()Lcom/android/systemui/util/ShortcutManager;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Lcom/android/systemui/util/ShortcutManager;->getInstance()Lcom/android/systemui/util/ShortcutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    return-object p0
.end method

.method getSideMargin(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)I
    .locals 2

    .line 62
    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    if-ge v0, v1, :cond_0

    sget v0, Lcom/android/systemui/R$dimen;->shortcut_icon_horizontal_margin_port:I

    goto :goto_0

    .line 63
    :cond_0
    sget v0, Lcom/android/systemui/R$dimen;->shortcut_icon_horizontal_margin_land:I

    .line 65
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    iget p1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 44
    invoke-virtual {p1, p3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 45
    iget-object p3, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {p3, p2}, Lcom/android/systemui/util/ShortcutManager;->getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {p0, p2}, Lcom/android/systemui/util/ShortcutManager;->getShortcutContentDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 48
    invoke-virtual {p1, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
