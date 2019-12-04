.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardMessageArea$siLoGvC7F_W814FsCPDq_h_67gw;
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

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardMessageArea$siLoGvC7F_W814FsCPDq_h_67gw;->f$0:Lcom/android/keyguard/KeyguardMessageArea;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardMessageArea$siLoGvC7F_W814FsCPDq_h_67gw;->f$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->lambda$displayFailedAnimation$1$KeyguardMessageArea()V

    return-void
.end method
