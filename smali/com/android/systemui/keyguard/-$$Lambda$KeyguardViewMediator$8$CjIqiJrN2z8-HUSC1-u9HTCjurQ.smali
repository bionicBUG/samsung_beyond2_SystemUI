.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$8$CjIqiJrN2z8-HUSC1-u9HTCjurQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

.field private final synthetic f$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$8;Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$8$CjIqiJrN2z8-HUSC1-u9HTCjurQ;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

    iput-object p2, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$8$CjIqiJrN2z8-HUSC1-u9HTCjurQ;->f$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$8$CjIqiJrN2z8-HUSC1-u9HTCjurQ;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

    iget-object p0, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$8$CjIqiJrN2z8-HUSC1-u9HTCjurQ;->f$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->lambda$handleMessage$0$KeyguardViewMediator$8(Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;)V

    return-void
.end method
