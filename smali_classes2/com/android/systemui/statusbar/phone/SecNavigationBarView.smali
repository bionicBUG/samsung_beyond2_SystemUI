.class public Lcom/android/systemui/statusbar/phone/SecNavigationBarView;
.super Lcom/android/systemui/statusbar/phone/NavigationBarView;
.source "SecNavigationBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SecNavigationBarView$OnInsetsChangedListener;
    }
.end annotation


# instance fields
.field private mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mCurrentRemoteView:Landroid/view/View;

.field private mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

.field private mGestureHintGroup:Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;

.field private mHardKeyIntentState:Z

.field private mInScreenPinning:Z

.field private mInsetsChangedListener:Lcom/android/systemui/statusbar/phone/SecNavigationBarView$OnInsetsChangedListener;

.field private mInteractorManager:Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;

.field private mIsGametoolsVisible:Z

.field private mIsNavbarGone:Z

.field private mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

.field private mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private mMarqueeLogic:Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;

.field private mPluginNavBar:Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;

.field private mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 86
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    .line 97
    const-class p2, Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    .line 98
    new-instance p2, Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    invoke-direct {p2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    .line 99
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mWindowManager:Landroid/view/WindowManager;

    .line 100
    new-instance p2, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    invoke-direct {p2, p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;-><init>(Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;Lcom/android/systemui/statusbar/phone/store/NavBarStore;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/util/LogWrapper;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    .line 101
    new-instance p2, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;

    invoke-direct {p2}, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeLogic:Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;

    .line 102
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    .line 103
    new-instance p2, Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/RuneWrapper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/util/RuneWrapper;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getButtonDispatchers()Landroid/util/SparseArray;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;-><init>(Landroid/content/Context;Landroid/util/SparseArray;)V

    invoke-direct {p2, p0, v0, v1}, Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPluginNavBar:Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;

    .line 106
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_SCREEN_INFO:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_CURRENT_ROTATION:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_SCREEN_SIZE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 110
    invoke-virtual {v2, v3, p2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p2

    .line 108
    invoke-interface {v0, p0, v1, p2}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    .line 112
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->setKeyButtonMapper(Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->initContextualButtonGroup(Landroid/content/Context;)V

    .line 114
    new-instance p1, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;-><init>(Landroid/util/SparseArray;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mGestureHintGroup:Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;

    .line 115
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInScreenPinning:Z

    return-void
.end method

.method private initContextualButtonGroup(Landroid/content/Context;)V
    .locals 8

    .line 443
    new-instance p1, Lcom/android/systemui/statusbar/phone/ContextualButton;

    sget v0, Lcom/android/systemui/R$id;->menu:I

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_MENU:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ContextualButton;-><init>(ILcom/samsung/systemui/splugins/navigationbar/IconType;)V

    .line 444
    new-instance v0, Lcom/android/systemui/statusbar/phone/ContextualButton;

    sget v1, Lcom/android/systemui/R$id;->ime_switcher:I

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ContextualButton;-><init>(ILcom/samsung/systemui/splugins/navigationbar/IconType;)V

    .line 445
    new-instance v1, Lcom/android/systemui/statusbar/phone/RotationContextButton;

    sget v2, Lcom/android/systemui/R$id;->rotate_suggestion:I

    sget v3, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_rotate_button:I

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/RotationContextButton;-><init>(II)V

    .line 447
    new-instance v2, Lcom/android/systemui/statusbar/phone/ContextualButton;

    sget v3, Lcom/android/systemui/R$id;->accessibility_button:I

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/ContextualButton;-><init>(ILcom/samsung/systemui/splugins/navigationbar/IconType;)V

    .line 449
    new-instance v3, Lcom/android/systemui/statusbar/phone/ContextualButton;

    sget v4, Lcom/android/systemui/R$id;->restart_button:I

    sget-object v5, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RESTART:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ContextualButton;-><init>(ILcom/samsung/systemui/splugins/navigationbar/IconType;)V

    .line 451
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->clearButton()V

    .line 452
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->addButton(Lcom/android/systemui/statusbar/phone/ContextualButton;)V

    .line 453
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->addButton(Lcom/android/systemui/statusbar/phone/ContextualButton;)V

    .line 454
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->addButton(Lcom/android/systemui/statusbar/phone/ContextualButton;)V

    .line 455
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v4}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 456
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->addButton(Lcom/android/systemui/statusbar/phone/ContextualButton;)V

    .line 458
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->addButton(Lcom/android/systemui/statusbar/phone/ContextualButton;)V

    .line 460
    new-instance v4, Lcom/android/systemui/statusbar/phone/RotationButtonController;

    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$style;->SecRotateButtonCCWStart90:I

    .line 461
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v7}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

    goto :goto_0

    :cond_1
    move-object v7, v1

    :goto_0
    invoke-direct {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/RotationButtonController;-><init>(Landroid/content/Context;ILcom/android/systemui/statusbar/phone/RotationButton;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    .line 463
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v5, Lcom/android/systemui/R$id;->menu:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v4, Lcom/android/systemui/R$id;->ime_switcher:I

    invoke-virtual {p1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->rotate_suggestion:I

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->restart_button:I

    invoke-virtual {p1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->accessibility_button:I

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->hint_left:I

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->hint_center:I

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 470
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget p1, Lcom/android/systemui/R$id;->hint_right:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public defaultLayoutChange()V
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    if-eqz p0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onLikelyDefaultLayoutChange()V

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_DISPATCH_POPULATE_A11Y_EVENT:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_A11Y_EVENT:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 316
    invoke-virtual {v2, v3, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 315
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    .line 317
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method protected getBackIconWithAlt(Z)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 0

    if-eqz p1, :cond_0

    .line 321
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :goto_0
    return-object p0
.end method

.method public getDefaultColorProvider()Ljava/lang/Object;
    .locals 1

    .line 613
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->getProvider(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultLayoutProviderContainer()Ljava/lang/Object;
    .locals 1

    .line 617
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->getProvider(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;
    .locals 0

    .line 419
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;
    .locals 0

    .line 424
    invoke-static {p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getHintGroup()Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mGestureHintGroup:Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;

    return-object p0
.end method

.method public getHintView()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mGestureHintGroup:Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;->getHintView()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public getKeyButtonDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 0

    .line 409
    invoke-static {p1, p2, p3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getKeyButtonDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 0

    .line 414
    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method protected getOpenThemeDrawable(Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    .line 429
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 430
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 431
    sget v0, Lcom/android/systemui/R$color;->navbar_icon_color_light:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 432
    sget v0, Lcom/android/systemui/R$color;->navbar_icon_color_dark:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 433
    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getOpenThemeTintDrawable(Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 0

    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getOpenThemeDrawable(Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method protected getRtlDrawable(Landroid/content/Context;Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 0

    .line 438
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 439
    invoke-virtual {p1, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 438
    invoke-static {p0, p2, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->createRTL(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getRtlKeyButtonDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 0

    .line 399
    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRtlDrawable(Landroid/content/Context;Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getRtlKeyButtonDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 0

    .line 404
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->createRTL(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public marqueeNavigationBar(II)V
    .locals 8

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->reorient()V

    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeLogic:Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->update(F)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeLogic:Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->getLeftShift(Z)I

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeLogic:Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->getTopShift(Z)I

    move-result v1

    .line 351
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeLogic:Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->getSidePadding(II)I

    move-result p1

    const/4 p2, 0x0

    move v2, p2

    .line 352
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 353
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    .line 354
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 355
    invoke-virtual {v3, v0, v1, p2, p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPadding(IIII)V

    goto :goto_4

    .line 357
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->contains(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 360
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    add-int v4, p1, v1

    goto :goto_1

    :cond_2
    move v4, v1

    .line 361
    :goto_1
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    if-nez v5, :cond_3

    add-int/lit8 v5, p1, 0x0

    goto :goto_2

    :cond_3
    move v5, p2

    .line 362
    :goto_2
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    add-int/lit8 v6, p1, 0x0

    goto :goto_3

    :cond_4
    move v6, p2

    .line 358
    :goto_3
    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPadding(IIII)V

    goto :goto_4

    .line 364
    :cond_5
    invoke-virtual {v3, v0, v1, p2, p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPadding(IIII)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 530
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 531
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHintVisibilityChanged - payVisible : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " + payRect : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecNavigationBarView"

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/OverviewProxyService;->notifyPayInfo(ZI)V

    .line 534
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInsetsChangedListener:Lcom/android/systemui/statusbar/phone/SecNavigationBarView$OnInsetsChangedListener;

    if-eqz v1, :cond_0

    .line 535
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$OnInsetsChangedListener;->onSPayHintVisibilityChanged(ZI)V

    .line 538
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 292
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onAttachedToWindow()V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInteractorManager:Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPluginNavBar:Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;-><init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/ExtendableNavigationBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInteractorManager:Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_ATTACHED_TO_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_VIEW:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 297
    invoke-virtual {v2, v3, p0}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_TRANSITIONS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object v2

    .line 299
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 296
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 304
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onDetachedFromWindow()V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInteractorManager:Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->stop()V

    const/4 v0, 0x0

    .line 307
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInteractorManager:Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_DETACHED_TO_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    .line 310
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 309
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 134
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onFinishInflate()V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_START_NAVBAR_REMOTEVIEW_MANAGER_SERVICE:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    .line 136
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 135
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method protected onImeVisibilityChanged(Z)V
    .locals 0

    .line 163
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onImeVisibilityChanged(Z)V

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->showHideKeyboardButton()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowHideKeyboard:Z

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 123
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 128
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onLayout(ZIIII)V

    .line 129
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/RecentsOnboarding;->setNavbarWidth(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 267
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 268
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 270
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->isBottomGesture(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 272
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10501f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 274
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10501f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 276
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v4, v3, :cond_1

    .line 279
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    new-instance v4, Landroid/graphics/Rect;

    sub-int v2, v0, v2

    invoke-direct {v4, v2, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setBackgroundFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne v4, v0, :cond_4

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setBackgroundFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 277
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    new-instance v6, Landroid/graphics/Rect;

    sub-int/2addr v3, v2

    invoke-direct {v6, v5, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setBackgroundFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 283
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setBackgroundFrame(Landroid/graphics/Rect;)V

    .line 287
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onMeasure(II)V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 192
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onNavigationModeChanged(I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->isTipPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_DISMISS_RECENTS_ONBOARDING_TIP_POPUP:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_ICON_MARQUEE:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method protected orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 0

    return-void
.end method

.method protected orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 0

    return-void
.end method

.method public reorient()V
    .locals 3

    .line 260
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_ICON_MARQUEE:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public setColorProvider(Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;)V
    .locals 1

    .line 599
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->setProvider(ILjava/lang/Object;)V

    return-void
.end method

.method public setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V

    return-void
.end method

.method public setHardKeyIntentState(Z)V
    .locals 0

    .line 594
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHardKeyIntentState:Z

    .line 595
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateSystemUiStateFlags()V

    return-void
.end method

.method public setIconThemeAlpha(F)V
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 622
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setLightsOutDisable(Z)V

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->nav_buttons:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 626
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHorizontal:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->nav_buttons:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setInsetsChangedListener(Lcom/android/systemui/statusbar/phone/SecNavigationBarView$OnInsetsChangedListener;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInsetsChangedListener:Lcom/android/systemui/statusbar/phone/SecNavigationBarView$OnInsetsChangedListener;

    return-void
.end method

.method public setLayoutProviderContainer(Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;)V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->setProvider(ILjava/lang/Object;)V

    .line 631
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateLayoutProviderView()V

    return-void
.end method

.method public showA11ySwipeTowFingerTipPopup()V
    .locals 0

    .line 589
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->showA11ySwipeTwoFingerTip()V

    return-void
.end method

.method protected showHideKeyboardButton()Z
    .locals 6

    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_SHOW_KEYBOARD_BUTTON:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_PORTRAIT:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 553
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object v2

    .line 554
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 551
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_SHOW_KEYBOARD_BUTTON:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->getResult(Lcom/android/systemui/statusbar/phone/store/EventType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :cond_1
    return v5
.end method

.method public showKeyboardTipPopup()V
    .locals 0

    .line 584
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->showKeyboardTip()V

    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 0

    .line 372
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showPinningEnterExitToast(Z)V

    .line 373
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInScreenPinning:Z

    .line 374
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_PERFORMANCE_TUNING:Z

    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateSystemUiStateFlags()V

    :cond_0
    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->showEscapeToast(ZZ)V

    return-void
.end method

.method public showSwipeUpAndHoldTipPopup()V
    .locals 2

    .line 576
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 578
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->showSwipeUpAndHoldTipPopup()V

    :cond_1
    return-void
.end method

.method protected updateCurrentView()V
    .locals 6

    .line 141
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    .line 142
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 143
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 144
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v2, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_SCREEN_INFO:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v3, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v4, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_CURRENT_ROTATION:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    .line 145
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_SCREEN_SIZE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 146
    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 144
    invoke-interface {v1, p0, v2, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    .line 148
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->nav_bar_widget:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateRemoteView()V

    :cond_0
    return-void
.end method

.method public updateEdgeBackDisablePolicy(Z)V
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateDisablePolicy(Z)V

    return-void
.end method

.method public updateHintVisibility(ZZZ)V
    .locals 6

    .line 485
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavBarButtonOrderDefault()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 488
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHintGroup()Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;->getHintView(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    const/4 v4, 0x4

    if-eqz p2, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 489
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHintGroup()Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;->getHintView(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 490
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHintGroup()Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;->getHintView(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz p3, :cond_4

    move p3, v2

    goto :goto_4

    :cond_4
    move p3, v4

    :goto_4
    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 491
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    if-nez p1, :cond_6

    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    move v2, v4

    :cond_6
    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    return-void
.end method

.method protected updateIcons(Landroid/content/res/Configuration;)V
    .locals 4

    .line 171
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 177
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-eq p1, v1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz p1, :cond_5

    .line 180
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v3, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->updateConditions(Z)V

    .line 182
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 183
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 184
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 185
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 186
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_DOCKED:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :cond_5
    return-void
.end method

.method public updateIconsAndHints()V
    .locals 1

    .line 156
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 157
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method public updateNavButtonIcons()V
    .locals 9

    .line 198
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 199
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInScreenPinning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 200
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 206
    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    .line 207
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mGestureHintGroup:Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;

    if-eqz v0, :cond_6

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationHandle;

    if-eqz v0, :cond_2

    .line 210
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getGestureHandleDrawable()Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mGestureHintGroup:Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mKeybuttonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;->setIconResourceMapper(Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mGestureHintGroup:Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;->setCurrentRotation(I)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v4, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_GESTURE_HINT_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v5, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v6, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_RECENT_ENABLED:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 216
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    move v7, v3

    goto :goto_0

    :cond_3
    move v7, v1

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_HOME_ENABLED:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v8, 0x200000

    and-int/2addr v7, v8

    if-nez v7, :cond_4

    move v7, v3

    goto :goto_1

    :cond_4
    move v7, v1

    .line 217
    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_BACK_ENABLED:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v8, 0x400000

    and-int/2addr v7, v8

    if-nez v7, :cond_5

    move v7, v3

    goto :goto_2

    :cond_5
    move v7, v1

    .line 218
    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object v5

    .line 219
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v5

    .line 214
    invoke-interface {v0, p0, v4, v5}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    .line 222
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_3
    if-eqz v0, :cond_8

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->showHideKeyboardButton()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowHideKeyboard:Z

    .line 225
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowHideKeyboard:Z

    if-nez v0, :cond_8

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    sget v4, Lcom/android/systemui/R$id;->ime_switcher:I

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->setButtonVisibility(IZ)I

    .line 232
    :cond_8
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 234
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    move v3, v1

    .line 235
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-nez v3, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateSystemUiStateFlags()V

    :cond_b
    return-void
.end method

.method public updateNavbarGametoolsStateFlags(Z)V
    .locals 0

    .line 525
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsGametoolsVisible:Z

    return-void
.end method

.method public updateNavbarGoneStateFlags(Z)V
    .locals 0

    .line 520
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsNavbarGone:Z

    return-void
.end method

.method public updateNavigationBarColor()V
    .locals 3

    .line 603
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_NAVBAR_COLOR:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_NAVBAR_COLOR:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->getResult(Lcom/android/systemui/statusbar/phone/store/EventType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 607
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->updateModeBackgroundColor(II)V

    .line 609
    :cond_0
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarCurrentColor(I)V

    return-void
.end method

.method public updateRemoteView()V
    .locals 6

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    sget v1, Lcom/android/systemui/R$id;->left_remoteview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 246
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->right_remoteview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 248
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v3, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v4, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v5, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_LEFT_REMOTEVIEW_CONTAINER:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 249
    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_RIGHT_REMOTEVIEW_CONTAINER:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 250
    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_CONTEXTUALBUTTON_VISIBLE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    .line 252
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->getVisibleContextButton()Lcom/android/systemui/statusbar/phone/ContextualButton;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 251
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_DARK_INTENSITY:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 253
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 248
    invoke-interface {v2, p0, v3, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    :cond_2
    return-void
.end method

.method public updateSystemUiStateFlags()V
    .locals 7

    .line 496
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSystemUiStateFlags()V

    .line 497
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 498
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mInScreenPinning:Z

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    .line 500
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v4, 0x400000

    and-int/2addr v2, v4

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/16 v5, 0x400

    invoke-virtual {v1, v5, v2, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    .line 502
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/16 v2, 0x800

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsNavbarGone:Z

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    .line 504
    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    if-eqz v1, :cond_3

    .line 505
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    .line 506
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const v5, 0x8000

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsGametoolsVisible:Z

    if-eqz v6, :cond_2

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    invoke-virtual {v2, v5, v1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    .line 509
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v1, :cond_6

    .line 510
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v1}, Lcom/android/systemui/recents/OverviewProxyService;->getSystemUiStateFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v4

    .line 512
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 513
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    .line 512
    :goto_4
    invoke-virtual {v2, v5, v3, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    .line 515
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/16 v2, 0x4000

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHardKeyIntentState:Z

    invoke-virtual {v1, v2, p0, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    return-void
.end method
