.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardMessageArea$QXf05aBr_vq_fz0c6kIwn4oPdS8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardMessageArea;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardMessageArea$QXf05aBr_vq_fz0c6kIwn4oPdS8;->f$0:Lcom/android/keyguard/KeyguardMessageArea;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardMessageArea$QXf05aBr_vq_fz0c6kIwn4oPdS8;->f$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->lambda$displayFailedAnimation$0$KeyguardMessageArea()V

    return-void
.end method
