.class Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor$1;
.super Lcom/android/systemui/KnoxStateMonitorCallback;
.source "KnoxStateMonitorInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;->addCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor$1;->this$0:Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetHardKeyIntentState(Z)V
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor$1;->this$0:Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;->mHardKeyIntentCallback:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateNavigationBarHidden()V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor$1;->this$0:Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;->mNavbarHiddenCallBack:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
