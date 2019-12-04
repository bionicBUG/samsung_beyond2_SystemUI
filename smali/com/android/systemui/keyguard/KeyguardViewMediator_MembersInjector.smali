.class public final Lcom/android/systemui/keyguard/KeyguardViewMediator_MembersInjector;
.super Ljava/lang/Object;
.source "KeyguardViewMediator_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
        ">;"
    }
.end annotation


# direct methods
.method public static injectMInjectionInflationController(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/util/InjectionInflationController;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    return-void
.end method
