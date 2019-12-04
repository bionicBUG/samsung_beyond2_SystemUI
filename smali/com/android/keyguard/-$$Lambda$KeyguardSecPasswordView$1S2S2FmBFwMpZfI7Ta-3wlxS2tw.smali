.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$1S2S2FmBFwMpZfI7Ta-3wlxS2tw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardSecPasswordView;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecPasswordView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$1S2S2FmBFwMpZfI7Ta-3wlxS2tw;->f$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iput p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$1S2S2FmBFwMpZfI7Ta-3wlxS2tw;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$1S2S2FmBFwMpZfI7Ta-3wlxS2tw;->f$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$1S2S2FmBFwMpZfI7Ta-3wlxS2tw;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSecPasswordView;->lambda$onResume$1$KeyguardSecPasswordView(I)V

    return-void
.end method
