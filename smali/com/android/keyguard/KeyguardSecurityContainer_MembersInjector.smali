.class public final Lcom/android/keyguard/KeyguardSecurityContainer_MembersInjector;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/android/keyguard/KeyguardSecurityContainer;",
        ">;"
    }
.end annotation


# direct methods
.method public static injectMInjectionInflationController(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/systemui/util/InjectionInflationController;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    return-void
.end method
