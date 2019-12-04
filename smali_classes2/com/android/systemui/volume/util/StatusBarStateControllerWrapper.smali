.class public Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;
.super Ljava/lang/Object;
.source "StatusBarStateControllerWrapper.java"


# instance fields
.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-void
.end method


# virtual methods
.method public isKeyguardState()Z
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isKeyguardState()Z

    move-result p0

    return p0
.end method

.method public isShadeLockedState()Z
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isShadeLockedState()Z

    move-result p0

    return p0
.end method
