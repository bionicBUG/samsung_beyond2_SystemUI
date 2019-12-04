.class Lcom/android/systemui/shared/system/RotationWatcher$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "RotationWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/RotationWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/RotationWatcher;


# virtual methods
.method public onRotationChanged(I)V
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/shared/system/RotationWatcher$1;->this$0:Lcom/android/systemui/shared/system/RotationWatcher;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RotationWatcher;->onRotationChanged(I)V

    return-void
.end method
