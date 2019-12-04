.class Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$StatusBarStateListener;
.super Ljava/lang/Object;
.source "IndicatorGardenPresenter.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarStateListener"
.end annotation


# instance fields
.field private mPrvShadeState:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$1;)V
    .locals 0

    .line 307
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$StatusBarStateListener;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 310
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onStatePostChange$0$IndicatorGardenPresenter$StatusBarStateListener()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateAllInputProperties()V

    .line 325
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePostChange(BG_HANDLER) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDumpString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[IndicatorGarden]Presenter"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onStatePostChange()V
    .locals 3

    .line 317
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isShadeState()Z

    move-result v0

    .line 320
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$StatusBarStateListener;->mPrvShadeState:Z

    if-eq v1, v0, :cond_2

    if-eqz v0, :cond_1

    .line 322
    sget-object v1, Lcom/android/systemui/Dependency;->BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$IndicatorGardenPresenter$StatusBarStateListener$al-haMbtbw4VIcvBFFznPnbAEvA;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$IndicatorGardenPresenter$StatusBarStateListener$al-haMbtbw4VIcvBFFznPnbAEvA;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$StatusBarStateListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$StatusBarStateListener;->mPrvShadeState:Z

    :cond_2
    return-void
.end method
