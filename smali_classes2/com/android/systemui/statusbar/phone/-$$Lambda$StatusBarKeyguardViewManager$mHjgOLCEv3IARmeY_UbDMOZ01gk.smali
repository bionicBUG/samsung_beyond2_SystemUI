.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$mHjgOLCEv3IARmeY_UbDMOZ01gk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$mHjgOLCEv3IARmeY_UbDMOZ01gk;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$mHjgOLCEv3IARmeY_UbDMOZ01gk;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$mHjgOLCEv3IARmeY_UbDMOZ01gk;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$mHjgOLCEv3IARmeY_UbDMOZ01gk;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->lambda$hideBouncer$0$StatusBarKeyguardViewManager(Z)V

    return-void
.end method
