.class public final synthetic Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$EmCFGPWCuNAwJOKzxr3xB2bKFQQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$EmCFGPWCuNAwJOKzxr3xB2bKFQQ;->f$0:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$EmCFGPWCuNAwJOKzxr3xB2bKFQQ;->f$0:Landroid/net/Uri;

    check-cast p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    invoke-static {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->lambda$onSettingsChanged$5(Landroid/net/Uri;Lcom/android/systemui/facewidget/pages/FaceWidgetPage;)V

    return-void
.end method
