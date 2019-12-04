.class Lcom/android/systemui/qs/QSDualTileLabel$1;
.super Ljava/lang/Object;
.source "QSDualTileLabel.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDualTileLabel;


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p8, p6

    sub-int/2addr p4, p2

    if-eq p8, p4, :cond_0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/qs/QSDualTileLabel$1;->this$0:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-static {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->access$000(Lcom/android/systemui/qs/QSDualTileLabel;)V

    :cond_0
    return-void
.end method
