.class public Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;
.super Ljava/lang/Object;
.source "FaceWidgetOwnerInfoManager.java"


# instance fields
.field private mIsEnabled:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;->mIsEnabled:Z

    .line 16
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public getOwnerInfo()Ljava/lang/String;
    .locals 4

    .line 35
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenOwnerInfoEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v2, 0x0

    .line 49
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v2, :cond_2

    .line 54
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public isEnabled()Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;->mIsEnabled:Z

    return p0
.end method

.method public setDisabled()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;->mIsEnabled:Z

    return-void
.end method

.method public setEnabled()V
    .locals 1

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;->mIsEnabled:Z

    return-void
.end method
