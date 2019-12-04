.class public Lcom/android/systemui/statusbar/phone/interactor/OpenThemeInteractor;
.super Ljava/lang/Object;
.source "OpenThemeInteractor.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/interactor/Interactor;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/OpenThemeInteractor;->mContext:Landroid/content/Context;

    .line 20
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/OpenThemeInteractor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/OpenThemeInteractor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 26
    new-instance v0, Lcom/android/systemui/statusbar/phone/interactor/OpenThemeInteractor$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/interactor/OpenThemeInteractor$1;-><init>(Lcom/android/systemui/statusbar/phone/interactor/OpenThemeInteractor;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/OpenThemeInteractor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 32
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/OpenThemeInteractor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/OpenThemeInteractor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/OpenThemeInteractor;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
