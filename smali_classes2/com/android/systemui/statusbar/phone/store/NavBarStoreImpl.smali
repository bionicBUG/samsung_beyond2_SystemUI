.class public Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;
.super Ljava/lang/Object;
.source "NavBarStoreImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/store/NavBarStore;


# instance fields
.field private DEBUG_INTERCEPT_OVERLAY:Z

.field private mBackEnabled:Z

.field private mBypassInjector:Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;

.field private mContext:Landroid/content/Context;

.field private mCoverClosed:Z

.field private mCurrentButtonType:Ljava/lang/String;

.field private mDisabledFlags1:I

.field private mDisabledFlags2:I

.field private mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

.field private mFloatingButtonPosition:I

.field private mFragmentSavedInstanceState:Landroid/os/Bundle;

.field private mFullscreenVisibility:I

.field private mGestureDistance:I

.field private mGestureDuration:J

.field private mGestureInterceptView:Landroid/view/View;

.field private mGestureTarget:I

.field private mHandleEventLoggingEnabled:Z

.field private mHintVI:Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;

.field private mHomeEnabled:Z

.field private mIconColorUpdatedTime:J

.field private mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

.field private mIsDarkIcons:Z

.field private mIsDualView:Z

.field private mIsInflateLandscape:Z

.field private mIsNavbarCanMove:Z

.field private mIsSPayHandlerShowing:Z

.field private mIsVerticalLayout:Z

.field private mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

.field private mLayoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

.field private mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLoggingDepth:I

.field mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/statusbar/phone/store/EventType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMirrorLinkEnabled:Z

.field mModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mNavBarMode:I

.field private mNavbarWindowState:I

.field private mNavigationBarIconHint:I

.field private mNavigationBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNavigationMode:I

.field private mNeedDeadZoneMax:Z

.field private mNewBarMode:I

.field private mNightModeOn:Z

.field private mOldBarMode:I

.field mPacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/bandaid/BandAidPack;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentEnabled:Z

.field private mRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

.field private mRemoteViewUtil:Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

.field private mRotation:I

.field private mShowKeyboardButton:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarState:I

.field private mStatusBarWindowFocused:Z

.field private mStoreLogUtil:Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;

