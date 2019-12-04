.class public final Lcom/android/systemui/DependencyProvider_ProvideFaceWidgetControllerFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideFaceWidgetControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/facewidget/FaceWidgetController;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DependencyProvider;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/DependencyProvider_ProvideFaceWidgetControllerFactory;->module:Lcom/android/systemui/DependencyProvider;

    return-void
.end method

.method public static create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideFaceWidgetControllerFactory;
    .locals 1

    .line 27
    new-instance v0, Lcom/android/systemui/DependencyProvider_ProvideFaceWidgetControllerFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/DependencyProvider_ProvideFaceWidgetControllerFactory;-><init>(Lcom/android/systemui/DependencyProvider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/facewidget/FaceWidgetController;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/android/systemui/DependencyProvider_ProvideFaceWidgetControllerFactory;->proxyProvideFaceWidgetController(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideFaceWidgetController(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/facewidget/FaceWidgetController;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider;->provideFaceWidgetController()Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 31
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/facewidget/FaceWidgetController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/facewidget/FaceWidgetController;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/DependencyProvider_ProvideFaceWidgetControllerFactory;->module:Lcom/android/systemui/DependencyProvider;

    invoke-static {p0}, Lcom/android/systemui/DependencyProvider_ProvideFaceWidgetControllerFactory;->provideInstance(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider_ProvideFaceWidgetControllerFactory;->get()Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p0

    return-object p0
.end method
