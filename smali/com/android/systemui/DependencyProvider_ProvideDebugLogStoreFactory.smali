.class public final Lcom/android/systemui/DependencyProvider_ProvideDebugLogStoreFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideDebugLogStoreFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/DebugLogStore;",
        ">;"
    }
.end annotation


# instance fields
.field private final bgLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
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
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/DependencyProvider_ProvideDebugLogStoreFactory;->module:Lcom/android/systemui/DependencyProvider;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/DependencyProvider_ProvideDebugLogStoreFactory;->bgLooperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideDebugLogStoreFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Lcom/android/systemui/DependencyProvider_ProvideDebugLogStoreFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/android/systemui/DependencyProvider_ProvideDebugLogStoreFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/DependencyProvider_ProvideDebugLogStoreFactory;-><init>(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/util/DebugLogStore;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Lcom/android/systemui/util/DebugLogStore;"
        }
    .end annotation

    .line 29
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    invoke-static {p0, p1}, Lcom/android/systemui/DependencyProvider_ProvideDebugLogStoreFactory;->proxyProvideDebugLogStore(Lcom/android/systemui/DependencyProvider;Landroid/os/Looper;)Lcom/android/systemui/util/DebugLogStore;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideDebugLogStore(Lcom/android/systemui/DependencyProvider;Landroid/os/Looper;)Lcom/android/systemui/util/DebugLogStore;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/systemui/DependencyProvider;->provideDebugLogStore(Landroid/os/Looper;)Lcom/android/systemui/util/DebugLogStore;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 39
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/util/DebugLogStore;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/DebugLogStore;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/systemui/DependencyProvider_ProvideDebugLogStoreFactory;->module:Lcom/android/systemui/DependencyProvider;

    iget-object p0, p0, Lcom/android/systemui/DependencyProvider_ProvideDebugLogStoreFactory;->bgLooperProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/DependencyProvider_ProvideDebugLogStoreFactory;->provideInstance(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/util/DebugLogStore;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider_ProvideDebugLogStoreFactory;->get()Lcom/android/systemui/util/DebugLogStore;

    move-result-object p0

    return-object p0
.end method