.field private mWinRotation:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mPacks:Ljava/util/List;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsSPayHandlerShowing:Z

    .line 230
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    .line 232
    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    const/4 v1, 0x1

    .line 233
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mHandleEventLoggingEnabled:Z

    const-wide/16 v1, 0x0

    .line 234
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIconColorUpdatedTime:J

    .line 237
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->DEBUG_INTERCEPT_OVERLAY:Z

    .line 240
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    .line 241
    new-instance v0, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStoreLogUtil:Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;

    const-string v0, "window"

    .line 243
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    .line 245
    new-instance v0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewUtil:Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

    .line 246
    new-instance v0, Lcom/android/systemui/statusbar/phone/layout/LayoutProviderContainerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/layout/LayoutProviderContainerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLayoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    .line 247
    new-instance v0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    .line 248
    new-instance v0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/util/LogWrapper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mHintVI:Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;

    .line 249
    new-instance p1, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;-><init>()V

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;-><init>(Lcom/android/systemui/statusbar/phone/util/LogWrapper;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mBypassInjector:Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;

    return-void
.end method

.method private static containNullDependency(Ljava/util/Map;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .line 1116
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$-ybeAkyBCjwLX1HLblWN8QdXbmo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$-ybeAkyBCjwLX1HLblWN8QdXbmo;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private getSetupWizardView()Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;
    .locals 1

    .line 1112
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    sget v0, Lcom/android/systemui/R$id;->navigation_setupwizard:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;

    return-object p0
.end method

.method private isOpaqueNavigationBar()Z
    .locals 1

    .line 1124
    iget p0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavBarMode:I

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isRotateButtonDisabledByPolicy()Z
    .locals 2

    .line 1128
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarRotateSuggestionEnabled()Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    .line 1129
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez p0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isSetupWizardNavbarType()Z
    .locals 1

    .line 1120
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->KEYGUARD_SHOWING:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$containNullDependency$20(Ljava/util/Map;Ljava/lang/reflect/Type;)Z
    .locals 0

    .line 1116
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$handleEvent$15(Lcom/android/systemui/statusbar/phone/bandaid/BandAidPack;)Ljava/util/stream/Stream;
    .locals 0

    .line 547
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/bandaid/BandAidPack;->getBands()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$handleEvent$17(Lcom/android/systemui/statusbar/phone/bandaid/Band;Lcom/android/systemui/statusbar/phone/bandaid/Band;)I
    .locals 0

    .line 556
    iget p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPriority:I

    iget p1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPriority:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private setupColorSettingInteractor()V
    .locals 2

    .line 1135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v1, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    if-eqz v0, :cond_0

    .line 1137
    new-instance v1, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$18I6FHanb9BD_2vgScSmTHiYH1g;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$18I6FHanb9BD_2vgScSmTHiYH1g;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;)V

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->addColorCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z
    .locals 1

    const/4 v0, 0x0

    .line 754
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;Ljava/lang/Object;)Z
    .locals 7

    .line 759
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mHandleEventLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStoreLogUtil:Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apply("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    .line 763
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    .line 765
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/high16 v0, 0x4dff0000    # 5.3477376E8f

    const-string v2, "system_ui_fullscreen_visibility"

    const-string v3, "icon_hint_state"

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x8

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1093
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_NAVBAR_COLOR:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v2, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->getNavigationBarColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_1
    if-eqz p2, :cond_3

    .line 1086
    check-cast p2, Ljava/util/List;

    .line 1087
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MotionEvent;

    .line 1088
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mBypassInjector:Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->byPassRawEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1082
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureInterceptView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1079
    :pswitch_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureInterceptView:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1073
    :pswitch_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureInterceptView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 1074
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p2, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1075
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureInterceptView:Landroid/view/View;

    goto/16 :goto_1

    :pswitch_5
    if-eqz p2, :cond_3

    .line 1064
    check-cast p2, Landroid/view/WindowManager$LayoutParams;

    .line 1065
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->DEBUG_INTERCEPT_OVERLAY:Z

    if-eqz p1, :cond_1

    .line 1066
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureInterceptView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1067
    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1069
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureInterceptView:Landroid/view/View;

    invoke-interface {p1, v0, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :pswitch_6
    if-eqz p2, :cond_3

    .line 1053
    check-cast p2, Landroid/view/WindowManager$LayoutParams;

    .line 1054
    new-instance p1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureInterceptView:Landroid/view/View;

    .line 1055
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->DEBUG_INTERCEPT_OVERLAY:Z

    if-eqz p1, :cond_2

    .line 1056
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureInterceptView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1057
    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1059
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureInterceptView:Landroid/view/View;

    invoke-interface {p1, v0, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :pswitch_7
    if-eqz p2, :cond_3

    .line 1048
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1044
    :pswitch_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setHardKeyIntentState(Z)V

    goto/16 :goto_1

    .line 1041
    :pswitch_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setHardKeyIntentState(Z)V

    goto/16 :goto_1

    .line 1038
    :pswitch_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->hideRecentsOnboarding()V

    goto/16 :goto_1

    .line 1035
    :pswitch_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showKeyboardTipPopup()V

    goto/16 :goto_1

    .line 1032
    :pswitch_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showA11ySwipeTowFingerTipPopup()V

    goto/16 :goto_1

    .line 1029
    :pswitch_d
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showSwipeUpAndHoldTipPopup()V

    goto/16 :goto_1

    .line 1026
    :pswitch_e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->getSetupWizardView()Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->disableBack(Z)V

    goto/16 :goto_1

    .line 1023
    :pswitch_f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->getSetupWizardView()Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->disableBack(Z)V

    goto/16 :goto_1

    .line 1020
    :pswitch_10
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateEdgeBackDisablePolicy(Z)V

    goto/16 :goto_1

    .line 1017
    :pswitch_11
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateEdgeBackDisablePolicy(Z)V

    goto/16 :goto_1

    .line 1007
    :pswitch_12
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class p2, Lcom/android/systemui/statusbar/phone/interactor/PayHandlerInterator;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/PayHandlerInterator;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    check-cast p2, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/interactor/PayHandlerInterator;->setView(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    .line 1008
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class p2, Lcom/android/systemui/statusbar/phone/interactor/PayHandlerInterator;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/PayHandlerInterator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$EHOOWcMFFxjGtyZBjR8zy-OmFqA;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$EHOOWcMFFxjGtyZBjR8zy-OmFqA;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/interactor/PayHandlerInterator;->addCallback(Ljava/util/function/BiConsumer;)V

    goto/16 :goto_1

    .line 1004
    :pswitch_13
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_TINT:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1001
    :pswitch_14
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_TINT:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 994
    :pswitch_15
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 995
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p1

    invoke-virtual {p1, v6, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 996
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsDarkIcons:Z

    .line 997
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIconColorUpdatedTime:J

    goto/16 :goto_1

    .line 987
    :pswitch_16
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 988
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 989
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsDarkIcons:Z

    .line 990
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIconColorUpdatedTime:J

    goto/16 :goto_1

    .line 984
    :pswitch_17
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1, v6, v6, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateHintVisibility(ZZZ)V

    goto/16 :goto_1

    .line 981
    :pswitch_18
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    goto/16 :goto_1

    .line 978
    :pswitch_19
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    goto/16 :goto_1

    .line 975
    :pswitch_1a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRecentEnabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mHomeEnabled:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mBackEnabled:Z

    invoke-virtual {p1, p2, v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateHintVisibility(ZZZ)V

    goto/16 :goto_1

    .line 972
    :pswitch_1b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mHintVI:Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->reset()V

    goto/16 :goto_1

    .line 969
    :pswitch_1c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mHintVI:Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureDistance:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureTarget:I

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureDuration:J

    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->onActionMove(IIJ)V

    goto/16 :goto_1

    .line 966
    :pswitch_1d
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mHintVI:Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureTarget:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsNavbarCanMove:Z

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->start(IZ)V

    goto/16 :goto_1

    .line 963
    :pswitch_1e
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mHintVI:Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHintGroup()Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->setHintViewGroup(Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;)V

    goto/16 :goto_1

    .line 960
    :pswitch_1f
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_ROTATE_BUTTON_DISABLE_POLICY:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 957
    :pswitch_20
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_DEADZONE_SIZE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->sec_navigation_bar_deadzone_size_max:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 954
    :pswitch_21
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_DEADZONE_SIZE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->sec_navigation_bar_deadzone_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 948
    :pswitch_22
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavbarGametoolsStateFlags(Z)V

    .line 949
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSystemUiStateFlags()V

    .line 951
    :pswitch_23
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class p2, Lcom/android/systemui/statusbar/phone/interactor/FloatingGameToolsEnableInteractor;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/FloatingGameToolsEnableInteractor;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/interactor/FloatingGameToolsEnableInteractor;->setEnabled(Z)V

    goto/16 :goto_1

    .line 944
    :pswitch_24
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavbarGametoolsStateFlags(Z)V

    .line 945
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSystemUiStateFlags()V

    goto/16 :goto_1

    .line 940
    :pswitch_25
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewUtil:Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

    .line 941
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->isContextualButtonVisible()Z

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getRotation()I

    move-result v0

    .line 940
    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->updateRightRemoteViewVisibility(ZI)V

    goto/16 :goto_1

    .line 937
    :pswitch_26
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewUtil:Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->getDarkIntensity()Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->applyDarkIntensity(F)V

    goto/16 :goto_1

    .line 933
    :pswitch_27
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getRotation()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewUtil:Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

    .line 934
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->getLeftRemoteViewContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewUtil:Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->getRightRemoteViewContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 933
    invoke-virtual {p1, p2, v0, v2}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->update(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    goto/16 :goto_1

    .line 930
    :pswitch_28
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRemoteView()V

    goto/16 :goto_1

    .line 926
    :pswitch_29
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewUtil:Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->getRequestClass()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewUtil:Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

    .line 927
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewUtil:Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewUtil:Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->getPriority()I

    move-result v3

    .line 926
    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    goto/16 :goto_1

    .line 923
    :pswitch_2a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLayoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsNavbarCanMove:Z

    invoke-interface {p1, p2}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;->updateLayoutProvider(Z)Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    goto/16 :goto_1

    .line 919
    :pswitch_2b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_INFLATE_BUTTON_SIDE_PADDING:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    .line 920
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsInflateLandscape:Z

    invoke-interface {v0, v2, v3}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getSpaceSidePadding(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 919
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 915
    :pswitch_2c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_INFLATE_BUTTON_WIDTH:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    .line 916
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsInflateLandscape:Z

    invoke-interface {v0, v2, v3}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getButtonDistanceSize(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 915
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 911
    :pswitch_2d
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_INFLATE_BUTTON_WIDTH:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    .line 912
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsInflateLandscape:Z

    invoke-interface {v0, v2, v3}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getSpaceWidth(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 911
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 907
    :pswitch_2e
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_INFLATE_BUTTON_WIDTH:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    .line 908
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsInflateLandscape:Z

    invoke-interface {v0, v2, v3}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getGestureWidth(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 907
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 903
    :pswitch_2f
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_INFLATE_BUTTON_WIDTH:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    .line 904
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsInflateLandscape:Z

    invoke-interface {v0, v2, v3}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getButtonWidth(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 903
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 900
    :pswitch_30
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_INFLATE_LAYOUT_ID:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    invoke-interface {v0, v6}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getVerticalLayoutID(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 897
    :pswitch_31
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_INFLATE_LAYOUT_ID:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getVerticalLayoutID(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 892
    :pswitch_32
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getNavigationBarAlignPosition()I

    move-result p1

    .line 893
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_STR_CURRENT_LAYOUT:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    sget-object v3, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->BUTTON_REVERSE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    .line 894
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result v3

    .line 893
    invoke-interface {v2, v3, p1}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getLayout(ZI)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 888
    :pswitch_33
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_STR_CURRENT_LAYOUT:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    sget-object v2, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->BUTTON_REVERSE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    .line 889
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result v2

    .line 888
    invoke-interface {v0, v1, v2}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getGesturalLayout(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 884
    :pswitch_34
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_STR_CURRENT_LAYOUT:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    sget-object v2, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->BUTTON_REVERSE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    .line 885
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result v2

    .line 884
    invoke-interface {v0, v6, v2}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getGesturalLayout(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 881
    :pswitch_35
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->defaultLayoutChange()V

    goto/16 :goto_1

    .line 875
    :pswitch_36
    const-class p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    const/4 p2, -0x2

    const-string v0, "com.samsung.internal.systemui.navbar.zeroheight"

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 872
    :pswitch_37
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIconsAndHints()V

    goto/16 :goto_1

    .line 869
    :pswitch_38
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_THEME_DEFAULT:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v2, Lcom/android/systemui/statusbar/phone/interactor/UseThemeDefaultInteractor;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/interactor/UseThemeDefaultInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/interactor/UseThemeDefaultInteractor;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 866
    :pswitch_39
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class p2, Lcom/android/systemui/statusbar/phone/interactor/UseThemeDefaultInteractor;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/UseThemeDefaultInteractor;

    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/phone/interactor/UseThemeDefaultInteractor;->setEnabled(Z)V

    goto/16 :goto_1

    .line 863
    :pswitch_3a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class p2, Lcom/android/systemui/statusbar/phone/interactor/UseThemeDefaultInteractor;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/UseThemeDefaultInteractor;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/interactor/UseThemeDefaultInteractor;->setEnabled(Z)V

    goto/16 :goto_1

    .line 859
    :pswitch_3b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_FLOATING_ROTATE_BUTTON_DRAWABLE:Lcom/android/systemui/statusbar/phone/store/EventType;

    sget v0, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_rotate_button:I

    .line 860
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 859
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 856
    :pswitch_3c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_FLOATING_ROTATE_BUTTON_POSITION:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mFloatingButtonPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 851
    :pswitch_3d
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_ROTATE_BUTTON_STYLE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mWinRotation:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRotation:I

    .line 852
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/util/RotationUtil;->isRotationCCW(II)Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/util/RotationUtil;->getRotateButtonStyle(IIZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 851
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    iget p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mWinRotation:I

    iget p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRotation:I

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/util/RotationUtil;->getFloatingRotationButtonPosition(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mFloatingButtonPosition:I

    goto/16 :goto_1

    .line 848
    :pswitch_3e
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    goto/16 :goto_1

    .line 845
    :pswitch_3f
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    goto/16 :goto_1

    .line 842
    :pswitch_40
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->getSetupWizardView()Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewUtil:Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->getDarkIntensity()Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->setDarkIntensity(F)V

    goto/16 :goto_1

    .line 839
    :pswitch_41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->getSetupWizardView()Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarIconHint:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->setNavigationIconHints(I)V

    goto/16 :goto_1

    .line 835
    :pswitch_42
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    sget p2, Lcom/android/systemui/R$id;->navigation_inflater:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 836
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    sget p2, Lcom/android/systemui/R$id;->navigation_setupwizard:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 831
    :pswitch_43
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    sget p2, Lcom/android/systemui/R$id;->navigation_inflater:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 832
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    sget p2, Lcom/android/systemui/R$id;->navigation_setupwizard:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 828
    :pswitch_44
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_OPAQUE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 825
    :pswitch_45
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_OPAQUE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 822
    :pswitch_46
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_LIGHT:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 819
    :pswitch_47
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_LIGHT:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 816
    :pswitch_48
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mFragmentSavedInstanceState:Landroid/os/Bundle;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mFullscreenVisibility:I

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 813
    :pswitch_49
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mFragmentSavedInstanceState:Landroid/os/Bundle;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarIconHint:I

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 809
    :pswitch_4a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mFragmentSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mFullscreenVisibility:I

    .line 810
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_RESTORE_INSTANCE_FULLVIS_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mFullscreenVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 805
    :pswitch_4b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mFragmentSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarIconHint:I

    .line 806
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_RESTORE_INSTANCE_ICONHINT_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarIconHint:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 802
    :pswitch_4c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavBarMode:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->restoreBarMode(I)V

    goto/16 :goto_1

    .line 798
    :pswitch_4d
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object p1

    .line 799
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->marqueeNavigationBar(II)V

    goto :goto_1

    .line 794
    :pswitch_4e
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    .line 795
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-interface {p2}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->getNavigationBarColor()I

    move-result p2

    .line 794
    invoke-virtual {p1, v6, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->updateModeBackgroundColor(II)V

    goto :goto_1

    .line 791
    :pswitch_4f
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mDisabledFlags1:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    goto :goto_1

    .line 788
    :pswitch_50
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    goto :goto_1

    .line 785
    :pswitch_51
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_VIS_KNOX_POLICY:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 781
    :pswitch_52
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavbarGoneStateFlags(Z)V

    .line 782
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSystemUiStateFlags()V

    goto :goto_1

    .line 777
    :pswitch_53
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavbarGoneStateFlags(Z)V

    .line 778
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSystemUiStateFlags()V

    goto :goto_1

    .line 772
    :pswitch_54
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 773
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 767
    :pswitch_55
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 768
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    :cond_3
    :goto_1
    :pswitch_56
    iget p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    return v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_56
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_22
        :pswitch_23
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "NavBarStoreImpl : "

    .line 1146
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, " mDisabledFlags1=0x"

    .line 1148
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1149
    iget p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mDisabledFlags1:I

    .line 1150
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 1149
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, " mDisabledFlags2=0x"

    .line 1151
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1152
    iget p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mDisabledFlags2:I

    .line 1153
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 1152
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, " mFullscreenVisibility=0x"

    .line 1154
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1155
    iget p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mFullscreenVisibility:I

    .line 1156
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 1155
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, " mNavigationBarIconHint=0x"

    .line 1157
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1158
    iget p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarIconHint:I

    .line 1159
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 1158
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mStatusBarState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStatusBarState:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mMirrorLinkEnabled="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMirrorLinkEnabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mNavigationMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationMode:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mIsNavbarCanMove="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsNavbarCanMove:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getProvider(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1188
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLayoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    return-object p0

    .line 1186
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class p1, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getResult(Lcom/android/systemui/statusbar/phone/store/EventType;)Ljava/lang/Object;
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStoreLogUtil:Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    invoke-virtual {v1, p0, p1, v0}, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->printResultLog(ILcom/android/systemui/statusbar/phone/store/EventType;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getValue(Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;)Ljava/lang/Object;
    .locals 1

    .line 744
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$ValueType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 746
    :cond_0
    iget-wide p0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIconColorUpdatedTime:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/statusbar/phone/store/EventType;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 336
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 539
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_DESKTOP_DUAL_VIEW:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsDualView:Z

    goto/16 :goto_0

    .line 536
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mBypassInjector:Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 533
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_GESTURE_TYPE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->setNavigationMode(Z)V

    goto/16 :goto_0

    .line 530
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_BACK_GESTURE_SENSITIVITY:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->setBackGestureSensitivity(I)V

    goto/16 :goto_0

    .line 527
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_PAY_SHOWING:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsSPayHandlerShowing:Z

    goto/16 :goto_0

    .line 522
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/util/RecentsOnBoardingUtil;->isKeyboardTipPopupAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 517
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/util/RecentsOnBoardingUtil;->isKeyboardTipPopupAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 514
    :pswitch_7
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_BACK_GESTURE_ON_KEYBOARD:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->setBackGestureOnKeyboard(Z)V

    goto/16 :goto_0

    .line 511
    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_KEYBOARD_BUTTON:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mShowKeyboardButton:Z

    goto/16 :goto_0

    .line 508
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_ICONS_DARK:Lcom/android/systemui/statusbar/phone/store/EventType;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsDarkIcons:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 504
    :pswitch_a
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_DARK_ICONS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsDarkIcons:Z

    .line 505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIconColorUpdatedTime:J

    goto/16 :goto_0

    .line 498
    :pswitch_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_RECENT_ENABLED:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRecentEnabled:Z

    .line 500
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_HOME_ENABLED:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mHomeEnabled:Z

    .line 501
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_BACK_ENABLED:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mBackEnabled:Z

    goto/16 :goto_0

    .line 491
    :pswitch_c
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_GESTURE_HINT_ID:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureTarget:I

    .line 492
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_GESTURE_HINT_MOVE_DISTANCE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureDistance:I

    .line 493
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_GESTURE_HINT_MOVE_DURATION:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureDuration:J

    goto/16 :goto_0

    .line 488
    :pswitch_d
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_GESTURE_HINT_ID:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureTarget:I

    goto/16 :goto_0

    .line 485
    :pswitch_e
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_GESTURE_TYPE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->setGestureType(I)V

    goto/16 :goto_0

    .line 482
    :pswitch_f
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_GESTURE_HINT:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->setGestureHintEnabled(Z)V

    goto/16 :goto_0

    .line 479
    :pswitch_10
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_GET_DEADZONE_MAX:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNeedDeadZoneMax:Z

    goto/16 :goto_0

    .line 476
    :pswitch_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 473
    :pswitch_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewUtil:Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_DARK_INTENSITY:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->setDarkIntensity(Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 466
    :pswitch_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewUtil:Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_LEFT_REMOTEVIEW_CONTAINER:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sget-object v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_RIGHT_REMOTEVIEW_CONTAINER:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 468
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 467
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->setRemoteViewContainer(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewUtil:Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_CONTEXTUALBUTTON_VISIBLE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->setContextualButtonVisible(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewUtil:Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_DARK_INTENSITY:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->setDarkIntensity(Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 459
    :pswitch_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewUtil:Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_REMOTEVIEW_REQUEST_CLASS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_REMOTEVIEW_ICON:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 461
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    sget-object v3, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_REMOTEVIEW_POSITION:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 462
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_REMOTEVIEW_PRIORITY:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 463
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 460
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    goto/16 :goto_0

    .line 456
    :pswitch_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 453
    :pswitch_16
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_REMOTEVIEW_MANAGER:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    goto/16 :goto_0

    .line 450
    :pswitch_17
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVIGATION_CAN_MOVE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsNavbarCanMove:Z

    goto/16 :goto_0

    .line 447
    :pswitch_18
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVIGATION_MODE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationMode:I

    goto/16 :goto_0

    .line 443
    :pswitch_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_CURRENT_ROTATION:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->setRotation(I)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_SCREEN_SIZE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->setScreenSize(Landroid/graphics/Point;)V

    goto/16 :goto_0

    .line 440
    :pswitch_1a
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_VERTICAL_LAYOUT:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsVerticalLayout:Z

    goto/16 :goto_0

    .line 436
    :pswitch_1b
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_BUTTON_SPEC:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    .line 437
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_BUTTON_ORIENTATION:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsInflateLandscape:Z

    goto/16 :goto_0

    .line 432
    :pswitch_1c
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_BUTTON_SPEC:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    .line 433
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_BUTTON_ORIENTATION:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsInflateLandscape:Z

    goto/16 :goto_0

    .line 426
    :pswitch_1d
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_COMPUTE_BAR_MODE_OLD_VIS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_COMPUTE_BAR_MODE_OLD_FULLVIS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 427
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 426
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/util/BarModeUtil;->barMode(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mOldBarMode:I

    .line 428
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_COMPUTE_BAR_MODE_NEW_VIS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_COMPUTE_BAR_MODE_NEW_FULLVIS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 429
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 428
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/util/BarModeUtil;->barMode(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNewBarMode:I

    goto/16 :goto_0

    .line 423
    :pswitch_1e
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_ICON_HINT:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarIconHint:I

    goto/16 :goto_0

    .line 420
    :pswitch_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 417
    :pswitch_20
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_MIRRORLINK_STATE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMirrorLinkEnabled:Z

    goto/16 :goto_0

    .line 411
    :pswitch_21
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_WIN_ROTATION:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mWinRotation:I

    .line 412
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_ROTATION:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRotation:I

    goto/16 :goto_0

    .line 406
    :pswitch_22
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_MODE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavBarMode:I

    .line 407
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_TRANSITIONS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 403
    :pswitch_23
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_MODE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavBarMode:I

    goto/16 :goto_0

    .line 395
    :pswitch_24
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NIGHT_MODE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 396
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNightModeOn:Z

    if-ne v2, v0, :cond_0

    return v1

    .line 399
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNightModeOn:Z

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 392
    :pswitch_25
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_SAVED_INSTANCE_STATE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mFragmentSavedInstanceState:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 389
    :pswitch_26
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_SAVED_INSTANCE_STATE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mFragmentSavedInstanceState:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 384
    :pswitch_27
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_SAVED_INSTANCE_STATE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mFragmentSavedInstanceState:Landroid/os/Bundle;

    .line 385
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_FULLVIS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mFullscreenVisibility:I

    .line 386
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_ICON_HINT:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarIconHint:I

    goto/16 :goto_0

    .line 379
    :pswitch_28
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_DISABLE1:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mDisabledFlags1:I

    .line 380
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_DISABLE2:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mDisabledFlags2:I

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 376
    :pswitch_29
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_WINDOW_STATE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavbarWindowState:I

    goto/16 :goto_0

    .line 364
    :pswitch_2a
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_KEYGUARD_SHOWING:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 367
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_COVER_CLOSED:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_CLEAR_COVER:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStoreLogUtil:Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    const-string p2, "ON_WINDOW_FOCUS_CHANGED clear covered"

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->debugPrintLog(ILjava/lang/String;)V

    return v1

    .line 372
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_STATUSBAR_FOCUSED:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStatusBarWindowFocused:Z

    .line 373
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_STATUSBAR_STATE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStatusBarState:I

    goto/16 :goto_0

    .line 360
    :pswitch_2b
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_STATUSBAR_STATE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStatusBarState:I

    .line 361
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCoverClosed:Z

    goto :goto_0

    .line 356
    :pswitch_2c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 349
    :pswitch_2d
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_VIEW:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 350
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_TRANSITIONS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mHintVI:Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 345
    :pswitch_2e
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_LIGHTBAR_CONTROLLER:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 341
    :pswitch_2f
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_STATUSBAR:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 338
    :pswitch_30
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStoreLogUtil:Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->startLogging()V

    .line 543
    :cond_3
    :goto_0
    :pswitch_31
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mHandleEventLoggingEnabled:Z

    .line 545
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStoreLogUtil:Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->printEventLog(ILjava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mHandleEventLoggingEnabled:Z

    .line 547
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mPacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$7dBkU4tzbOtN_keE2cj0VApgLlE;->INSTANCE:Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$7dBkU4tzbOtN_keE2cj0VApgLlE;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 549
    iget v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    .line 551
    new-instance v2, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$MUqtoRi_PYR2reroqhUFxR2bIEM;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$MUqtoRi_PYR2reroqhUFxR2bIEM;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$YR04qorNBGGzX5InpS9ZDl3mXJI;->INSTANCE:Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$YR04qorNBGGzX5InpS9ZDl3mXJI;

    .line 556
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$oOnR5NYufSSEXPxFnm_xWg2IKo8;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$oOnR5NYufSSEXPxFnm_xWg2IKo8;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;Ljava/util/Map;)V

    .line 557
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 569
    iget p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    .line 571
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mHandleEventLoggingEnabled:Z

    .line 573
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_31
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_31
        :pswitch_b
        :pswitch_a
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

.method public init(Lcom/android/systemui/statusbar/phone/bandaid/BandAidPackFactoryBase;)V
    .locals 2

    .line 254
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/BandAidPackFactoryBase;->getPacks(Lcom/android/systemui/statusbar/phone/store/NavBarStore;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mPacks:Ljava/util/List;

    .line 255
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x11100a9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsNavbarCanMove:Z

    .line 256
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLayoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsNavbarCanMove:Z

    invoke-interface {p1, v0}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;->updateLayoutProvider(Z)Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 258
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/NavigationModeInterator;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/Interactor;

    .line 259
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$3ZhIHBlGDLXERs5noTBRvO3iRvQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$3ZhIHBlGDLXERs5noTBRvO3iRvQ;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/Interactor;->addCallback(Ljava/util/function/Consumer;)V

    .line 262
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/NavigationCanMoveInterator;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/Interactor;

    .line 263
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$dHYEiFkAUhdZ0CNZmVrQe2MOS9s;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$dHYEiFkAUhdZ0CNZmVrQe2MOS9s;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/Interactor;->addCallback(Ljava/util/function/Consumer;)V

    .line 266
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/ButtonOrderInteractor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/Interactor;

    .line 267
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$fTsMq9O4soAr-b7vtNaa85cJyxs;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$fTsMq9O4soAr-b7vtNaa85cJyxs;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/Interactor;->addCallback(Ljava/lang/Runnable;)V

    .line 270
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/BarStateInteractor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/Interactor;

    .line 271
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$3ZaFzM-hU42X2kh6WJP1RRC2FcY;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$3ZaFzM-hU42X2kh6WJP1RRC2FcY;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/Interactor;->addCallback(Ljava/util/function/Consumer;)V

    .line 274
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/OpenThemeInteractor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/Interactor;

    .line 275
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$Gte3iLq6H1KXHVF4YDQC1pmn0iI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$Gte3iLq6H1KXHVF4YDQC1pmn0iI;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/Interactor;->addCallback(Ljava/lang/Runnable;)V

    .line 278
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/Interactor;

    .line 279
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$y2JuqlH_NFY48k_rep3zHDnLIKU;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$y2JuqlH_NFY48k_rep3zHDnLIKU;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/Interactor;->addCallback(Ljava/util/function/Consumer;)V

    .line 282
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/Interactor;

    .line 283
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$82D3wOxy9_o7FDR2ny9z8KgsuYk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$82D3wOxy9_o7FDR2ny9z8KgsuYk;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;->setNavbarHiddenCallBack(Ljava/lang/Runnable;)V

    .line 285
    new-instance v1, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$7l2WjPzmN0fJYBpLv5fHMSgqXqc;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$7l2WjPzmN0fJYBpLv5fHMSgqXqc;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;->setHardKeyIntentCallback(Ljava/util/function/Consumer;)V

    .line 288
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/interactor/Interactor;->addCallback()V

    .line 290
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/UseThemeDefaultInteractor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/Interactor;

    .line 291
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$SiWydCufqBgGnur82fqT3AZ1UII;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$SiWydCufqBgGnur82fqT3AZ1UII;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/Interactor;->addCallback(Ljava/lang/Runnable;)V

    .line 294
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/GestureHintInteractor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/Interactor;

    .line 295
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$8P6C-Aklz6lxZS4dsH455agBzVs;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$8P6C-Aklz6lxZS4dsH455agBzVs;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/Interactor;->addCallback(Ljava/util/function/Consumer;)V

    .line 298
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/GestureTypeInteractor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/Interactor;

    .line 299
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$ATylhL3vdSKGXfdBnu1JBABzsMM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$ATylhL3vdSKGXfdBnu1JBABzsMM;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/Interactor;->addCallback(Ljava/util/function/Consumer;)V

    .line 302
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/HideKeyboardButtonInteractor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/Interactor;

    .line 303
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$KIKU39l8qL20bluw_PX4r1omg6Q;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$KIKU39l8qL20bluw_PX4r1omg6Q;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/Interactor;->addCallback(Ljava/util/function/Consumer;)V

    .line 306
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/BackGestureOnKeyboardInteractor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/Interactor;

    .line 307
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$EGPE5r9r2gEA93wjIkcfTjPuPgg;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$EGPE5r9r2gEA93wjIkcfTjPuPgg;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/Interactor;->addCallback(Ljava/util/function/Consumer;)V

    .line 310
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/BackGestureSensitivityInteractor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/Interactor;

    .line 311
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$hW0mo8XZeEFyGL_8vYCJvtyKZDM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$hW0mo8XZeEFyGL_8vYCJvtyKZDM;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/Interactor;->addCallback(Ljava/util/function/Consumer;)V

    .line 314
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/BackGesturePolicyInteractor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/interactor/Interactor;

    .line 315
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$M399k4pN5lvq_mdX-mbpnqDQusg;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$M399k4pN5lvq_mdX-mbpnqDQusg;-><init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/interactor/Interactor;->addCallback(Ljava/util/function/Consumer;)V

    .line 318
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->setupColorSettingInteractor()V

    return-void
.end method

.method public isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z
    .locals 5

    .line 579
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 731
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/util/RecentsOnBoardingUtil;->isTwoFingerSwipeUpPopupAvailable(Landroid/content/Context;)Z

    move-result v3

    goto/16 :goto_1

    .line 728
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationMode:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/util/RecentsOnBoardingUtil;->isSwipeUpAndHoldPopupAvailable(Landroid/content/Context;I)Z

    move-result v3

    goto/16 :goto_1

    .line 725
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsDualView:Z

    goto/16 :goto_1

    .line 722
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureInterceptView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    move v3, v4

    goto/16 :goto_1

    .line 719
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mGestureInterceptView:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 716
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/statusbar/phone/interactor/BackGesturePolicyInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/interactor/BackGesturePolicyInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/interactor/BackGesturePolicyInteractor;->isEnabled()Z

    move-result v3

    goto/16 :goto_1

    .line 712
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 709
    :pswitch_7
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsSPayHandlerShowing:Z

    goto/16 :goto_1

    .line 706
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/statusbar/phone/interactor/ButtonOrderInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/interactor/ButtonOrderInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/interactor/ButtonOrderInteractor;->isEnabled()Z

    move-result v3

    goto/16 :goto_1

    .line 703
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/statusbar/phone/interactor/GestureHintInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/interactor/GestureHintInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/interactor/GestureHintInteractor;->isEnabled()Z

    move-result v3

    goto/16 :goto_1

    .line 700
    :pswitch_a
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mShowKeyboardButton:Z

    goto/16 :goto_1

    .line 697
    :pswitch_b
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsDarkIcons:Z

    goto/16 :goto_1

    .line 694
    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->isNavigationLight()Z

    move-result v3

    goto/16 :goto_1

    .line 691
    :pswitch_d
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNeedDeadZoneMax:Z

    goto/16 :goto_1

    .line 688
    :pswitch_e
    iget v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarIconHint:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    goto :goto_0

    .line 685
    :pswitch_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/statusbar/phone/interactor/FloatingGameToolsEnableInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/interactor/FloatingGameToolsEnableInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/interactor/FloatingGameToolsEnableInteractor;->isEnabled()Z

    move-result v3

    goto/16 :goto_1

    .line 682
    :pswitch_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/statusbar/phone/interactor/FloatingGameToolsSupportInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/interactor/FloatingGameToolsSupportInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/interactor/FloatingGameToolsSupportInteractor;->isEnabled()Z

    move-result v3

    goto/16 :goto_1

    .line 679
    :pswitch_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewUtil:Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->isGameMode()Z

    move-result v3

    goto/16 :goto_1

    .line 675
    :pswitch_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->getDarkIntensity()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewUtil:Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;

    .line 676
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->getDarkIntensity()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 672
    :pswitch_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->isRightRemoteViewExist()Z

    move-result v3

    goto/16 :goto_1

    .line 669
    :pswitch_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->isLeftRemoteViewExist()Z

    move-result v3

    goto/16 :goto_1

    .line 666
    :pswitch_15
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMirrorLinkEnabled:Z

    goto/16 :goto_1

    .line 663
    :pswitch_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    const-string v1, "gap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1

    .line 655
    :pswitch_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    const-string v1, "menu_ime"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    const-string v1, "space"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    const-string v1, "ime_switcher"

    .line 656
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    const-string v1, "clipboard"

    .line 657
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    const-string v1, "key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    const-string v1, "contextual"

    .line 658
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    const-string v1, "left_remote_view"

    .line 659
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    const-string v1, "right_remote_view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    const-string v1, "left"

    .line 660
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    const-string v1, "right"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 650
    :pswitch_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    const-string v1, "home"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    const-string v1, "back"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    const-string v1, "home_handle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    const-string v1, "recent"

    .line 651
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    const-string v1, "navkey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCurrentButtonType:Ljava/lang/String;

    const-string v1, "hint"

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 647
    :pswitch_19
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mIsVerticalLayout:Z

    goto/16 :goto_1

    .line 644
    :pswitch_1a
    iget v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationMode:I

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 641
    :pswitch_1b
    iget v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationMode:I

    if-ne v0, v2, :cond_1

    goto/16 :goto_0

    .line 638
    :pswitch_1c
    iget v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationMode:I

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 635
    :pswitch_1d
    iget v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mOldBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNewBarMode:I

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 632
    :pswitch_1e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->isRotateButtonDisabledByPolicy()Z

    move-result v3

    goto/16 :goto_1

    .line 629
    :pswitch_1f
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    goto/16 :goto_1

    .line 626
    :pswitch_20
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->isOpaqueNavigationBar()Z

    move-result v3

    goto/16 :goto_1

    .line 623
    :pswitch_21
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->isOpaqueNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNightModeOn:Z

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 620
    :pswitch_22
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->isSetupWizardNavbarType()Z

    move-result v3

    goto/16 :goto_1

    .line 617
    :pswitch_23
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;->isEnabled()Z

    move-result v3

    goto :goto_1

    .line 614
    :pswitch_24
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mCoverClosed:Z

    xor-int/lit8 v3, v0, 0x1

    goto :goto_1

    .line 611
    :pswitch_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 607
    :pswitch_26
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 608
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 604
    :pswitch_27
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNightModeOn:Z

    goto :goto_1

    .line 599
    :pswitch_28
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1

    .line 600
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v3

    goto :goto_1

    .line 596
    :pswitch_29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mFragmentSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 593
    :pswitch_2a
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStatusBarWindowFocused:Z

    goto :goto_1

    .line 590
    :pswitch_2b
    iget v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mNavBarMode:I

    if-ne v0, v4, :cond_1

    goto/16 :goto_0

    .line 587
    :pswitch_2c
    iget v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStatusBarState:I

    if-ne v0, v2, :cond_1

    goto/16 :goto_0

    .line 584
    :pswitch_2d
    iget v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStatusBarState:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDlsOverlay()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 581
    :pswitch_2e
    iget v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStatusBarState:I

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 735
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mHandleEventLoggingEnabled:Z

    if-eqz v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStoreLogUtil:Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    :cond_2
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public synthetic lambda$apply$19$NavBarStoreImpl(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1009
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_CHANGE_PAY_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_PAY_SHOWING:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 1011
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_PAY_WIDTH:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 1012
    invoke-virtual {p1, v1, p2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    .line 1013
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 1009
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$handleEvent$16$NavBarStoreImpl(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Lcom/android/systemui/statusbar/phone/bandaid/Band;)Z
    .locals 2

    .line 551
    iget-boolean v0, p3, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p3, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 553
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p3, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v0, p1, :cond_1

    :cond_0
    iget-object p1, p3, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    iget-object p1, p3, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    .line 555
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->containNullDependency(Ljava/util/Map;Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$handleEvent$18$NavBarStoreImpl(Ljava/util/Map;Lcom/android/systemui/statusbar/phone/bandaid/Band;)V
    .locals 4

    .line 558
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mHandleEventLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStoreLogUtil:Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Band]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    .line 562
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    .line 564
    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 566
    iget p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    return-void
.end method

.method public synthetic lambda$init$0$NavBarStoreImpl(Ljava/lang/Object;)V
    .locals 3

    .line 259
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_STYLE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVIGATION_MODE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 260
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 259
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$init$1$NavBarStoreImpl(Ljava/lang/Object;)V
    .locals 3

    .line 263
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_CAN_MOVE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVIGATION_CAN_MOVE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 264
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 263
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$init$10$NavBarStoreImpl(Ljava/lang/Object;)V
    .locals 3

    .line 299
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_GESTURE_TYPE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_GESTURE_TYPE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 300
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 299
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$init$11$NavBarStoreImpl(Ljava/lang/Object;)V
    .locals 3

    .line 303
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_HIDE_KEYBOARD_BUTTON_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_KEYBOARD_BUTTON:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 304
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 303
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$init$12$NavBarStoreImpl(Ljava/lang/Object;)V
    .locals 3

    .line 307
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BACK_GESTURE_ON_KEYBOARD_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_BACK_GESTURE_ON_KEYBOARD:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 308
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 307
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$init$13$NavBarStoreImpl(Ljava/lang/Object;)V
    .locals 3

    .line 311
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BACK_GESTURE_SENSITIVITY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_BACK_GESTURE_SENSITIVITY:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 312
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 311
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$init$14$NavBarStoreImpl(Ljava/lang/Object;)V
    .locals 3

    .line 315
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BACK_GESTURE_DISABLED_BY_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_BACK_GESTURE_DISABLED:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 316
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 315
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$init$2$NavBarStoreImpl()V
    .locals 2

    .line 267
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_KEY_ORDER_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    .line 268
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 267
    invoke-virtual {p0, p0, v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$init$3$NavBarStoreImpl(Ljava/lang/Object;)V
    .locals 3

    .line 271
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_BAR_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_STATUSBAR_STATE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 272
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 271
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$init$4$NavBarStoreImpl()V
    .locals 2

    .line 275
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_OPEN_THEME_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    .line 276
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 275
    invoke-virtual {p0, p0, v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$init$5$NavBarStoreImpl(Ljava/lang/Object;)V
    .locals 4

    .line 279
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_MIRROR_LINK_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_MIRRORLINK_STATE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    check-cast p1, Ljava/lang/Integer;

    .line 280
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 279
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$init$6$NavBarStoreImpl()V
    .locals 2

    .line 284
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_KNOX_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$init$7$NavBarStoreImpl(Ljava/lang/Boolean;)V
    .locals 3

    .line 286
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_HARD_KEY_INTENT_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_HARD_KEY_INTENT_STATUS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 287
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 286
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$init$8$NavBarStoreImpl()V
    .locals 2

    .line 291
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_THEME_DEFAULT_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    .line 292
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 291
    invoke-virtual {p0, p0, v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$init$9$NavBarStoreImpl(Ljava/lang/Object;)V
    .locals 3

    .line 295
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_GESTURE_HINT_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_GESTURE_HINT:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 296
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 295
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$setupColorSettingInteractor$21$NavBarStoreImpl()V
    .locals 2

    .line 1138
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_NAVBAR_COLOR:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    .line 1139
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 1138
    invoke-virtual {p0, p0, v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public setProvider(ILjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1176
    :cond_0
    check-cast p2, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLayoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    .line 1177
    sget-object p1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_LAYOUT_CONTAINER_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance p2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {p2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    goto :goto_0

    .line 1172
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;

    const-class v0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->update(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->setupColorSettingInteractor()V

    :goto_0
    return-void
.end method

.method public setResult(Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/lang/Object;)V
    .locals 4

    .line 1104
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mHandleEventLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mStoreLogUtil:Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mLoggingDepth:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setResult("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    .line 1108
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->mMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
