.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$QCPXixkjNcxBLzSNw7wcGHH0pk8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$QCPXixkjNcxBLzSNw7wcGHH0pk8;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$QCPXixkjNcxBLzSNw7wcGHH0pk8;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    check-cast p1, Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->lambda$setWakeAndUnlocking$5$StatusBarKeyguardViewManager(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)V

    return-void
.end method
