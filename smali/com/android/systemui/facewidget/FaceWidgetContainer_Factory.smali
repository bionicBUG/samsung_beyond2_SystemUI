.class public final Lcom/android/systemui/facewidget/FaceWidgetContainer_Factory;
.super Ljava/lang/Object;
.source "FaceWidgetContainer_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/facewidget/FaceWidgetContainer;",
        ">;"
    }
.end annotation


# instance fields
.field private final attrsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/util/AttributeSet;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/facewidget/FaceWidgetContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/util/AttributeSet;",
            ">;)",
            "Lcom/android/systemui/facewidget/FaceWidgetContainer;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/AttributeSet;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/facewidget/FaceWidgetContainer;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer_Factory;->attrsProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/facewidget/FaceWidgetContainer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer_Factory;->get()Lcom/android/systemui/facewidget/FaceWidgetContainer;

    move-result-object p0

    return-object p0
.end method
