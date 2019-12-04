.class public Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;
.super Ljava/lang/Object;
.source "IndicatorGardenPresenter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$StatusBarStateListener;,
        Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;,
        Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;

.field private mBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

.field private mCallStateListener:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;

.field private mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field protected mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

.field private mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$StatusBarStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mCallStateListener:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;

    .line 306
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$StatusBarStateListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$StatusBarStateListener;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$StatusBarStateListener;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->DEBUG:Z

    return v0
.end method

.method private conveneIndicatorScaleGardener()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;
    .locals 1

    .line 59
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    return-object v0
.end method

.method private updateAlgorithm()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->makeAlgorithm(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "[IndicatorGarden]Presenter"

    .line 225
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDumpString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    if-eqz p0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;)V
    .locals 4

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    .line 65
    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;-><init>(Landroid/content/Context;Landroid/view/DisplayCutout;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    .line 66
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$IndicatorGardenPresenter$C_wbZQtdyP0T2yIH5fJIXkD7AFY;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$IndicatorGardenPresenter$C_wbZQtdyP0T2yIH5fJIXkD7AFY;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "display_cutout_hide_notch"

    .line 67
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 66
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 68
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 69
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateAlgorithm()V

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->conveneIndicatorScaleGardener()V

    .line 74
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mCallStateListener:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;->registerReceiver(Landroid/content/Context;)V

    .line 75
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$StatusBarStateListener;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$StatusBarStateListener;->init()V

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Initialized ! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDumpString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[IndicatorGarden]Presenter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initIndicatorGarden(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;Z)V

    return-void
.end method

.method public synthetic lambda$init$0$IndicatorGardenPresenter(Landroid/net/Uri;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateAlgorithm()V

    return-void
.end method

.method protected makeGardenModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    if-eqz p0, :cond_0

    .line 174
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->makeGardenModel(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;Lcom/android/systemui/statusbar/phone/IndicatorGarden;)Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onChangedCoverDefaultSidePadding(Lcom/android/systemui/statusbar/phone/IndicatorGarden;I)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->onChangedCoverDefaultSidePadding(I)V

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    if-eqz p0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->onGardenDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method

.method public onGardenApplyWindowInsets(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    if-eqz v0, :cond_1

    .line 108
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getGardenWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getGardenWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 107
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->setDpCutout(Landroid/view/DisplayCutout;)V

    .line 110
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method

.method public onGardenConfigurationChanged(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->onGardenConfigurationChanged()V

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method

.method public onGardenOnLayout(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTuningChanged(key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newValue:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[IndicatorGarden]Presenter"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateAlgorithm()V

    return-void
.end method

.method public shouldBeScaleLogicApplied()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->shouldBeScaleLogicApplied(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V
    .locals 1

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;Z)V

    return-void
.end method

.method protected updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 161
    new-instance p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->submitTask()V

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->makeGardenModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    move-result-object p0

    .line 164
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V

    :goto_0
    return-void
.end method
