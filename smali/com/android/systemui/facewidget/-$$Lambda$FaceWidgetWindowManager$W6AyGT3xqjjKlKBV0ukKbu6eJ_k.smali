.class public final synthetic Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetWindowManager$W6AyGT3xqjjKlKBV0ukKbu6eJ_k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetWindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetWindowManager$W6AyGT3xqjjKlKBV0ukKbu6eJ_k;->f$0:Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    iput-object p2, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetWindowManager$W6AyGT3xqjjKlKBV0ukKbu6eJ_k;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetWindowManager$W6AyGT3xqjjKlKBV0ukKbu6eJ_k;->f$2:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetWindowManager$W6AyGT3xqjjKlKBV0ukKbu6eJ_k;->f$0:Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    iget-object v1, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetWindowManager$W6AyGT3xqjjKlKBV0ukKbu6eJ_k;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetWindowManager$W6AyGT3xqjjKlKBV0ukKbu6eJ_k;->f$2:Landroid/view/WindowManager$LayoutParams;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->lambda$showFullScreen$0$FaceWidgetWindowManager(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Ljava/lang/Void;)V

    return-void
.end method
