.class public Lcom/android/systemui/qs/bar/BrightnessBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "BrightnessBar.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;


# static fields
.field public static final BNR_QS_BRIGHTNESS_ON_TOP:Ljava/lang/String; = "brightness_on_top"

.field public static final BNR_QS_TAG:Ljava/lang/String; = "BrightnessOnTop"

.field public static final BRIGHTNESS_ON_TOP:Ljava/lang/String; = "brightness_on_top"

.field private static final EMERGENCY_MODE_URI:Landroid/net/Uri;


# instance fields
.field private mAutoBrightnessToggle:Landroid/widget/CompoundButton;

.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessDetail:Lcom/android/systemui/settings/BrightnessDetail;

.field private mBrightnessDetailIcon:Landroid/widget/ImageView;

.field private mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

.field private mContext:Landroid/content/Context;

.field private mIsBrightnessOnTop:Z

.field mOldOrientation:I

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "emergency_mode"

    .line 61
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/bar/BrightnessBar;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    const/4 v1, -0x1

    .line 59
    iput v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mOldOrientation:I

    .line 62
    new-instance v1, Lcom/android/systemui/qs/bar/-$$Lambda$BrightnessBar$RcQppEF6AAjUNDA5uzYJ74sodn8;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/-$$Lambda$BrightnessBar$RcQppEF6AAjUNDA5uzYJ74sodn8;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 69
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    .line 70
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "brightness_on_top"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    sget-object v3, Lcom/android/systemui/qs/bar/BrightnessBar;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 74
    new-instance p1, Lcom/android/systemui/qs/bar/BrightnessBar$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$1;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    .line 91
    const-class p0, Lcom/android/systemui/qs/QSBackupRestoreManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSBackupRestoreManager;

    const-string v0, "BrightnessOnTop"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/QSBackupRestoreManager;->addCallback(Ljava/lang/String;Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/bar/BrightnessBar;)Lcom/android/systemui/settings/BrightnessDetail;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetail:Lcom/android/systemui/settings/BrightnessDetail;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/bar/BrightnessBar;)Lcom/android/systemui/settings/BrightnessController;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/bar/BrightnessBar;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initBrightnessDetail(Lcom/android/systemui/qs/QSPanel;)V
    .locals 2

    .line 178
    new-instance v0, Lcom/android/systemui/settings/BrightnessDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/settings/BrightnessDetail;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanel;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetail:Lcom/android/systemui/settings/BrightnessDetail;

    .line 180
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->brightness_detail:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    .line 182
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/qs/bar/BrightnessBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$2;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetail:Lcom/android/systemui/settings/BrightnessDetail;

    new-instance v0, Lcom/android/systemui/qs/bar/BrightnessBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$3;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/BrightnessDetail;->setBrightnessDetailCallback(Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;)V

    .line 211
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    sget v0, Lcom/android/systemui/R$id;->toggle:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mAutoBrightnessToggle:Landroid/widget/CompoundButton;

    .line 212
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mAutoBrightnessToggle:Landroid/widget/CompoundButton;

    if-eqz p1, :cond_0

    .line 213
    new-instance v0, Lcom/android/systemui/qs/bar/BrightnessBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$4;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateBrightnessDetail()V

    return-void
.end method

