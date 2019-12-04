.class public final Lcom/android/systemui/DependencyProvider_ProvideDebugLooperFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideDebugLooperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/os/Looper;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DependencyProvider;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/DependencyProvider_ProvideDebugLooperFactory;->module:Lcom/android/systemui/DependencyProvider;

    return-void
.end method

.method public static create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideDebugLooperFactory;
    .locals 1

    .line 25
    new-instance v0, Lcom/android/systemui/DependencyProvider_ProvideDebugLooperFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/DependencyProvider_ProvideDebugLooperFactory;-><init>(Lcom/android/systemui/DependencyProvider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/DependencyProvider;)Landroid/os/Looper;
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/android/systemui/DependencyProvider_ProvideDebugLooperFactory;->proxyProvideDebugLooper(Lcom/android/systemui/DependencyProvider;)Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideDebugLooper(Lcom/android/systemui/DependencyProvider;)Landroid/os/Looper;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider;->provideDebugLooper()Landroid/os/Looper;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/os/Looper;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/os/Looper;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/DependencyProvider_ProvideDebugLooperFactory;->module:Lcom/android/systemui/DependencyProvider;

    invoke-static {p0}, Lcom/android/systemui/DependencyProvider_ProvideDebugLooperFactory;->provideInstance(Lcom/android/systemui/DependencyProvider;)Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider_ProvideDebugLooperFactory;->get()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method
