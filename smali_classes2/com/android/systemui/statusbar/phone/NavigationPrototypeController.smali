.class public Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;
.super Landroid/database/ContentObserver;
.source "NavigationPrototypeController.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;,
        Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$GestureAction;
    }
.end annotation


# instance fields
.field private mActionMap:[I

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;


# direct methods
.method private getGlobalBool(Ljava/lang/String;Z)Z
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateSwipeLTRBackSetting()V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickstepcontroller_gesture_match_map"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 187
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mActionMap:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getEdgeSensitivityHeight()I
    .locals 1

    .line 145
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 147
    iget p0, v0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public getEdgeSensitivityWidth()I
    .locals 1

    .line 137
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10500a7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method hideHomeButton()Z
    .locals 2

    const-string v0, "quickstepcontroller_hidehome"

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->getGlobalBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method isAssistantGestureEnabled()Z
    .locals 2

    const-string v0, "ENABLE_ASSISTANT_GESTURE"

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->getGlobalBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 109
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-nez p1, :cond_5

    .line 110
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;

    if-eqz p1, :cond_5

    .line 111
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "quickstepcontroller_gesture_match_map"

    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->updateSwipeLTRBackSetting()V

    .line 116
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mActionMap:[I

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;->onGestureRemap([I)V

    goto :goto_0

    :cond_0
    const-string p2, "quickstepcontroller_hideback"

    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->getGlobalBool(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 118
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;->onBackButtonVisibilityChanged(Z)V

    goto :goto_0

    :cond_1
    const-string p2, "quickstepcontroller_hidehome"

    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 121
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->hideHomeButton()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;->onHomeButtonVisibilityChanged(Z)V

    goto :goto_0

    :cond_2
    const-string p2, "navbar_color_adapt_enable"

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 123
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mContext:Landroid/content/Context;

    const/4 p2, 0x2

    .line 124
    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->isEnabled(Landroid/content/Context;I)Z

    move-result p0

    .line 123
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;->onColorAdaptChanged(Z)V

    goto :goto_0

    :cond_3
    const-string p2, "quickstepcontroller_showhandle"

    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 126
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->showHomeHandle()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;->onHomeHandleVisiblilityChanged(Z)V

    goto :goto_0

    :cond_4
    const-string p2, "ENABLE_ASSISTANT_GESTURE"

    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 128
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->isAssistantGestureEnabled()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;->onAssistantGestureEnabled(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 212
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->getEdgeSensitivityWidth()I

    move-result v0

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->getEdgeSensitivityHeight()I

    move-result p0

    .line 213
    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;->onEdgeSensitivityChanged(II)V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method showHomeHandle()Z
    .locals 2

    const-string v0, "quickstepcontroller_showhandle"

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->getGlobalBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
