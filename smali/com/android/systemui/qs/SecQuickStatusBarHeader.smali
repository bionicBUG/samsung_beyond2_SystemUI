.class public Lcom/android/systemui/qs/SecQuickStatusBarHeader;
.super Landroid/widget/RelativeLayout;
.source "SecQuickStatusBarHeader.java"

# interfaces
.implements Lcom/android/systemui/qs/panelcolor/PanelColorAssistant;


# instance fields
.field private mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

.field private mClockView:Lcom/android/systemui/statusbar/policy/QSClock;

.field private mCutOutHeight:I

.field private mDateView:Landroid/widget/TextView;

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private mExpanded:Z

.field private mHaderClockDateMisc:Landroid/widget/RelativeLayout;

.field private final mHandler:Landroid/os/Handler;

.field protected mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field private mListening:Z

.field private mNetworkSpeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

.field private mQSMiscContainer:Lqs/src/com/android/systemui/qs/QSMiscContainer;

.field private mQsDisabled:Z

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQuickQsStatusIcons:Landroid/view/View;

.field private final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "view_context"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object p3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 116
    new-instance p2, Lcom/android/systemui/DualToneHandler;

    new-instance p3, Landroid/view/ContextThemeWrapper;

    sget v0, Lcom/android/systemui/R$style;->QSHeaderTheme:I

    invoke-direct {p3, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p2, p3}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    return-void
.end method

.method public static getColorIntensity(I)F
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method private isQsPanelBgColorDark(I)Z
    .locals 7

    shr-int/lit8 p0, p1, 0x10

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p1, p1, 0xff

    mul-int/2addr p0, p0

    int-to-double v1, p0

    const-wide v3, 0x3fced916872b020cL    # 0.241

    mul-double/2addr v1, v3

    mul-int/2addr v0, v0

    int-to-double v3, v0

    const-wide v5, 0x3fe61cac083126e9L    # 0.691

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    mul-int/2addr p1, p1

    int-to-double p0, p1

    const-wide v3, 0x3fb16872b020c49cL    # 0.068

    mul-double/2addr p0, v3

    add-double/2addr v1, p0

    .line 457
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    const/16 p1, 0x82

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateMinimumHeight()V
    .locals 3

    .line 194
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050403

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 196
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_quick_header_panel_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    return-void
.end method

