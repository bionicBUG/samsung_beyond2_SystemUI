.class public final Lcom/android/systemui/DependencyProvider_ProviderDisplayLifecycleFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProviderDisplayLifecycleFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/keyguard/DisplayLifecycle;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/DependencyProvider_ProviderDisplayLifecycleFactory;->module:Lcom/android/systemui/DependencyProvider;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/DependencyProvider_ProviderDisplayLifecycleFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProviderDisplayLifecycleFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/DependencyProvider_ProviderDisplayLifecycleFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/android/systemui/DependencyProvider_ProviderDisplayLifecycleFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/DependencyProvider_ProviderDisplayLifecycleFactory;-><init>(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/DisplayLifecycle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;"
        }
    .end annotation

    .line 29
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/DependencyProvider_ProviderDisplayLifecycleFactory;->proxyProviderDisplayLifecycle(Lcom/android/systemui/DependencyProvider;Landroid/content/Context;)Lcom/android/systemui/keyguard/DisplayLifecycle;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProviderDisplayLifecycle(Lcom/android/systemui/DependencyProvider;Landroid/content/Context;)Lcom/android/systemui/keyguard/DisplayLifecycle;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/systemui/DependencyProvider;->providerDisplayLifecycle(Landroid/content/Context;)Lcom/android/systemui/keyguard/DisplayLifecycle;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 39
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/keyguard/DisplayLifecycle;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/systemui/DependencyProvider_ProviderDisplayLifecycleFactory;->module:Lcom/android/systemui/DependencyProvider;

    iget-object p0, p0, Lcom/android/systemui/DependencyProvider_ProviderDisplayLifecycleFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/DependencyProvider_ProviderDisplayLifecycleFactory;->provideInstance(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/DisplayLifecycle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider_ProviderDisplayLifecycleFactory;->get()Lcom/android/systemui/keyguard/DisplayLifecycle;

    move-result-object p0

    return-object p0
.end method
