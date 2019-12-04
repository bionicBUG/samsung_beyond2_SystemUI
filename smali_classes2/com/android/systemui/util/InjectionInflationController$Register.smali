.class public interface abstract Lcom/android/systemui/util/InjectionInflationController$Register;
.super Ljava/lang/Object;
.source "InjectionInflationController.java"


# annotations
.annotation runtime Ldagger/Subcomponent;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/InjectionInflationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Register"
.end annotation


# virtual methods
.method public abstract registerInjectorForSecurityView(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method

.method public abstract registerInjectorForViewMediator(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method
