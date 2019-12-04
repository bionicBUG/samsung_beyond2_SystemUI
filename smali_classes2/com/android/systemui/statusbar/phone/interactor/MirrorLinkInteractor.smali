.class public Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor;
.super Ljava/lang/Object;
.source "MirrorLinkInteractor.java"

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
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor;->mContext:Landroid/content/Context;

    .line 20
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "com.samsung.android.mirrorlink.ML_STATE"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor$1;-><init>(Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method
