.class public final Lcom/android/systemui/DependencyProvider_ProviderSystemUIIndexMediatorFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProviderSystemUIIndexMediatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/indexsearch/SystemUIIndexMediator;",
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

.field private final qshProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/DependencyProvider_ProviderSystemUIIndexMediatorFactory;->module:Lcom/android/systemui/DependencyProvider;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/DependencyProvider_ProviderSystemUIIndexMediatorFactory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/android/systemui/DependencyProvider_ProviderSystemUIIndexMediatorFactory;->qshProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProviderSystemUIIndexMediatorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;)",
            "Lcom/android/systemui/DependencyProvider_ProviderSystemUIIndexMediatorFactory;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/android/systemui/DependencyProvider_ProviderSystemUIIndexMediatorFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/DependencyProvider_ProviderSystemUIIndexMediatorFactory;-><init>(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/indexsearch/SystemUIIndexMediator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;)",
            "Lcom/android/systemui/indexsearch/SystemUIIndexMediator;"
        }
    .end annotation

    .line 37
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/QSTileHost;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/DependencyProvider_ProviderSystemUIIndexMediatorFactory;->proxyProviderSystemUIIndexMediator(Lcom/android/systemui/DependencyProvider;Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProviderSystemUIIndexMediator(Lcom/android/systemui/DependencyProvider;Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)Lcom/android/systemui/indexsearch/SystemUIIndexMediator;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/DependencyProvider;->providerSystemUIIndexMediator(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 50
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/indexsearch/SystemUIIndexMediator;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/android/systemui/DependencyProvider_ProviderSystemUIIndexMediatorFactory;->module:Lcom/android/systemui/DependencyProvider;

    iget-object v1, p0, Lcom/android/systemui/DependencyProvider_ProviderSystemUIIndexMediatorFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/DependencyProvider_ProviderSystemUIIndexMediatorFactory;->qshProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/DependencyProvider_ProviderSystemUIIndexMediatorFactory;->provideInstance(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider_ProviderSystemUIIndexMediatorFactory;->get()Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    move-result-object p0

    return-object p0
.end method
