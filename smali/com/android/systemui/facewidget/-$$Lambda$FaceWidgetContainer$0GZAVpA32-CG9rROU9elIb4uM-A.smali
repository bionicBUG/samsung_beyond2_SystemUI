.class public final synthetic Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$0GZAVpA32-CG9rROU9elIb4uM-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$0GZAVpA32-CG9rROU9elIb4uM-A;->f$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$0GZAVpA32-CG9rROU9elIb4uM-A;->f$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    check-cast p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->lambda$updateAdditionalInfoView$4$FaceWidgetContainer(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)Z

    move-result p0

    return p0
.end method
