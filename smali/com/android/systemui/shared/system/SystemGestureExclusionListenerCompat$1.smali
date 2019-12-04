.class Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat$1;
.super Landroid/view/ISystemGestureExclusionListener$Stub;
.source "SystemGestureExclusionListenerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;


# virtual methods
.method public onSystemGestureExclusionChanged(ILandroid/graphics/Region;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat$1;->this$0:Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->access$000(Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat$1;->this$0:Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;

    invoke-virtual {p0, p2}, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->onExclusionChanged(Landroid/graphics/Region;)V

    :cond_0
    return-void
.end method
