.class public Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;
.super Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;
.source "SecGlobalActionsDialog.java"


# static fields
.field public static CALLED_FROM_QUICKPANEL:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 1

    .line 51
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/SystemUIResourceFactory;

    invoke-direct {v0}, Lcom/android/systemui/globalactions/presentation/view/SystemUIResourceFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;)V

    .line 53
    sget p1, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_GlobalActions:I

    iput p1, p0, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mDialogStyle:I

    .line 54
    invoke-direct {p0, p2}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->initDependencies(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V

    return-void
.end method

.method public static globalactionForceShow()V
    .locals 1

    const/4 v0, 0x1

    .line 104
    sput-boolean v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->CALLED_FROM_QUICKPANEL:Z

    .line 106
    invoke-static {}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->injectLongPressPowerKey()V

    return-void
.end method

.method private initDependencies(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    .line 58
    new-instance v9, Lcom/android/systemui/globalactions/presentation/SystemUIGlobalActionsManager;

    invoke-direct {v9, v0}, Lcom/android/systemui/globalactions/presentation/SystemUIGlobalActionsManager;-><init>(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V

    .line 60
    new-instance v10, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;

    iget-object v1, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-direct {v10, v1, v9}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/SecGlobalActionsManager;)V

    .line 61
    new-instance v8, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;

    iget-object v1, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1, v0, v10}, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;Lcom/samsung/android/globalactions/util/UtilFactory;)V

    .line 64
    const-class v0, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v10, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object v0, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 65
    iget-object v0, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "[SystemUI]"

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->setPackageTag(Ljava/lang/String;)V

    .line 66
    const-class v0, Lcom/samsung/android/globalactions/util/HandlerUtil;

    invoke-interface {v10, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/HandlerUtil;

    iput-object v0, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 67
    const-class v0, Lcom/samsung/android/globalactions/util/ToastController;

    invoke-interface {v10, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/ToastController;

    iput-object v0, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    .line 69
    new-instance v0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;

    iget-object v1, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v10, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    const-class v3, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    .line 70
    invoke-interface {v10, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    iget-object v4, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/SettingsWrapper;Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    .line 72
    new-instance v1, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;

    new-instance v2, Lcom/samsung/android/globalactions/util/SystemConditionChecker;

    iget-object v3, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v2, v10, v0, v3}, Lcom/samsung/android/globalactions/util/SystemConditionChecker;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    iget-object v3, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v1, v8, v2, v3}, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    .line 75
    new-instance v11, Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalyticsImpl;

    invoke-direct {v11}, Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalyticsImpl;-><init>()V

    const-string v2, "611"

    const-string v3, "6111"

    .line 76
    invoke-interface {v11, v2, v3}, Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    new-instance v2, Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    iget-object v3, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    iget-object v4, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v2, v3, v1, v4}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    .line 80
    new-instance v1, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    iget-object v3, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    iget-object v4, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v1, v3, v0, v4}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    move-object v14, v1

    move-object v13, v2

    goto :goto_0

    :cond_0
    move-object v14, v0

    move-object v13, v1

    .line 83
    :goto_0
    new-instance v15, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;

    iget-object v0, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    invoke-direct {v15, v10, v0, v13, v11}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;)V

    .line 86
    new-instance v1, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;

    iget-object v5, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    move-object v2, v1

    move-object v3, v15

    move-object v4, v8

    move-object v6, v13

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;)V

    .line 89
    new-instance v7, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;

    iget-object v2, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    iget-object v6, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object v0, v7

    move-object v5, v1

    move-object v1, v2

    move-object/from16 v2, p0

    move-object v3, v8

    move-object v4, v5

    move-object v8, v5

    move-object v5, v14

    move-object v14, v6

    move-object v6, v13

    move-object/from16 p1, v13

    move-object v13, v7

    move-object v7, v14

    move-object v14, v8

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;)V

    iput-object v13, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 92
    iget-object v0, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    invoke-virtual {v15, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->setFeatureFactory(Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;)V

    .line 93
    iget-object v0, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    invoke-virtual {v14, v0}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->setFeatureFactory(Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;)V

    .line 95
    new-instance v13, Lcom/samsung/android/globalactions/presentation/SecGlobalActionsPresenter;

    iget-object v2, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    const-class v0, Lcom/samsung/android/globalactions/util/BroadcastManager;

    .line 96
    invoke-interface {v10, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/globalactions/util/BroadcastManager;

    const-class v0, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-interface {v10, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/globalactions/util/SystemController;

    iget-object v8, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-class v0, Lcom/samsung/android/globalactions/util/ThemeChecker;

    .line 97
    invoke-interface {v10, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/samsung/android/globalactions/util/ThemeChecker;

    const-class v0, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    invoke-interface {v10, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v3, v14

    move-object v4, v9

    move-object/from16 v7, p1

    move-object v9, v15

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/globalactions/presentation/SecGlobalActionsPresenter;-><init>(Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/SecGlobalActionsManager;Lcom/samsung/android/globalactions/util/BroadcastManager;Lcom/samsung/android/globalactions/util/SystemController;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/ThemeChecker;Lcom/samsung/android/globalactions/util/ContentObserverWrapper;Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;)V

    iput-object v13, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SecGlobalActionsPresenter;

    move-object/from16 v1, p1

    .line 100
    iput-object v1, v12, Lcom/samsung/android/globalactions/presentation/view/SecGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    return-void
.end method

.method private static injectLongPressPowerKey()V
    .locals 5

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/16 v3, 0x1a

    const/16 v4, 0x80

    invoke-static {v3, v2, v4, v0, v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->sendEvent(IIIJ)V

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x1

    invoke-static {v3, v4, v2, v0, v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->sendEvent(IIIJ)V

    return-void
.end method

.method private static sendEvent(IIIJ)V
    .locals 16

    move/from16 v0, p2

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v10, v1

    goto :goto_0

    :cond_0
    move v10, v2

    .line 116
    :goto_0
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    or-int/lit8 v0, v0, 0x8

    or-int/lit8 v14, v0, 0x40

    const/16 v15, 0x101

    move-object v3, v1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p3

    move/from16 v8, p1

    move/from16 v9, p0

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 119
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method
