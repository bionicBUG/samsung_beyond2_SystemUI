.class public Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "KeyButtonDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;
    }
.end annotation


# static fields
.field public static final KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mHasDarkDrawable:Z

.field private final mIconPaint:Landroid/graphics/Paint;

.field private mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private final mShadowPaint:Landroid/graphics/Paint;

.field private final mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$1;

    const-string v1, "KeyButtonRotation"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$2;

    const-string v1, "KeyButtonTranslateY"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Color;)V
    .locals 7

    .line 97
    new-instance v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    instance-of v3, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-object v0, v6

    move v1, p2

    move v2, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;-><init>(IIZZLandroid/graphics/Color;)V

    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mHasDarkDrawable:Z

    .line 102
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    if-eqz p1, :cond_0

    .line 104
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mBaseHeight:I

    .line 105
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mBaseWidth:I

    .line 106
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iput v0, p2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChangingConfigurations:I

    .line 107
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iput-object p1, p2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 111
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;)V

    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 8

    .line 506
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mHasDarkDrawable:Z

    .line 507
    new-instance v7, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;-><init>(IIZZLandroid/graphics/Color;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    .line 508
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    move v1, v0

    .line 510
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/16 v3, 0x11

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    :cond_0
    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-nez v1, :cond_1

    .line 514
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 516
    :cond_1
    array-length p1, p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mHasDarkDrawable:Z

    const/4 p1, 0x0

    .line 517
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    return-void
.end method

.method public static create(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 3

    .line 549
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 550
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 10

    .line 490
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 492
    :goto_0
    invoke-virtual {p0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 493
    new-instance p3, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v1, :cond_1

    .line 494
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v1

    if-eqz v1, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    move-object v4, p3

    move v6, p1

    move v7, p2

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Color;)V

    if-eqz p4, :cond_2

    .line 496
    sget p1, Lcom/android/systemui/R$dimen;->nav_key_button_shadow_offset_x:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 497
    sget p2, Lcom/android/systemui/R$dimen;->nav_key_button_shadow_offset_y:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 498
    sget p4, Lcom/android/systemui/R$dimen;->nav_key_button_shadow_radius:I

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 499
    sget p5, Lcom/android/systemui/R$color;->nav_key_button_shadow_color:I

    invoke-virtual {p0, p5}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 500
    invoke-virtual {p3, p1, p2, p4, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setShadowProperties(IIII)V

    :cond_2
    return-object p3
.end method

.method public static create(Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    const/4 v0, 0x0

    .line 468
    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 3

    .line 454
    sget v0, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 455
    sget v1, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 456
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 457
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 458
    invoke-static {v2, v1, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 7

    .line 478
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$color;->navbar_icon_color_light:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    move v2, v0

    .line 479
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/R$color;->navbar_icon_color_dark:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_1

    :cond_1
    sget v0, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    :goto_1
    move v3, p1

    move-object v1, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 477
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 541
    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object p0, v3, v0

    aput-object p1, v3, v1

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v2

    .line 543
    :cond_0
    new-instance p1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object p0, v1, v0

    invoke-direct {p1, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public static createRTL(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 4
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 555
    invoke-static {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/util/IconDrawableUtil;->flipIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    .line 557
    invoke-static {p0, p2, v1, v0}, Lcom/android/systemui/statusbar/phone/util/IconDrawableUtil;->flipIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 558
    new-instance p2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    aput-object p1, v0, v2

    aput-object p0, v0, v3

    invoke-direct {p2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p2

    .line 560
    :cond_0
    new-instance p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    new-array p2, v3, [Landroid/graphics/drawable/Drawable;

    aput-object p1, p2, v2

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method private regenerateBitmapIconCache()V
    .locals 8

    .line 312
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 313
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v1

    .line 314
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 315
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 318
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 319
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 320
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 321
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mHorizontalFlip:Z

    if-eqz v5, :cond_0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v0, v0

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v0, v7

    int-to-float v1, v1

    mul-float/2addr v1, v7

    .line 322
    invoke-virtual {v3, v5, v6, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 324
    :cond_0
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 325
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    if-eqz v0, :cond_1

    .line 328
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 330
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method private regenerateBitmapShadowCache()V
    .locals 9

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 336
    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    return-void

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 341
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v1

    .line 342
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 343
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 346
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 347
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 348
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 349
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mHorizontalFlip:Z

    if-eqz v6, :cond_1

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v0, v0

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v0, v8

    int-to-float v1, v1

    mul-float/2addr v1, v8

    .line 350
    invoke-virtual {v4, v6, v7, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 352
    :cond_1
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 353
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 356
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 357
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v5, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 359
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 360
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v2, 0x0

    .line 361
    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 362
    aget v6, v1, v2

    int-to-float v6, v6

    const/4 v7, 0x1

    aget v1, v1, v7

    int-to-float v1, v1

    invoke-virtual {v4, v5, v6, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    if-eqz v0, :cond_2

    .line 365
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 367
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    return-void
.end method

.method private setDrawableBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr v0, v1

    .line 389
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result p0

    sub-int/2addr p0, v2

    .line 388
    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateShadowAlpha()V
    .locals 4

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 377
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mAlpha:I

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p0

    mul-float/2addr v0, v2

    .line 378
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 377
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public canAnimate()Z
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mSupportsAnimation:Z

    return p0
.end method

.method public canApplyTheme()Z
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->canApplyTheme()Z

    move-result p0

    return p0
.end method

.method public clearAnimationCallbacks()V
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    .line 252
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 258
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 270
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    .line 272
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_5

    .line 273
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->regenerateBitmapIconCache()V

    .line 275
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 276
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v3, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    iget v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 277
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 279
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v3, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    if-lez v3, :cond_8

    .line 280
    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    if-eqz v1, :cond_7

    .line 281
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->regenerateBitmapShadowCache()V

    .line 285
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v3

    const-wide v3, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    float-to-double v1, v1

    .line 286
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    .line 287
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v8, v7, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    int-to-double v8, v8

    mul-double/2addr v5, v8

    add-double/2addr v3, v5

    double-to-float v3, v3

    iget v4, v7, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    sub-float/2addr v3, v4

    .line 288
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v6, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    .line 289
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v7, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    int-to-double v7, v7

    mul-double/2addr v1, v7

    sub-double/2addr v4, v1

    double-to-float v1, v4

    iget v2, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    sub-float/2addr v1, v2

    .line 290
    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 293
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 294
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    return-object p0
.end method

.method public getDarkIntensity()F
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    return p0
.end method

.method getDrawableBackgroundColor()I
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    invoke-virtual {p0}, Landroid/graphics/Color;->toArgb()I

    move-result p0

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 226
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mBaseHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 231
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mBaseWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getLayerDrawable()Landroid/graphics/drawable/LayerDrawable;
    .locals 0

    .line 535
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getRotation()F
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    return p0
.end method

.method public getTranslationY()F
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    return p0
.end method

.method hasOvalBg()Z
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetAnimation()V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    .line 246
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mAlpha:I

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->updateShadowAlpha()V

    .line 181
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->hasOvalBg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLightColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 195
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 119
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 121
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLightColor:I

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 124
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->updateShadowAlpha()V

    .line 127
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void
.end method

.method public setRotation(F)V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 137
    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    .line 138
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setShadowProperties(IIII)V
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    if-ne v1, p1, :cond_1

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    if-ne v1, p2, :cond_1

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    if-ne v1, p3, :cond_1

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    if-eq v0, p4, :cond_2

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    .line 166
    iput p2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    .line 167
    iput p3, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    .line 168
    iput p4, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    .line 169
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget p3, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, p4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->updateShadowAlpha()V

    .line 172
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public setTranslation(FF)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    .line 153
    iput p2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    .line 154
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setTranslation(FF)V

    return-void
.end method

.method public startAnimation()V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method
