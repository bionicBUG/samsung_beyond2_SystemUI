.class public final Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideAutoHideControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/AutoHideController;",
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

.field private final mainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/DependencyProvider;


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
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;->module:Lcom/android/systemui/DependencyProvider;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;-><init>(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/AutoHideController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;"
        }
    .end annotation

    .line 37
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;->proxyProvideAutoHideController(Lcom/android/systemui/DependencyProvider;Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/phone/AutoHideController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideAutoHideController(Lcom/android/systemui/DependencyProvider;Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/phone/AutoHideController;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/DependencyProvider;->provideAutoHideController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/phone/AutoHideController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 50
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/AutoHideController;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;->module:Lcom/android/systemui/DependencyProvider;

    iget-object v1, p0, Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;->provideInstance(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/AutoHideController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;->get()Lcom/android/systemui/statusbar/phone/AutoHideController;

    move-result-object p0

    return-object p0
.end method