.method private setBrightnessController(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    .line 260
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    .line 261
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz p0, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    :cond_1
    return-void
.end method

.method private setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 270
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 271
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p1, :cond_1

    .line 272
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 274
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateBrightnessMirror()V

    return-void
.end method

.method private updateBrightnessDetail()V
    .locals 4

    .line 293
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    .line 294
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BrightnessDetail disabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p0, :cond_1

    .line 298
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateBrightnessDetail(Z)V

    :cond_1
    return-void
.end method

.method private updateBrightnessMirror()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->brightness_slider:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSliderView;

    .line 280
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$id;->brightness_slider:I

    .line 281
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSliderView;

    .line 282
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setMirror(Lcom/android/systemui/settings/ToggleSliderView;)V

    .line 283
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/ToggleSliderView;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->destroy()V

    .line 100
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 109
    :cond_1
    const-class p0, Lcom/android/systemui/qs/QSBackupRestoreManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSBackupRestoreManager;

    const-string v0, "BrightnessOnTop"

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSBackupRestoreManager;->removeCallback(Ljava/lang/String;)V

    return-void
.end method

.method public getBackupData(Z)Ljava/lang/String;
    .locals 2

    .line 334
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TAG::"

    .line 336
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "brightness_on_top"

    .line 337
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::"

    .line 338
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    if-eqz p1, :cond_1

    .line 341
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, v1

    .line 342
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "builder : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BrightnessOnTop"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBarHeight()I
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qspanel_brightness_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 151
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getToggleSlider()Lcom/android/systemui/settings/ToggleSlider;
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    return-object p0
.end method

.method public inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 156
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x0

    const-string v2, "brightness_on_top"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    .line 157
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->setType(I)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$layout;->quick_settings_brightness_dialog_sec:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->brightness_icon:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 162
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->brightness_slider:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSliderView;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    .line 164
    new-instance v0, Lcom/android/systemui/settings/BrightnessController;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/ToggleSlider;Landroid/widget/ImageView;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->setBrightnessController(Lcom/android/systemui/settings/BrightnessController;)V

    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->checkRestrictionAndSetEnabled()V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBrightnessMirrorController()Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 172
    :cond_2
    check-cast p1, Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->initBrightnessDetail(Lcom/android/systemui/qs/QSPanel;)V

    .line 174
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 143
    const-class p0, Lcom/android/systemui/KnoxStateMonitor;

    .line 144
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor;->isBrightnessControllerEnabled()Z

    move-result p0

    return p0
.end method

.method public isValidData()Z
    .locals 3

    .line 325
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    const/4 v0, 0x0

    const-string v1, "brightness_on_top"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 329
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brightnessOnTop : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " valid : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BrightnessOnTop"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public synthetic lambda$new$0$BrightnessBar(Landroid/net/Uri;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateBrightnessDetail()V

    return-void
.end method

.method public onBrightnessMirrorReinflated(Landroid/view/View;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateBrightnessMirror()V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 226
    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mOldOrientation:I

    if-eq v1, v2, :cond_1

    .line 230
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 231
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qspanel_brightness_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 233
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mOldOrientation:I

    .line 237
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateBrightnessMirror()V

    return-void
.end method

.method public onPanelColorChanged(Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V
    .locals 2

    .line 305
    iget v0, p1, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->HeaderSettingsTint:I

    .line 306
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onPanelColorChanged(Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V

    .line 312
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz p1, :cond_2

    .line 313
    invoke-virtual {p1}, Lcom/android/systemui/settings/ToggleSliderView;->updateSliderColors()V

    .line 315
    :cond_2
    const-class p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {p1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isQSColoringTurnedOn()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 316
    const-class p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    invoke-interface {p1, p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->updateCommonColorDraw(Landroid/view/ViewGroup;)V

    :cond_3
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTuningChanged() : key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "brightness_on_top"

    .line 244
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    .line 250
    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->changeBarType(I)V

    .line 251
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTuningChanged() BRIGHTNESS_ON_TOP = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->setExpanded(Z)V

    .line 118
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/android/systemui/settings/BrightnessController;->checkRestrictionAndSetEnabled()V

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateBrightnessMirror()V

    return-void
.end method

.method public setRestoreData(Ljava/lang/String;)V
    .locals 5

    const-string v0, "::"

    .line 353
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 354
    aget-object v1, p1, v0

    const-string v2, "brightness_on_top"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 355
    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 356
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBrightnessOnTop : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "   Integer.parseInt(sp[1]) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BrightnessOnTop"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    if-eq p1, v0, :cond_1

    .line 358
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    .line 359
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
