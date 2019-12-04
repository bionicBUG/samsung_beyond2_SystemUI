.class Lcom/android/systemui/shared/system/WindowCallbacksCompat$1;
.super Ljava/lang/Object;
.source "WindowCallbacksCompat.java"

# interfaces
.implements Landroid/view/WindowCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/WindowCallbacksCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/WindowCallbacksCompat;


# virtual methods
.method public onContentDrawn(IIII)Z
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat$1;->this$0:Lcom/android/systemui/shared/system/WindowCallbacksCompat;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->onContentDrawn(IIII)Z

    move-result p0

    return p0
.end method

.method public onFinishMovingTask()V
    .locals 0

    return-void
.end method

.method public onPostDraw(Landroid/graphics/RecordingCanvas;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat$1;->this$0:Lcom/android/systemui/shared/system/WindowCallbacksCompat;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->onPostDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onRequestDraw(Z)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat$1;->this$0:Lcom/android/systemui/shared/system/WindowCallbacksCompat;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->onRequestDraw(Z)V

    return-void
.end method

.method public onWindowDragResizeEnd()V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat$1;->this$0:Lcom/android/systemui/shared/system/WindowCallbacksCompat;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->onWindowDragResizeEnd()V

    return-void
.end method

.method public onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 6

    .line 38
    iget-object v0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat$1;->this$0:Lcom/android/systemui/shared/system/WindowCallbacksCompat;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat$1;->this$0:Lcom/android/systemui/shared/system/WindowCallbacksCompat;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method
