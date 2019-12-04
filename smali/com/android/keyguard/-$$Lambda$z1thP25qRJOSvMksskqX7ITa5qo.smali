.class public final synthetic Lcom/android/keyguard/-$$Lambda$z1thP25qRJOSvMksskqX7ITa5qo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardSecPINView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecPINView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$z1thP25qRJOSvMksskqX7ITa5qo;->f$0:Lcom/android/keyguard/KeyguardSecPINView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$z1thP25qRJOSvMksskqX7ITa5qo;->f$0:Lcom/android/keyguard/KeyguardSecPINView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->verifyPasswordAndUnlock()V

    return-void
.end method