.method private updateResources()V
    .locals 4

    .line 203
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateMinimumHeight()V

    .line 211
    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 212
    iget v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 213
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHaderClockDateMisc:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 217
    iget v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    sget v3, Lcom/android/systemui/R$dimen;->qs_header_date_status_icon_layout_height:I

    .line 218
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 219
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 220
    sget v2, Lcom/android/systemui/R$dimen;->qs_footer_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 221
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHaderClockDateMisc:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQSMiscContainer:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 226
    sget v2, Lcom/android/systemui/R$dimen;->qs_footer_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 227
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQSMiscContainer:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 232
    sget v2, Lcom/android/systemui/R$dimen;->qs_quick_tile_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 233
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 237
    iget-boolean v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    if-eqz v2, :cond_3

    .line 239
    iget v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 245
    :cond_3
    iget v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    sget v3, Lcom/android/systemui/R$dimen;->qs_header_date_status_icon_layout_height:I

    .line 246
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/systemui/R$dimen;->qs_footer_height:I

    .line 247
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/systemui/R$dimen;->sec_quick_qs_top_margin:I

    .line 248
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/systemui/R$dimen;->qs_quick_tile_size:I

    .line 249
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/systemui/R$dimen;->sec_quick_qs_bottom_margin:I

    .line 250
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 257
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 4

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 311
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    if-ne v0, v2, :cond_1

    return-void

    .line 312
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    .line 313
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setDisabledByPolicy(Z)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    if-eqz v2, :cond_3

    move v1, v3

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQSMiscContainer:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    if-eqz v0, :cond_4

    .line 317
    invoke-virtual {v0, p1, p2, p3}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->disable(IIZ)V

    .line 319
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public synthetic lambda$updateEverything$0$SecQuickStatusBarHeader()V
    .locals 1

    const/4 v0, 0x0

    .line 384
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 331
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 332
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    sub-int/2addr v1, v0

    if-gez v1, :cond_0

    .line 348
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x105027d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    .line 351
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    if-eq v0, v1, :cond_2

    .line 352
    iput v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 356
    iput v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    .line 360
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 324
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 326
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestApplyInsets()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 172
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->setListening(Z)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 368
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 122
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 124
    sget v0, Lcom/android/systemui/R$id;->quick_qs_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 127
    sget v0, Lcom/android/systemui/R$id;->quick_qs_status_icons:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    .line 128
    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setShouldRestrictIcons(Z)V

    .line 130
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 135
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x1010030

    invoke-static {v0, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 137
    invoke-static {v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getColorIntensity(I)F

    move-result v0

    .line 138
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {v2, v0}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result v0

    .line 145
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 147
    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClock;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/QSClock;

    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/QSClock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClock;->useWallpaperTextColor(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/QSClock;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->qs_status_bar_clock_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextColor(I)V

    .line 152
    sget v0, Lcom/android/systemui/R$id;->qs_header_date_clock_misc:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHaderClockDateMisc:Landroid/widget/RelativeLayout;

    .line 153
    sget v0, Lcom/android/systemui/R$id;->qs_misc_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lqs/src/com/android/systemui/qs/QSMiscContainer;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQSMiscContainer:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    .line 156
    sget v0, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateView:Landroid/widget/TextView;

    .line 158
    sget v0, Lcom/android/systemui/R$id;->batteryRemainingIcon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    .line 160
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setIgnoreTunerUpdates(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setPercentShowMode(I)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const-string v1, "SecQuickStatusBarHeader"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 167
    sget v0, Lcom/android/systemui/R$id;->networkSpeed:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetspeedView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mNetworkSpeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    return-void
.end method

.method public onPanelColorChanged(Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V
    .locals 5

    .line 439
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/QSClock;

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->ClockText:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextColor(I)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v1, p1, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->HeaderSettingsTint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    if-eqz v0, :cond_2

    iget v1, p1, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->PanelIndicatorIconTint:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 443
    :cond_2
    iget p1, p1, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->BasicBackground:I

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->isQsPanelBgColorDark(I)Z

    move-result p1

    .line 444
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 445
    invoke-virtual {v0, v3}, Lcom/android/systemui/BatteryMeterView;->setForceShowPercent(Z)V

    .line 446
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    if-eqz p1, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/BatteryMeterView;->setForceQsTintColor(ZF)V

    .line 449
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mNetworkSpeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setForceQsTintColor(ZF)V

    :cond_6
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 185
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRtlPropertiesChanged(I)V

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 280
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mExpanded:Z

    .line 281
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQSMiscContainer:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0, p1}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->setExpanded(Z)V

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateEverything()V

    return-void
.end method

.method public setExpansion(ZFF)V
    .locals 0

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 376
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mListening:Z

    .line 378
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQSMiscContainer:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    if-eqz p0, :cond_1

    .line 379
    invoke-virtual {p0, p1}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->setListening(Z)V

    :cond_1
    return-void
.end method

.method public setMargins(I)V
    .locals 3

    const/4 v0, 0x0

    .line 423
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 424
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 427
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 430
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 431
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 432
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 389
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->setupHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 391
    iget-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQSMiscContainer:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    if-eqz p1, :cond_0

    .line 392
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1, p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    :cond_0
    return-void
.end method

.method public setupHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 3

    .line 397
    iput-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 399
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setQSPanelAndHeader(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    .line 400
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    .line 403
    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 404
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010030

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 406
    invoke-static {v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getColorIntensity(I)F

    move-result v0

    .line 407
    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result v1

    .line 408
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 410
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mNetworkSpeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    :cond_0
    return-void
.end method

.method public updateEverything()V
    .locals 1

    .line 384
    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$SecQuickStatusBarHeader$fA_X1nYD_EfuprGqmNi04LzODr4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$$Lambda$SecQuickStatusBarHeader$fA_X1nYD_EfuprGqmNi04LzODr4;-><init>(Lcom/android/systemui/qs/SecQuickStatusBarHeader;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
