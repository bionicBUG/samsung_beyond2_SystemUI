.class public Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;
.super Lcom/android/systemui/widget/SystemUITextView;
.source "FaceWidgetOwnerInfoView.java"

# interfaces
.implements Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;


# instance fields
.field private mFontScale:F

.field private mHandler:Landroid/os/Handler;

.field private final mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsShowCMAS:Z

.field private final mOwnerInfoMgr:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;

.field private final mServiceBoxController:Lcom/android/systemui/facewidget/FaceWidgetController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 61
    iput p2, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mFontScale:F

    .line 63
    new-instance p2, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView$1;-><init>(Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance p2, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView$2;-><init>(Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;)V

    iput-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 103
    const-class p2, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/facewidget/FaceWidgetController;

    iput-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mServiceBoxController:Lcom/android/systemui/facewidget/FaceWidgetController;

    .line 104
    iget-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mServiceBoxController:Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {p2, p1}, Lcom/android/systemui/facewidget/FaceWidgetController;->getOwnerInfoMgr(Landroid/content/Context;)Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mOwnerInfoMgr:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->sendEvent(Z)V

    return-void
.end method

.method private isAdaptiveColorModeSupported()Z
    .locals 1

    .line 280
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 282
    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getAdaptiveColorResult()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private sendEvent(Z)V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12ce

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-nez p1, :cond_1

    .line 114
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private setCMASIcon(Z)V
    .locals 0

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateCompoundVisible(Z)V

    return-void
.end method

.method private updateCMASText(I)Z
    .locals 3

    .line 211
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_CMAS:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 212
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationOnKeyguard()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mIsShowCMAS:Z

    .line 214
    iget-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mIsShowCMAS:Z

    if-eqz p1, :cond_2

    .line 215
    sget-boolean p1, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_PRESIDENTIAL_CMAS:Z

    if-eqz p1, :cond_1

    .line 216
    sget p1, Lcom/android/systemui/R$string;->keyguard_presidential_cmas_text:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/android/systemui/R$string;->keyguard_cmas_text:I

    .line 217
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {p0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 219
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mOwnerInfoMgr:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;->setEnabled()V

    .line 222
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mIsShowCMAS:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->setCMASIcon(Z)V

    .line 223
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mIsShowCMAS:Z

    return p0
.end method

.method private updateOwnerInfo(I)V
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateOwnerInfo(hasCMAS): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardOwnerInfoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mIsShowCMAS:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->updateCMASText(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 174
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Show CMAS on owner info space ! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->updateOwnerInfoStyle()V

    :cond_2
    return-void

    .line 181
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mOwnerInfoMgr:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;->getOwnerInfo()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mOwnerInfoMgr:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;->setEnabled()V

    .line 184
    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 185
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object p1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 188
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mOwnerInfoMgr:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;->setDisabled()V

    .line 189
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const/16 p1, 0x8

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 193
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->updateOwnerInfoStyle()V

    :cond_5
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 136
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onAttachedToWindow()V

    .line 137
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 138
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->registerClockChangedCallback(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;)V

    return-void
.end method

.method public onClockColorChanged()V
    .locals 2

    const-string v0, "KeyguardOwnerInfoView"

    const-string v1, "OwnerInfoView Text ColorChanged"

    .line 242
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->updateTextView()V

    return-void
.end method

.method public onClockPackageChanged()V
    .locals 0

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->updateTextView()V

    return-void
.end method

.method public onClockStyleChanged()V
    .locals 0

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->updateTextView()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 150
    invoke-super {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F

    move-result p1

    .line 152
    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mFontScale:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iput p1, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mFontScale:F

    .line 154
    iget-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mIsShowCMAS:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->setCMASIcon(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 143
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onDetachedFromWindow()V

    .line 144
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 145
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 125
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onFinishInflate()V

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->updateOwnerInfo()V

    return-void
.end method

.method public resetMarqueeEffect()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->sendEvent(Z)V

    .line 120
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public updateOwnerInfo()V
    .locals 1

    const/4 v0, -0x1

    .line 159
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->updateOwnerInfo(I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public updateOwnerInfo(Z)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->updateOwnerInfo(I)V

    return-void
.end method

.method public updateOwnerInfoStyle()V
    .locals 3

    .line 199
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 200
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_owner_info_top_padding_for_typo_clock_tablet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public updateStyle(I)V
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateStyle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardOwnerInfoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-super {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateStyle(I)V

    return-void
.end method

.method protected updateTextView()V
    .locals 6

    .line 254
    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 255
    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->isThemeClockEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->isAdaptiveColorModeSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    :cond_1
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->updateTextView()V

    return-void

    .line 261
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->semClearAllTextEffect()V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColorId:I

    .line 265
    iget v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_4

    .line 266
    iget-object v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 267
    iget v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColorId:I

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shadowColorResId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardOwnerInfoView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 270
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->reloadDateColor()V

    .line 272
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getDateColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-lez v1, :cond_5

    .line 275
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    iget-object v4, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_5
    return-void
.end method
