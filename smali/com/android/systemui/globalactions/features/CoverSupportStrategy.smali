.class public Lcom/android/systemui/globalactions/features/CoverSupportStrategy;
.super Ljava/lang/Object;
.source "CoverSupportStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/ViewInflateStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/WindowManagerFunctionStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final mCoverUtilWrapper:Lcom/android/systemui/globalactions/util/CoverUtilWrapper;

.field private final mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

.field private final mKeyGuardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private final mResourceWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

.field private final mToastController:Lcom/samsung/android/globalactions/util/ToastController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 42
    iput-object p2, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mCoverUtilWrapper:Lcom/android/systemui/globalactions/util/CoverUtilWrapper;

    .line 43
    iput-object p3, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    .line 44
    iput-object p4, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 45
    iput-object p5, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mKeyGuardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    .line 46
    iput-object p6, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    .line 47
    iput-object p7, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mResourceWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    return-void
.end method


# virtual methods
.method public doActionBeforeSecureConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Lcom/samsung/android/globalactions/presentation/SecGlobalActions;)Z
    .locals 6

    .line 99
    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "power"

    if-ne p2, v0, :cond_0

    const-string/jumbo p2, "shutdown"

    goto :goto_0

    :cond_0
    const-string p2, "reboot"

    .line 102
    :goto_0
    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x65e8905

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const v4, 0x416a9e0f

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "restart"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_4

    goto :goto_3

    .line 105
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 106
    iget-object v1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v2, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mResourceWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    .line 107
    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    if-ne v3, v0, :cond_5

    const v0, 0x104044a

    goto :goto_2

    :cond_5
    const v0, 0x104044c

    .line 106
    :goto_2
    invoke-virtual {v2, v0}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/globalactions/util/ToastController;->showToast(Ljava/lang/String;I)V

    .line 112
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 113
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 114
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mCoverUtilWrapper:Lcom/android/systemui/globalactions/util/CoverUtilWrapper;

    new-instance v1, Lcom/android/systemui/globalactions/features/-$$Lambda$CoverSupportStrategy$52__ZXq2UtoU2faeKYVwmAuJIjA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/globalactions/features/-$$Lambda$CoverSupportStrategy$52__ZXq2UtoU2faeKYVwmAuJIjA;-><init>(Lcom/android/systemui/globalactions/features/CoverSupportStrategy;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->setRunnable(Ljava/lang/Runnable;)V

    .line 121
    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mKeyGuardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-virtual {p0, v5}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->setRegisterState(Z)V

    :cond_8
    :goto_3
    return v5
.end method

.method public synthetic lambda$doActionBeforeSecureConfirm$1$CoverSupportStrategy(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Ljava/lang/String;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mKeyGuardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->setRegisterState(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    invoke-interface {v0, p1}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->registerSecureConfirmAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 117
    iget-object p1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v0, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SECURE_KEYGUARD:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mKeyGuardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-virtual {p0, p2}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->setPendingIntentAfterUnlock(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onInitialize$0$CoverSupportStrategy(IZ)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->dismissDialog(Z)V

    :cond_1
    return-void
.end method

.method public onCreateBugReportAction()Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 59
    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreateEmergencyAction()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 53
    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDispose()V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mCoverUtilWrapper:Lcom/android/systemui/globalactions/util/CoverUtilWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->dispose()V

    return-void
.end method

.method public onInflateView()Z
    .locals 1

    .line 94
    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onInitialize(Z)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mCoverUtilWrapper:Lcom/android/systemui/globalactions/util/CoverUtilWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->updateState()V

    .line 70
    iget-object p1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mCoverUtilWrapper:Lcom/android/systemui/globalactions/util/CoverUtilWrapper;

    new-instance v0, Lcom/android/systemui/globalactions/features/-$$Lambda$CoverSupportStrategy$YU28voxrZvFMcl2iHTHtg2no_fw;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/features/-$$Lambda$CoverSupportStrategy$YU28voxrZvFMcl2iHTHtg2no_fw;-><init>(Lcom/android/systemui/globalactions/features/CoverSupportStrategy;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->registerCoverStateListener(Lcom/samsung/android/globalactions/util/CoverStateListener;)V

    .line 75
    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mKeyGuardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->setRegisterState(Z)V

    return-void
.end method

.method public onReboot()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v0, "CoverSupportStrategy"

    const-string v1, "onReboot"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShutdown()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v0, "CoverSupportStrategy"

    const-string v1, "onShutdown"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
