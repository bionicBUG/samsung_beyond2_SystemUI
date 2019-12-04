.class public Lcom/android/keyguard/SecNumPadKey;
.super Lcom/android/keyguard/NumPadKey;
.source "SecNumPadKey.java"


# instance fields
.field private mDigitImage:Landroid/widget/ImageView;

.field private mDisplay:Landroid/view/Display;

.field private mIsImagePinLock:Z

.field private mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SecNumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/SecNumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 60
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_num_pad_key:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/SecNumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 66
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 67
    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    .line 68
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isEnabledRapidKeyInput()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 69
    new-instance p2, Lcom/android/keyguard/LiftToActivateListener;

    invoke-direct {p2, p1}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 72
    :cond_0
    iget p1, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-nez p1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    :cond_1
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SPR_USIM_TEXT:Z

    if-eqz p1, :cond_2

    .line 77
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/keyguard/R$string;->keyguard_accessibility_dot:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    :cond_2
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/keyguard/R$drawable;->origin_ripple_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iput-object p1, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 81
    iget-object p1, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    sget-boolean p1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz p1, :cond_3

    .line 84
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/SecNumPadKey;->mDisplay:Landroid/view/Display;

    :cond_3
    return-void
.end method

.method private updateFont(Lcom/android/systemui/widget/SystemUITextView;)V
    .locals 2

    .line 260
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getOpenThemeNumericFont()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 265
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_1

    .line 268
    :cond_1
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->pinlock_numeric_font_family:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not exist. Use default font."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NumPadKey"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    .line 275
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    return-void
.end method

.method private updateRippleSize(II)V
    .locals 4

    .line 138
    div-int/lit8 p1, p1, 0x2

    .line 139
    div-int/lit8 p2, p2, 0x2

    .line 140
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->num_pad_ripple_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 141
    iget-object p0, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p0, :cond_0

    sub-int v1, p1, v0

    sub-int v2, p2, v0

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    .line 142
    invoke-virtual {p0, v1, v2, p1, p2}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onFinishInflate$0$SecNumPadKey(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "rapid_key_input"

    .line 92
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 94
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledRapidKeyInput()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    new-instance p1, Lcom/android/keyguard/LiftToActivateListener;

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 97
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    const/4 p1, 0x1

    .line 98
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 106
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 107
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "rapid_key_input"

    .line 108
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 107
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 114
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 91
    new-instance v0, Lcom/android/keyguard/-$$Lambda$SecNumPadKey$pw_rYTxbI8yFrUBF0GF-9xY8DB8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$SecNumPadKey$pw_rYTxbI8yFrUBF0GF-9xY8DB8;-><init>(Lcom/android/keyguard/SecNumPadKey;)V

    iput-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/android/keyguard/SecNumPadKey;->mIsImagePinLock:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object p1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    .line 127
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p3, p1, 0x2

    sub-int/2addr p2, p3

    .line 128
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    .line 129
    iget-object p4, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    add-int/2addr p1, p2

    .line 131
    iget-object p0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p0, p3, p2, p4, p1}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/keyguard/NumPadKey;->onLayout(ZIIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 119
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/NumPadKey;->onMeasure(II)V

    .line 120
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/SecNumPadKey;->updateRippleSize(II)V

    return-void
.end method

.method public updateViewStyle(I)V
    .locals 4

    .line 148
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/SecNumPadKey;->mIsImagePinLock:Z

    .line 151
    iget-boolean v1, p0, Lcom/android/keyguard/SecNumPadKey;->mIsImagePinLock:Z

    if-eqz v1, :cond_1

    .line 152
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_image_pad_key:I

    goto :goto_1

    .line 153
    :cond_1
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v1, :cond_2

    .line 154
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_num_pad_key_tablet:I

    goto :goto_1

    .line 156
    :cond_2
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_num_pad_key:I

    .line 158
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 159
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 161
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 163
    iget-boolean v0, p0, Lcom/android/keyguard/SecNumPadKey;->mIsImagePinLock:Z

    const-string v1, "background"

    if-eqz v0, :cond_d

    .line 167
    sget v0, Lcom/android/keyguard/R$id;->digit_image:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    .line 168
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 169
    iget v2, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_c

    .line 211
    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 212
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_9_black:I

    goto :goto_2

    .line 213
    :cond_3
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_9:I

    .line 211
    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c

    .line 206
    :pswitch_1
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 207
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_8_black:I

    goto :goto_3

    .line 208
    :cond_4
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_8:I

    .line 206
    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c

    .line 201
    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 202
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_7_black:I

    goto :goto_4

    .line 203
    :cond_5
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_7:I

    .line 201
    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 196
    :pswitch_3
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 197
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_6_black:I

    goto :goto_5

    .line 198
    :cond_6
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_6:I

    .line 196
    :goto_5
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 191
    :pswitch_4
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 192
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_5_black:I

    goto :goto_6

    .line 193
    :cond_7
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_5:I

    .line 191
    :goto_6
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 186
    :pswitch_5
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 187
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_4_black:I

    goto :goto_7

    .line 188
    :cond_8
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_4:I

    .line 186
    :goto_7
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 181
    :pswitch_6
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 182
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_3_black:I

    goto :goto_8

    .line 183
    :cond_9
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_3:I

    .line 181
    :goto_8
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 176
    :pswitch_7
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 177
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_2_black:I

    goto :goto_9

    .line 178
    :cond_a
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_2:I

    .line 176
    :goto_9
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 171
    :pswitch_8
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 172
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_1_black:I

    goto :goto_a

    .line 173
    :cond_b
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_1:I

    .line 171
    :goto_a
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 216
    :pswitch_9
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 217
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_0_black:I

    goto :goto_b

    .line 218
    :cond_c
    sget v0, Lcom/android/keyguard/R$drawable;->pin_number_image_0:I

    .line 216
    :goto_b
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    :goto_c
    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 225
    :cond_d
    sget v0, Lcom/android/keyguard/R$id;->digit_text:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    sget v0, Lcom/android/keyguard/R$id;->klondike_text:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    .line 229
    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-lez v0, :cond_10

    .line 230
    sget-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-nez v0, :cond_e

    .line 231
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$array;->lockscreen_num_pad_klondike:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    .line 233
    :cond_e
    sget-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    array-length v2, v0

    iget v3, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-le v2, v3, :cond_11

    .line 234
    aget-object v0, v0, v3

    .line 235
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f

    .line 237
    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 239
    :cond_f
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d

    :cond_10
    if-nez v0, :cond_11

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    :cond_11
    :goto_d
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    instance-of v2, v0, Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_12

    .line 247
    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    invoke-direct {p0, v0}, Lcom/android/keyguard/SecNumPadKey;->updateFont(Lcom/android/systemui/widget/SystemUITextView;)V

    :cond_12
    :goto_e
    if-nez p1, :cond_14

    .line 250
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_f

    .line 253
    :cond_13
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/keyguard/R$drawable;->origin_ripple_drawable:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iput-object p1, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    goto :goto_10

    .line 251
    :cond_14
    :goto_f
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/keyguard/R$drawable;->ripple_drawable_pin_whitebg:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iput-object p1, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 255
    :goto_10
    iget-object p1, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_15

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_15
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
