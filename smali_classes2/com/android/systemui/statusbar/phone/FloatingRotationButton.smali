.class public Lcom/android/systemui/statusbar/phone/FloatingRotationButton;
.super Ljava/lang/Object;
.source "FloatingRotationButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/RotationButton;


# instance fields
.field private mCanShow:Z

.field private final mContext:Landroid/content/Context;

.field private final mDiameter:I

.field private mIsShowing:Z

.field private mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private final mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

.field private final mMargin:I

.field private mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

.field private mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mCanShow:Z

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mContext:Landroid/content/Context;

    .line 63
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    .line 64
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->rotate_suggestion:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 66
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    const-class p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    .line 71
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 72
    sget v0, Lcom/android/systemui/R$dimen;->floating_rotation_button_diameter:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mDiameter:I

    .line 73
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$dimen;->sec_floating_rotation_button_bottom_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    .line 74
    :cond_0
    sget v0, Lcom/android/systemui/R$dimen;->floating_rotation_button_min_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    .line 75
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 74
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mMargin:I

    return-void
.end method


# virtual methods
.method public getCurrentView()Landroid/view/View;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    return-object p0
.end method

.method public getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 9

    .line 192
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    .line 193
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->getStyleRes()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 194
    sget v1, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 195
    sget v2, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {v0, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v2

    .line 196
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 197
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 198
    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/systemui/R$color;->navbar_icon_color_dark:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 199
    :cond_0
    sget v1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {v2, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    .line 200
    :goto_0
    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/android/systemui/R$color;->navbar_icon_color_light:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 201
    :cond_1
    sget v0, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {v3, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    :goto_1
    move v4, v0

    .line 202
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    .line 203
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f6b851f    # 0.92f

    .line 202
    invoke-static {v0, v2, v5, v6}, Landroid/graphics/Color;->valueOf(FFFF)Landroid/graphics/Color;

    move-result-object v0

    .line 205
    sget v2, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button:I

    .line 206
    sget-boolean v5, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v5, :cond_2

    .line 207
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v6, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_FLOATING_ROTATE_BUTTON_DRAWABLE:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v7, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v7}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    .line 208
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v7

    .line 207
    invoke-interface {v5, p0, v6, v7}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 210
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_FLOATING_ROTATE_BUTTON_DRAWABLE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-interface {p0, v2}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->getResult(Lcom/android/systemui/statusbar/phone/store/EventType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    move v6, p0

    goto :goto_2

    :cond_2
    move v6, v2

    .line 215
    :goto_2
    sget-boolean p0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz p0, :cond_3

    move v5, v4

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    const/4 v7, 0x0

    .line 216
    sget-boolean p0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    move-object v8, p0

    goto :goto_4

    :cond_4
    move-object v8, v0

    .line 214
    :goto_4
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public hide()Z
    .locals 3

    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 153
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    const/4 p0, 0x1

    return p0
.end method

.method public isVisible()Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    return p0
.end method

.method public setCanShowRotationButton(Z)V
    .locals 0

    .line 226
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mCanShow:Z

    .line 227
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mCanShow:Z

    if-nez p1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->hide()Z

    :cond_0
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDarkIntensity(F)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public setRotationButtonController(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    return-void
.end method

.method public show()Z
    .locals 11

    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mCanShow:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    .line 95
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    const/16 v2, 0x8

    .line 97
    sget-boolean v3, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v3, :cond_1

    const/16 v2, 0x108

    :cond_1
    move v9, v2

    .line 100
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mDiameter:I

    iget v7, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mMargin:I

    const/16 v8, 0x7e8

    const/4 v10, -0x3

    move-object v3, v2

    move v4, v5

    move v6, v7

    invoke-direct/range {v3 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 103
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v3, "FloatingRotationButton"

    .line 104
    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    sget-boolean v4, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v4, :cond_2

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v4, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_FLOATING_ROTATE_BUTTON_POSITION:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v5, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    .line 107
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v5

    .line 106
    invoke-interface {v0, p0, v4, v5}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v4, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_FLOATING_ROTATE_BUTTON_POSITION:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->getResult(Lcom/android/systemui/statusbar/phone/store/EventType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x33

    .line 123
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_4
    const/16 v0, 0x35

    .line 120
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_5
    const/16 v0, 0x55

    .line 117
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_6
    const/16 v0, 0x53

    .line 114
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 129
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->updateIcon()V

    .line 130
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_8

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail add FloatingRotationButton="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->hide()Z

    goto :goto_1

    .line 138
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-interface {v0, v3, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->resetAnimation()V

    .line 142
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->startAnimation()V

    :cond_9
    return v1

    :cond_a
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public updateIcon()V
    .locals 4

    .line 164
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 168
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->hidden_visual_cue_rotate_btn:I

    const/4 v3, 0x0

    .line 170
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->resetAnimation()V

    .line 176
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->startAnimation()V

    :cond_2
    return-void
.end method
