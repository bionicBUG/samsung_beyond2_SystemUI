.class Lcom/android/systemui/statusbar/phone/RotationButtonController$2;
.super Ljava/lang/Object;
.source "RotationButtonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/RotationButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController$2;->this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 215
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController$2;->this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    return-void
.end method
