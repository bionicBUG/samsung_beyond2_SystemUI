.class interface abstract Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$BubbleContainerCallback;
.super Ljava/lang/Object;
.source "BubbleContainerViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "BubbleContainerCallback"
.end annotation


# virtual methods
.method public abstract onItemAdded(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
.end method

.method public abstract onItemRemoved(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
.end method

.method public abstract onRotationChanged(IILandroid/graphics/Rect;)V
.end method

.method public abstract onViewDestroyed()V
.end method
