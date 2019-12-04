.class public final synthetic Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$aF4eRev0S-li0VDRsH8PwRzCfI8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$aF4eRev0S-li0VDRsH8PwRzCfI8;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$aF4eRev0S-li0VDRsH8PwRzCfI8;->f$0:I

    check-cast p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    invoke-static {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->lambda$setOrientation$7(ILcom/android/systemui/facewidget/pages/FaceWidgetPage;)V

    return-void
.end method
