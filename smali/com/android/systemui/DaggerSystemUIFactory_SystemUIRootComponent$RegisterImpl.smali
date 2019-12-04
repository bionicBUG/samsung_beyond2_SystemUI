.class final Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$RegisterImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIFactory_SystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/util/InjectionInflationController$Register;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RegisterImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)V
    .locals 0

    .line 2166
    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$RegisterImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V
    .locals 0

    .line 2165
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$RegisterImpl;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)V

    return-void
.end method

.method private injectKeyguardSecurityContainer(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer;
    .locals 0

    .line 2188
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$RegisterImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2190
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$13700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 2191
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/InjectionInflationController;

    .line 2188
    invoke-static {p1, p0}, Lcom/android/keyguard/KeyguardSecurityContainer_MembersInjector;->injectMInjectionInflationController(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/systemui/util/InjectionInflationController;)V

    return-object p1
.end method

.method private injectKeyguardViewMediator(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 0

    .line 2179
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$RegisterImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2181
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$13700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 2182
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/InjectionInflationController;

    .line 2179
    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator_MembersInjector;->injectMInjectionInflationController(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/util/InjectionInflationController;)V

    return-object p1
.end method


# virtual methods
.method public registerInjectorForSecurityView(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0

    .line 2175
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$RegisterImpl;->injectKeyguardSecurityContainer(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer;

    return-void
.end method

.method public registerInjectorForViewMediator(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 2170
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$RegisterImpl;->injectKeyguardViewMediator(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-void
.end method
